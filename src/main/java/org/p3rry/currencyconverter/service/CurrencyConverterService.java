package org.p3rry.currencyconverter.service;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.p3rry.currencyconverter.api.ApiManager;
import org.p3rry.currencyconverter.api.Urls;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.net.HttpURLConnection;
import java.util.Optional;

@Service
public class CurrencyConverterService
{
    private ApiManager apiManager;
    private Urls urls;

    @Autowired
    CurrencyConverterService(ApiManager apiManager, Urls urls)
    {
        this.apiManager = apiManager;
        this.urls = urls;
    }

    public String processResult(String baseCurrency, String quoteCurrency, String amount)
    {
        JSONObject quotesObject = Optional.ofNullable(getQuotesObject())
                .orElseThrow(() -> 
                        new NullPointerException("Quotes object is null!"));
        
        String sourceValue = Optional.of(getSourceValue())
                .orElseThrow(() ->
                        new NullPointerException("Source value is null!"));

        double resultValue;
        double parsedIntoDoubleAmount = isAmountEmpty(amount);

        if(baseCurrency.equals(sourceValue) && quoteCurrency.equals(sourceValue))
        {
            resultValue = parsedIntoDoubleAmount;
        }
        else if(baseCurrency.equals(sourceValue))
        {
            resultValue = ((double) quotesObject.get(quoteCurrency)) * parsedIntoDoubleAmount;
        }
        else if(quoteCurrency.equals(sourceValue))
        {
            resultValue = (1 / ((double) quotesObject.get(baseCurrency))) * parsedIntoDoubleAmount;
        }
        else
        {
            double baseCurrencyValue = (double) quotesObject.get(baseCurrency);
            double quoteCurrencyValue = (double) quotesObject.get(quoteCurrency);

            resultValue = (quoteCurrencyValue / baseCurrencyValue) * parsedIntoDoubleAmount;
        }

        return String.format("%.2f", resultValue);
    }

    private double isAmountEmpty(String amount)
    {
        return amount.isEmpty() ? 1 : Double.parseDouble(amount);
    }

    private JSONObject getQuotesObject()
    {
        return (JSONObject) parseResponseIntoJsonObject().get("quotes");
    }

    private String getSourceValue()
    {
        StringBuilder concatSourceWithSource = new StringBuilder();

        return concatSourceWithSource
                .append(parseResponseIntoJsonObject().get("source"))
                .append(parseResponseIntoJsonObject().get("source"))
                .toString();
    }

    private JSONObject parseResponseIntoJsonObject()
    {
        try
        {
            HttpURLConnection apiConnection = apiManager.fetchApiResponse(urls.getApiUrl());

            if (apiManager.checkIfResponseCodeIsValid(apiConnection))
            {
                String jsonResponse = apiManager.readApiResponse(apiConnection);

                return (JSONObject) new JSONParser().parse(jsonResponse);
            }
        }
        catch (ParseException e)
        {
            System.err.println("Issue with json response parsing: " + e.getMessage());
        }
        return null;
    }
}