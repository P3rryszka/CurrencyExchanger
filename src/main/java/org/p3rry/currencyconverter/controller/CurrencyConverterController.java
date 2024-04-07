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
    public ModelAndView getResultPage(@RequestParam("baseCurrency") String baseCurrency,
                                    @RequestParam("quoteCurrency") String quoteCurrency,
                                    @RequestParam("amount") String amount,
                                    ModelAndView mv)
    {

        mv.addObject("result", currencyConverterService.processResult(baseCurrency, quoteCurrency, amount));
        mv.setViewName("resultpage");

        return mv;
    }
}
