<%@page language="java" %>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../style.css">
    </head>

    <body>
        <h2>Currency conversion</h2><br>

            <form action="convert">
                <label for="first-currency">First currency: </label><br>
                    <select id="first-currency" name="firstCurrency">
                        <option value="USDAED">AED</option>
                        <option value="USDAFN">AFN</option>
                        <option value="USDALL">ALL</option>
                        <option value="USDAMD">AMD</option>
                        <option value="USDANG">ANG</option>
                        <option value="USDAOA">AOA</option>
                        <option value="USDARS">ARS</option>
                        <option value="USDAUD">AUD</option>
                        <option value="USDAWG">AWG</option>
                        <option value="USDAZN">AZN</option>
                        <option value="USDBAM">BAM</option>
                        <option value="USDBBD">BBD</option>
                        <option value="USDBDT">BDT</option>
                        <option value="USDBGN">BGN</option>
                        <option value="USDBHD">BHD</option>
                        <option value="USDBIF">BIF</option>
                        <option value="USDBMD">BMD</option>
                        <option value="USDBND">BND</option>
                        <option value="USDBOB">BOB</option>
                        <option value="USDBRL">BRL</option>
                        <option value="USDBSD">BSD</option>
                    </select><br>

                <label for="second-currency">Second currency: <label><br>
                    <select id="second-currency" name="secondCurrency">
                        <option value="USDAED">AED</option>
                        <option value="USDAFN">AFN</option>
                        <option value="USDALL">ALL</option>
                        <option value="USDAMD">AMD</option>
                        <option value="USDANG">ANG</option>
                        <option value="USDAOA">AOA</option>
                        <option value="USDARS">ARS</option>
                        <option value="USDAUD">AUD</option>
                        <option value="USDAWG">AWG</option>
                        <option value="USDAZN">AZN</option>
                        <option value="USDBAM">BAM</option>
                        <option value="USDBBD">BBD</option>
                        <option value="USDBDT">BDT</option>
                        <option value="USDBGN">BGN</option>
                        <option value="USDBHD">BHD</option>
                        <option value="USDBIF">BIF</option>
                        <option value="USDBMD">BMD</option>
                        <option value="USDBND">BND</option>
                        <option value="USDBOB">BOB</option>
                        <option value="USDBRL">BRL</option>
                        <option value="USDBSD">BSD</option>
                    </select><br>
                    <input type="submit" value="Submit">
            </form>
    </body>
</html>