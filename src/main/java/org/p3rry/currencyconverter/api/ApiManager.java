package org.p3rry.currencyconverter.api;

import lombok.SneakyThrows;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

@Component
public class ApiManager
{
    @SneakyThrows(IOException.class)
    public String readApiResponse(HttpURLConnection apiConnection)
    {
            StringBuilder stringBuilder = new StringBuilder();
            Scanner scanner = new Scanner(apiConnection.getInputStream());

            while(scanner.hasNext())
            {
                stringBuilder.append(scanner.nextLine());
            }

            scanner.close();

            return stringBuilder.toString();
    }

    @SneakyThrows(IOException.class)
    public HttpURLConnection fetchApiResponse(String urlString)
    {
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            connection.setRequestMethod("GET");

            return connection;
    }

    @SneakyThrows(IOException.class)
    public boolean checkIfResponseCodeIsValid(HttpURLConnection apiConnection)
    {
            return apiConnection.getResponseCode() == 200;
    }
}
