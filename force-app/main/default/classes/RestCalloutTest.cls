@isTest
public with sharing class RestCalloutTest {
    @isTest
    private static void getAnimalsTest() {
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getAnimals();
        System.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }

    @isTest
    private static void getUsersTest() {
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response = RestCallouts.getUsers();
        System.assertEquals(response.getStatus(), 'OK');
        System.assertEquals(response.getStatusCode(), 200);
    }
}












