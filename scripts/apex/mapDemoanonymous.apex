Map<String,String> mapCntCurrency = new Map<String,String>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('Turkey', 'Liret');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('INDIA', 'Rupee');
mapCntCurrency.put('Germany', 'Euro');

system.debug(mapCntCurrency);

string indiaCurrency = mapCntCurrency.get('India');
string turkeyCurrency = mapCntCurrency.get  ('Turkey');
system.debug('Currency of India ' + indiaCurrency);
system.debug('Currency of Turkey is ' + turkeyCurrency);

Set<String> countrySet =  mapCntCurrency.keySet();
system.debug('All countries in map are ' + countrySet);  

List<String> currencies =  mapCntCurrency.values();
system.debug(' All currencies are ' + currencies);


Set<String> countries =  mapCntCurrency.keySet();
for(String eachKey : countries){

    string eachValue = mapCntCurrency.get(eachKey);
    eachKey = eachKey + ', its currency is ' + eachvalue;
    system.debug(eachKey);


}
