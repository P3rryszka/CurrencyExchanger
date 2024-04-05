package org.p3rry.currencyconverter.service;

import lombok.SneakyThrows;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.p3rry.currencyconverter.api.ApiManager;
import org.p3rry.currencyconverter.api.Urls;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.net.HttpURLConnection;

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

    @SneakyThrows(ParseException.class)
    public JSONObject getQuotes()
    {
        HttpURLConnection apiConnection = apiManager.fetchApiResponse(urls.getApiUrl());

        if(apiManager.checkIfResponseCodeIsValid(apiConnection))
        {
            String jsonResponse = apiManager.readApiResponse(apiConnection);

            JSONParser jsonParser = new JSONParser();
            JSONObject jsonObject = (JSONObject) jsonParser.parse(jsonResponse);

            return (JSONObject) jsonObject.get("quotes");
        }
        else
        {
            return null;
        }
    }
}
