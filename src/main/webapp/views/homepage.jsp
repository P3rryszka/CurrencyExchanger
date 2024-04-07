<%@page language="java" %>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../style.css">
    </head>

    <body>
        <h2>Currency conversion</h2><br>

            <form action="convert">

                <label for="amount">Amount of base currency: </label><br>
                <input type="number" id="amount" name="amount"><br>

                <label for="base-currency">Base currency: </label><br>
                    <select id="base-currency" name="baseCurrency">
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
                        <option value="USDBTC">BTC</option>
                        <option value="USDBTN">BTN</option>
                        <option value="USDBWP">BWP</option>
                        <option value="USDBYN">BYN</option>
                        <option value="USDBYR">BYR</option>
                        <option value="USDBZD">BZD</option>
                        <option value="USDCAD">CAD</option>
                        <option value="USDCDF">CDF</option>
                        <option value="USDCHF">CHF</option>
                        <option value="USDCLF">CLF</option>
                        <option value="USDCLP">CLP</option>
                        <option value="USDCNY">CNY</option>
                        <option value="USDCNH">CNH</option>
                        <option value="USDCOP">COP</option>
                        <option value="USDCRC">CRC</option>
                        <option value="USDCUC">CUC</option>
                        <option value="USDCUP">CUP</option>
                        <option value="USDCVE">CVE</option>
                        <option value="USDCZK">CZK</option>
                        <option value="USDDJF">DJF</option>
                        <option value="USDDKK">DKK</option>
                        <option value="USDDOP">DOP</option>
                        <option value="USDDZD">DZD</option>
                        <option value="USDEGP">EGP</option>
                        <option value="USDERN">ERN</option>
                        <option value="USDETB">ETB</option>
                        <option value="USDEUR">EUR</option>
                        <option value="USDFJD">FJD</option>
                        <option value="USDFKP">FKP</option>
                        <option value="USDGBP">GBP</option>
                        <option value="USDGEL">GEL</option>
                        <option value="USDGGP">GGP</option>
                        <option value="USDGHS">GHS</option>
                        <option value="USDGIP">GIP</option>
                        <option value="USDGMD">GMD</option>
                        <option value="USDGNF">GNF</option>
                        <option value="USDGTQ">GTQ</option>
                        <option value="USDGYD">GYD</option>
                        <option value="USDHKD">HKD</option>
                        <option value="USDHNL">HNL</option>
                        <option value="USDHRK">HRK</option>
                        <option value="USDHTG">HTG</option>
                        <option value="USDHUF">HUF</option>
                        <option value="USDIDR">IDR</option>
                        <option value="USDILS">ILS</option>
                        <option value="USDIMP">IMP</option>
                        <option value="USDINR">INR</option>
                        <option value="USDIQD">IQD</option>
                        <option value="USDIRR">IRR</option>
                        <option value="USDISK">ISK</option>
                        <option value="USDJEP">JEP</option>
                        <option value="USDJMD">JMD</option>
                        <option value="USDJOD">JOD</option>
                        <option value="USDJPY">JPY</option>
                        <option value="USDKES">KES</option>
                        <option value="USDKGS">KGS</option>
                        <option value="USDKHR">KHR</option>
                        <option value="USDKMF">KMF</option>
                        <option value="USDKPW">KPW</option>
                        <option value="USDKRW">KRW</option>
                        <option value="USDKWD">KWD</option>
                        <option value="USDKYD">KYD</option>
                        <option value="USDKZT">KZT</option>
                        <option value="USDLAK">LAK</option>
                        <option value="USDLBP">LBP</option>
                        <option value="USDLKR">LKR</option>
                        <option value="USDLRD">LRD</option>
                        <option value="USDLSL">LSL</option>
                        <option value="USDLTL">LTL</option>
                        <option value="USDLVL">LVL</option>
                        <option value="USDLYD">LYD</option>
                        <option value="USDMAD">MAD</option>
                        <option value="USDMDL">MDL</option>
                        <option value="USDMGA">MGA</option>
                        <option value="USDMKD">MKD</option>
                        <option value="USDMMK">MMK</option>
                        <option value="USDMNT">MNT</option>
                        <option value="USDMOP">MOP</option>
                        <option value="USDMRU">MRU</option>
                        <option value="USDMUR">MUR</option>
                        <option value="USDMVR">MVR</option>
                        <option value="USDMWK">MWK</option>
                        <option value="USDMXN">MXN</option>
                        <option value="USDMYR">MYR</option>
                        <option value="USDMZN">MZN</option>
                        <option value="USDNAD">NAD</option>
                        <option value="USDNGN">NGN</option>
                        <option value="USDNIO">NIO</option>
                        <option value="USDNOK">NOK</option>
                        <option value="USDNPR">NPR</option>
                        <option value="USDNZD">NZD</option>
                        <option value="USDOMR">OMR</option>
                        <option value="USDPAB">PAB</option>
                        <option value="USDPEN">PEN</option>
                        <option value="USDPGK">PGK</option>
                        <option value="USDPHP">PHP</option>
                        <option value="USDPKR">PKR</option>
                        <option value="USDPLN">PLN</option>
                        <option value="USDPYG">PYG</option>
                        <option value="USDQAR">QAR</option>
                        <option value="USDRON">RON</option>
                        <option value="USDRSD">RSD</option>
                        <option value="USDRUB">RUB</option>
                        <option value="USBRWF">RWF</option>
                        <option value="USDSAR">SAR</option>
                        <option value="USDSBD">SBD</option>
                        <option value="USDSCR">SCR</option>
                        <option value="USDSDG">SDG</option>
                        <option value="USDSEK">SEK</option>
                        <option value="USDSGD">SGD</option>
                        <option value="USDSHP">SHP</option>
                        <option value="USDSLE">SLE</option>
                        <option value="USDSLL">SLL</option>
                        <option value="USDSOS">SOS</option>
                        <option value="USDSRD">SRD</option>
                        <option value="USDSTD">STD</option>
                        <option value="USDSVC">SVC</option>
                        <option value="USDSYP">SYP</option>
                        <option value="USDSZL">SZL</option>
                        <option value="USDTHB">THB</option>
                        <option value="USDTJS">TJS</option>
                        <option value="USDTMT">TMT</option>
                        <option value="USDTND">TND</option>
                        <option value="USDTOP">TOP</option>
                        <option value="USDTRY">TRY</option>
                        <option value="USDTTD">TTD</option>
                        <option value="USDTWD">TWD</option>
                        <option value="USDTZS">TZS</option>
                        <option value="USDUAH">UAH</option>
                        <option value="USDUGX">UGX</option>
                        <option value="USDUSD">USD</option>
                        <option value="USDUYU">UYU</option>
                        <option value="USDUZS">UZS</option>
                        <option value="USDVEF">VEF</option>
                        <option value="USDVES">VES</option>
                        <option value="USDVND">VND</option>
                        <option value="USDVUV">VUV</option>
                        <option value="USDWST">WST</option>
                        <option value="USDXAF">XAF</option>
                        <option value="USDXAG">XAG</option>
                        <option value="USDXAU">XAU</option>
                        <option value="USDXCD">XCD</option>
                        <option value="USDXDR">XDR</option>
                        <option value="USDXOF">XOF</option>
                        <option value="USDXPF">XPF</option>
                        <option value="USDYER">YER</option>
                        <option value="USDZAR">ZAR</option>
                        <option value="USDZMK">ZMK</option>
                        <option value="USDZMW">ZMW</option>
                        <option value="USDZWL">ZWL</option>
                    </select><br>

                <label for="quote-currency">Quote currency: <label><br>
                    <select id="quote-currency" name="quoteCurrency">
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
                        <option value="USDBTC">BTC</option>
                        <option value="USDBTN">BTN</option>
                        <option value="USDBWP">BWP</option>
                        <option value="USDBYN">BYN</option>
                        <option value="USDBYR">BYR</option>
                        <option value="USDBZD">BZD</option>
                        <option value="USDCAD">CAD</option>
                        <option value="USDCDF">CDF</option>
                        <option value="USDCHF">CHF</option>
                        <option value="USDCLF">CLF</option>
                        <option value="USDCLP">CLP</option>
                        <option value="USDCNY">CNY</option>
                        <option value="USDCNH">CNH</option>
                        <option value="USDCOP">COP</option>
                        <option value="USDCRC">CRC</option>
                        <option value="USDCUC">CUC</option>
                        <option value="USDCUP">CUP</option>
                        <option value="USDCVE">CVE</option>
                        <option value="USDCZK">CZK</option>
                        <option value="USDDJF">DJF</option>
                        <option value="USDDKK">DKK</option>
                        <option value="USDDOP">DOP</option>
                        <option value="USDDZD">DZD</option>
                        <option value="USDEGP">EGP</option>
                        <option value="USDERN">ERN</option>
                        <option value="USDETB">ETB</option>
                        <option value="USDEUR">EUR</option>
                        <option value="USDFJD">FJD</option>
                        <option value="USDFKP">FKP</option>
                        <option value="USDGBP">GBP</option>
                        <option value="USDGEL">GEL</option>
                        <option value="USDGGP">GGP</option>
                        <option value="USDGHS">GHS</option>
                        <option value="USDGIP">GIP</option>
                        <option value="USDGMD">GMD</option>
                        <option value="USDGNF">GNF</option>
                        <option value="USDGTQ">GTQ</option>
                        <option value="USDGYD">GYD</option>
                        <option value="USDHKD">HKD</option>
                        <option value="USDHNL">HNL</option>
                        <option value="USDHRK">HRK</option>
                        <option value="USDHTG">HTG</option>
                        <option value="USDHUF">HUF</option>
                        <option value="USDIDR">IDR</option>
                        <option value="USDILS">ILS</option>
                        <option value="USDIMP">IMP</option>
                        <option value="USDINR">INR</option>
                        <option value="USDIQD">IQD</option>
                        <option value="USDIRR">IRR</option>
                        <option value="USDISK">ISK</option>
                        <option value="USDJEP">JEP</option>
                        <option value="USDJMD">JMD</option>
                        <option value="USDJOD">JOD</option>
                        <option value="USDJPY">JPY</option>
                        <option value="USDKES">KES</option>
                        <option value="USDKGS">KGS</option>
                        <option value="USDKHR">KHR</option>
                        <option value="USDKMF">KMF</option>
                        <option value="USDKPW">KPW</option>
                        <option value="USDKRW">KRW</option>
                        <option value="USDKWD">KWD</option>
                        <option value="USDKYD">KYD</option>
                        <option value="USDKZT">KZT</option>
                        <option value="USDLAK">LAK</option>
                        <option value="USDLBP">LBP</option>
                        <option value="USDLKR">LKR</option>
                        <option value="USDLRD">LRD</option>
                        <option value="USDLSL">LSL</option>
                        <option value="USDLTL">LTL</option>
                        <option value="USDLVL">LVL</option>
                        <option value="USDLYD">LYD</option>
                        <option value="USDMAD">MAD</option>
                        <option value="USDMDL">MDL</option>
                        <option value="USDMGA">MGA</option>
                        <option value="USDMKD">MKD</option>
                        <option value="USDMMK">MMK</option>
                        <option value="USDMNT">MNT</option>
                        <option value="USDMOP">MOP</option>
                        <option value="USDMRU">MRU</option>
                        <option value="USDMUR">MUR</option>
                        <option value="USDMVR">MVR</option>
                        <option value="USDMWK">MWK</option>
                        <option value="USDMXN">MXN</option>
                        <option value="USDMYR">MYR</option>
                        <option value="USDMZN">MZN</option>
                        <option value="USDNAD">NAD</option>
                        <option value="USDNGN">NGN</option>
                        <option value="USDNIO">NIO</option>
                        <option value="USDNOK">NOK</option>
                        <option value="USDNPR">NPR</option>
                        <option value="USDNZD">NZD</option>
                        <option value="USDOMR">OMR</option>
                        <option value="USDPAB">PAB</option>
                        <option value="USDPEN">PEN</option>
                        <option value="USDPGK">PGK</option>
                        <option value="USDPHP">PHP</option>
                        <option value="USDPKR">PKR</option>
                        <option value="USDPLN">PLN</option>
                        <option value="USDPYG">PYG</option>
                        <option value="USDQAR">QAR</option>
                        <option value="USDRON">RON</option>
                        <option value="USDRSD">RSD</option>
                        <option value="USDRUB">RUB</option>
                        <option value="USBRWF">RWF</option>
                        <option value="USDSAR">SAR</option>
                        <option value="USDSBD">SBD</option>
                        <option value="USDSCR">SCR</option>
                        <option value="USDSDG">SDG</option>
                        <option value="USDSEK">SEK</option>
                        <option value="USDSGD">SGD</option>
                        <option value="USDSHP">SHP</option>
                        <option value="USDSLE">SLE</option>
                        <option value="USDSLL">SLL</option>
                        <option value="USDSOS">SOS</option>
                        <option value="USDSRD">SRD</option>
                        <option value="USDSTD">STD</option>
                        <option value="USDSVC">SVC</option>
                        <option value="USDSYP">SYP</option>
                        <option value="USDSZL">SZL</option>
                        <option value="USDTHB">THB</option>
                        <option value="USDTJS">TJS</option>
                        <option value="USDTMT">TMT</option>
                        <option value="USDTND">TND</option>
                        <option value="USDTOP">TOP</option>
                        <option value="USDTRY">TRY</option>
                        <option value="USDTTD">TTD</option>
                        <option value="USDTWD">TWD</option>
                        <option value="USDTZS">TZS</option>
                        <option value="USDUAH">UAH</option>
                        <option value="USDUGX">UGX</option>
                        <option value="USDUSD">USD</option>
                        <option value="USDUYU">UYU</option>
                        <option value="USDUZS">UZS</option>
                        <option value="USDVEF">VEF</option>
                        <option value="USDVES">VES</option>
                        <option value="USDVND">VND</option>
                        <option value="USDVUV">VUV</option>
                        <option value="USDWST">WST</option>
                        <option value="USDXAF">XAF</option>
                        <option value="USDXAG">XAG</option>
                        <option value="USDXAU">XAU</option>
                        <option value="USDXCD">XCD</option>
                        <option value="USDXDR">XDR</option>
                        <option value="USDXOF">XOF</option>
                        <option value="USDXPF">XPF</option>
                        <option value="USDYER">YER</option>
                        <option value="USDZAR">ZAR</option>
                        <option value="USDZMK">ZMK</option>
                        <option value="USDZMW">ZMW</option>
                        <option value="USDZWL">ZWL</option>
                    </select><br>
                    <input type="submit" value="Submit">
            </form>
    </body>
</html>