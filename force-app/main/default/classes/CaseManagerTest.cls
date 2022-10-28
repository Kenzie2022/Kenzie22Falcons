@isTest
public with sharing class CaseManagerTest {
    @TestSetup
    static void makeData(){
        // create an account, a contact and 4 cases
        Account acc = new Account(Name ='Test Account'); 
        insert acc;
        Contact con = new Contact(FirstName = 'Integration', LastName = 'Test', Email = 'test@gmail.com');
        insert con;

        List<Case> cases = new List<Case>();
        for(Integer i = 0; i<4; i++){
            Case cs = new Case();
            cs.AccountId = acc.Id;
            cs.ContactId = con.Id;
            cs.Subject = 'PROBLEM WITH THE WI-FI Router' + i;
            cs.Description = 'There was a problem with my WI-FI- router since morning . I do not get date';
            cs.Origin = 'Email';
            cs.Priority = 'Medium';
            cases.add(cs);
        }
        insert cases;
   
    }
    @isTest
    private static void getCaseTest(){
        Case cs=[SELECT Id,Subject,Description,Priority,Origin 
        FROM Case
        WITH SECURITY_ENFORCED
        LIMIT 1];
        //prepare request uri
        string homeUrl = system.URL.getSalesforceBaseUrl().toExternalForm();
        string uri = homeUrl + '/services/apexrest/Case' + cs.Id;

        //prepare restrequest and context
        RestRequest request = new RestRequest();
        request.requestURI = uri;
        request.httpMethod = 'GET';
        RestContext.request = request;

        //test the method and perform asserts 
        Case objCase = CaseManager.getCase();
        system.assert(objCase.Id != null);
        system.assertEquals(objCase.CaseNumber, cs.CaseNumber);
        Test.stopTest();
        
    }
    @isTest
    private static void createCaseTest(){
        Test.startTest();
        Id caseId = CaseManager.createCase('Test Subject', 'Web', 'High' , 'Test Desc');
        system.assert(caseId != null);
        Test.stopTest();
    
    }

}
