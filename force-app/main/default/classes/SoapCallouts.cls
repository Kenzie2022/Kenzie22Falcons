public with sharing class SoapCallouts {
    public static string[] getPaksCountry(string country){
        ParksServices.ParksImplPort parkService = new ParksServices.ParksImplPort();
        string[] parks = parkService.byCountry(country);
        system.debug(parks);
        return parks;

    }
    public static Double getMultiply(Double num1, Double num2){
        C.CalculatorImplPort calcService = new C.CalculatorImplPort();
        Double output =  calcService.doMultiply(num1, num2);
        return output;
    }
    public static Double getSubtract( Double num1, Double num2){
        C.CalculatorImplPort calcService = new C.CalculatorImplPort();
        Double output =  calcService.doSubtract(num1, num2);
        return output;
    
    }

}