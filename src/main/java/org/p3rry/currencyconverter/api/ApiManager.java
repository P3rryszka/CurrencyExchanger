package org.p3rry.currencyconverter.api;

import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Scanner;

@Component
public class ApiManager
{
    public String readApiResponse(HttpURLConnection apiConnection)
    {
        StringBuilder stringBuilder = new StringBuilder();
        try
        {
            Scanner scanner = new Scanner(apiConnection.getInputStream());

            while(scanner.hasNext())
            {
                stringBuilder.append(scanner.nextLine());
            }

            scanner.close();

            return stringBuilder.toString();
        }
        catch (IOException e)
        {
            System.err.println("Issue during input stream: " + e.getMessage());
        }
        return null;
    }


    public HttpURLConnection fetchApiResponse(String urlString)
    {
        try
        {
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            connection.setRequestMethod("GET");

            return connection;
        }
        catch(MalformedURLException e)
        {
            System.err.println("Issue with URL: " + e.getMessage());
        }
        catch(ProtocolException e)
        {
            System.err.println("Issue with connection: " + e.getMessage());
        }
        catch(IOException e)
        {
            System.err.println("Issue with type of request method: " + e.getMessage());
        }
        return null;
    }

    public boolean checkIfResponseCodeIsValid(HttpURLConnection apiConnection)
    {
        try
        {
            return apiConnection.getResponseCode() == 200;
        }
        catch (IOException e)
        {
            System.err.println("Issue with response code: " + e.getMessage());
        }
        return false;
    }
}
