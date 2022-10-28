@isTest
public with sharing class SoapCalloutsTest{
    @isTest
    private static void parkServiceTest() {
        ParksServiceMock mock = new ParksServiceMock();
        Test.setMock(WebServiceMock.class, mock);
        String country = 'Turkey';
        String[] parks = SoapCallouts.getParksByCountry(country);
        System.assert(parks.size() != 0);
    }
}