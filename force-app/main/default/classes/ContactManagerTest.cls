@isTest
public with sharing class ContactManagerTest {
    @TestSetup
    public static void makeData(){
     Contact con = new Contact(FirstName = 'Demis', LastName = 'Baser', Title = 'Junior developer', Email = 'Francly@gmail.com', Department = 'Salesforce' );
     insert con;
    }
    @isTest
    private static void getContactTest(){
      Test.startTest();
      Contact ct = [SELECT id FROM Contact LIMIT 1] ;
      String homeUrl = System.URL.getSalesforceBaseUrl().toExternalForm();//base URL
String uri = homeUrl + '/services/apexrest/Contact/' + ct.Id;
//prepare restrequest and context
RestRequest request = new RestRequest();
request.requestURI = uri;
request.httpMethod = 'GET';
RestContext.request = request;
//test method and perform asserts
 Contact objContact = ContactManager.getContact();
 System.assert(objContact.Id != null);
 //System.assertEquals(objContact.Department, ct.Department);
 Test.stopTest();
    }
    @isTest
    private static void createContactTest(){
        Test.startTest();
     Id contactId = ContactManager.createContact('Tia', 'Wenn', 'Manager','Diana@gmail.com',  'Salesforce');
    System.assert(contactId != null);
        Test.stopTest();
    }
    @isTest
private static void deleteContactTest(){
    Test.startTest();
//prepare request uri
Contact ct = [SELECT Id, FirstName, LastName, Title, Email, Department FROM Contact LIMIT 1 ];
String homeUrl = System.URL.getSalesforceBaseUrl().toExternalForm();//base URL
String uri = homeUrl + '/services/apexrest/Contact/' + ct.Id;
//prepare RestRequest & Context
RestRequest request = new RestRequest();
request.requestURI = uri;
request.httpMethod = 'DELETE';
RestContext.request = request;
//Test deleteCase method and perform asserts
String actual = ContactManager.deleteContact();
System.assertEquals('Contact has been deleted sucessfully!', actual);
Test.stopTest();
}
@isTest
private static void updateContactTest(){
    Test.startTest();
//prepare json string and convert it into blob
Contact ct = [SELECT Id, FirstName, LastName, Title, Email, Department FROM Contact LIMIT 1];
ct.FirstName = 'Inna';
String jsonString = JSON.serialize(ct);
//prepare RestRequest and context
RestRequest request = new RestRequest();
request.requestBody = Blob.valueOf(jsonString);
request.httpMethod = 'PATCH';
RestContext.request = request;
//Test the method and perform asserts
Contact updatedContact = ContactManager.updateContact();
System.assertEquals('Inna', updatedContact.FirstName);
Test.stopTest();
}
@isTest
private static void upsertContactTest(){
    Test.startTest();
    Contact ct = [SELECT Id, FirstName FROM Contact LIMIT 1];
    Id contactId = ContactManager.upsertContact(ct.Id, 'Ali', 'Mo', 'Web Manager', 'description@gmail.com', 'Web');
    System.assertEquals(contactId, ct.Id);
    Test.stopTest();
}
}