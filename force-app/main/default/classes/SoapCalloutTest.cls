@isTest
public with sharing class SoapCalloutTest {
    @isTest
    private static void parkServiceTest() {
        ParksServicesMock mock = new ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);
        String country = 'Turkey';
        String[] parks = SoapCallouts.getParksByCountry(country);
        System.assert(parks.size() != 0);
    }
}
    


