public with sharing class RestCallouts3 {
    public static HttpResponse postCallouts3() {
        //1. Prepare HttpRequest & wrap the necessary information in 
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Map<String,Object> input = new Map<String,Object>();
        input.put('name', 'Cat');
        request.setBody(JSON.serialize(request));

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);
        //4. Process the HttpResponse
        if(response.getStatusCode()==201){
            system.debug(response.getBody());
        }
        else{
            system.debug(response.getStatus());
        }
        return response;

    }
    public static HttpResponse postContacts(){
        //1. Prepare HttpRequest & wrap the necessary information in   
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://gorest.co.in/public/v2/users');
        request.setMethod('POST');
        //1.1. Get data and prepare as JSON
        List<Contact> contacts = [SELECT Name, Email, Gender__c,
                             Status__c FROM Contact WHERE Gender__c != null 
                             AND Status__c != null LIMIT 1];
                             
        ContactWrapper cw = new ContactWrapper();
        for(contact con : contacts) {
          
          cw.name = con.Name;
          cw.email = con.Email;
          cw.gender = con.Gender__c;
          cw.status = con.Status__c;

    }   
          request.setBody(JSON.serialize(cw));
          request.setHeader('Content-Type', 'application/json;charset=UTF-8');
          request.setHeader('Authorization', 'Bearer 8634b3e9f290463b4135dad5531e318e667ebef816febe5a62ae66c2da3259fa');   
        
        //2. Prepare internet
          Http http = new Http();
        
        //3. Send the HttpRequest over the internet to receive HttpResponse back
           HttpResponse response = http.send(request);
        
        //4. Process the HttpResponse
           if(response.getStatusCode()==201){
            system.debug('Request has been processed succefully ');

        }
        return response;

    }
}
