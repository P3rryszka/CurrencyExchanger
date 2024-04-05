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
    public ModelAndView getModel(@RequestParam("firstCurrency") String firstCurrency,
                                 @RequestParam("secondCurrency") String secondCurrency,
                                 @RequestParam("amount") double amount,
                                 ModelAndView mv)
    {
        double firstCurrencyValue = (double) currencyConverterService.getQuotes().get(firstCurrency);
        double secondCurrencyValue = (double) currencyConverterService.getQuotes().get(secondCurrency);

        double resultValue = (secondCurrencyValue/firstCurrencyValue) * amount;

        String formattedResultValue = String.format("%.2f", resultValue);

        mv.addObject("result", formattedResultValue);
        mv.setViewName("resultpage");

        return mv;
    }
}
