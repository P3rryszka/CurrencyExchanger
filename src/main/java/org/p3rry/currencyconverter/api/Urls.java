package org.p3rry.currencyconverter.api;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Getter
public class Urls
{
    private final String apiUrl = "http://api.exchangerate.host/live?YOUR_UNIQUE_ACCESS-KEY";
}
