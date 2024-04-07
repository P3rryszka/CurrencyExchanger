package org.p3rry.currencyconverter.api;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class Urls
{
    private final String apiUrl = "http://api.exchangerate.host/live?access_key=7eb030001dbb35c092813d0152411238";
}