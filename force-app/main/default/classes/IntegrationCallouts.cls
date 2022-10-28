public with sharing class IntegrationCallouts {
    public static HttpResponse getCovidInfo () {
        
     //1. Prepare HttpRequest & and wrap the necessary information in it
     HttpRequest request = new HttpRequest();
     request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
     request.setMethod('GET');
     
     //2. Prepare Internet
     Http http = new Http();
     
     //3. Send the HttpRequest over the internet to receive HttpResponse back
     HttpResponse response = http.send(request);

     //4. Process the HttpResponse
     if (response.getStatusCode()== 200) {
        system.debug(response.getBody());
        List<CovidInfoWrapper> cirecords = (List<CovidInfoWrapper>)JSON.deserialize(response.getBody(), list<CovidInfoWrapper>.class);
        CovidInfoWrapper cirecord = cirecords[0];
        List<Covid_Info__c> CI = [SELECT id, name, Positive__c, Negative__c, Pending__c, Received_Date__c FROM Covid_Info__c WHERE Received_Date__c = TODAY];
        if (CI.isEmpty()) {
            Covid_Info__c newInfo = new Covid_Info__c();
            newInfo.Name = String.valueOf( cirecord.states);
            newInfo.Positive__c = cirecord.positive;
            newInfo.Negative__c = cirecord.negative;
            newInfo.Pending__c = cirecord.pending;
            newInfo.Received_Date__c = date.today();
            insert newInfo;
        }else{
            CI[0].Name =String.valueOf(cirecord.states);
            CI[0].Positive__c = cirecord.positive;
            CI[0].Negative__c =cirecord.negative;
            CI[0].Pending__c = cirecord.pending;
            update CI;
        }
        }
        return response;
    }
    public with sharing class CovidInfoWrapper {
        public Integer states;
        public Integer positive;
        public Integer negative;
        public Integer pending;
        
         
    }
}