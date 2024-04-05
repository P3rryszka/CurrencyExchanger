package org.p3rry.currencyconverter.controller;

import org.p3rry.currencyconverter.service.CurrencyConverterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CurrencyConverterController
{
    private CurrencyConverterService currencyConverterService;
    @Autowired
    CurrencyConverterController(CurrencyConverterService currencyConverterService)
    {
        this.currencyConverterService = currencyConverterService;
    }
    @GetMapping("/homepage")
    public String getHomepage()
    {
        return "homepage";
    }

    @GetMapping("/convert")
    public ModelAndView getModel(@RequestParam("baseCurrency") String baseCurrency,
                                 @RequestParam("quoteCurrency") String quoteCurrency,
                                 @RequestParam("amount") double amount,
                                 ModelAndView mv)
    {
        double resultValue;

        if(baseCurrency.equals("USDUSD"))
        {
            resultValue = ((double) currencyConverterService.getQuotes().get(quoteCurrency)) * amount;
        }
        else if(quoteCurrency.equals("USDUSD"))
        {
            resultValue = (1 / ((double) currencyConverterService.getQuotes().get(baseCurrency))) * amount;
        }
        else
        {
            double baseCurrencyValue = (double) currencyConverterService.getQuotes().get(baseCurrency);
            double quoteCurrencyValue = (double) currencyConverterService.getQuotes().get(quoteCurrency);

            resultValue = (quoteCurrencyValue / baseCurrencyValue) * amount;
        }

        String formattedResultValue = String.format("%.2f", resultValue);

        mv.addObject("result", formattedResultValue);
        mv.setViewName("resultpage");

        return mv;
    }
}
