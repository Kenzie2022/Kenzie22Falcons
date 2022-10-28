@RestResource(urlMapping = '/Contact/*')
global with sharing class ContactManager {
    //https://softinnovas-23a-dev-ed.my.salesforce.com/services/apexrest/contact/{contact id}
    @httpGet
    global static Contact getContact() {
        RestRequest request = RestContext.request;
        string requestUrI = request.requestURI;
        Integer lastIndex = requestUrI.lastIndexOf('/');
        Id contactId = requestUrI.substring(lastIndex+1);
        Contact ct =[SELECT FirstName, LastName, Title, Email, Department FROM Contact WHERE Id =: ContactId LIMIT 1];
        return ct;
        
    }
    @httpPost
    global static Id createContact(string FirstName, string LastName, string Title, string Email, string Department){
        Contact ct = new Contact();
        ct.firstName = FirstName;
        ct.lastName = LastName;
        ct.title = Title;
        ct.email = Email;
        ct.department = Department;
        insert ct;
        return ct.Id;
    }
    @httpDelete
    global static string deleteContact () {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Integer lastInedx = uri.lastIndexOf('/');
        Id contactId = uri.substring(lastInedx+1);
        Contact ct = [SELECT Id FROM Contact WHERE Id =: contactId LIMIT 1];
        delete ct;
        return 'Contact has been deleted succefully';
        
    }
    @httpPatch
    global static Contact updateContact() {
        RestRequest request = RestContext.request;
        String jsonString = request.requestBody.toString();
        Map<String,Object> contactInfo = (Map<String,Object>) JSON.deserializeUntyped(jsonString);
        system.debug(contactInfo);
        Contact ct = new Contact();
        for (String key : contactInfo.keySet()) {
            ct.put(key, contactInfo.get(key));
      
        }
        update ct;
        return ct;
        
    }
    @httpPut
    global static Id upsertContact(string Id, string FirstName, string LastName, string Title, string Email, string Department) {
        Contact ct = new Contact();
        ct.id = Id;
        ct.FirstName=FirstName;
        ct.LastName = LastName;
        ct.Title=Title;
        ct.Email= Email;
        ct.Department= Department;
        upsert ct;
        return ct.Id;

        
    }
        
    

    

   
    
    

    
}