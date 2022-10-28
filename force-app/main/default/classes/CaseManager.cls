@RestResource(urLMapping ='/Case/*')
global with sharing class CaseManager {
    //https://falcons8-dev-ed.my.salesforce.com/services/apexrest/Case/5005h00000W7GUaAAN

    //https://falcons8-dev-ed.my.salesforce.com/services/apexrest/Case/{case id}"
   
    @httpGet
    global static Case getCase(){
        RestRequest request = RestContext.request;
        string requestUrI = request.requestURI;
        Integer lastIndex = requestUrI.lastIndexOf('/');
        Id caseId = requestUrI.substring(lastIndex+1);
        case cs = [SELECT CaseNumber, Subject, Priority, Origin, Description  FROM Case WHERE Id =  :caseId LIMIT 1 ];
        return cs;

    }
    @HttpPost
    global static Id createCase(string subject, string priority, string origin, string Description){
        Case cs = new Case();
        cs.Subject = subject;
        cs.Priority = priority;
        cs.Origin = origin;
        cs.Description= description;
        insert cs;
        return cs.Id;
    }
    //https://falcons8-dev-ed.my.salesforce.com/services/apexrest/Case/{case id}"
    @HttpDelete
    global static string deleteCase(){
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);
        Case cs= [ SELECT iD FROM Case WHERE Id = : caseId LIMIT 1];
        delete cs;
        return 'Case has been deleted succefully';
        
    }
    @HttpPut
    global static Id upsertCase(string id, string subject, string priority, string origin, string Description){
        Case cs = new Case();
        cs.Id = id;
        cs.Subject = subject;
        cs.Priority = priority;
        cs.Origin = origin;
        cs.Description = description;
        upsert cs;
        return cs.Id;

    }
    @HttpPatch
    global static Case updateCase(){
        RestRequest request = RestContext.request;
        string jsonString = request.requestBody.toString();
        Map<String, Object> caseInfo =(Map<String,Object>) JSON.deserializeUntyped(jsonString);
        system.debug(caseInfo);
        Case cs = new Case();
        for (String key : caseInfo.keySet()) {
            cs.put(key,caseInfo.get(key));
            
        }
        update cs;
        return cs;
    }


    

}
//https://softinnovas-23a-dev-ed.lightning.force.com/lightning/r/Case/5008Z00001wWMebQAG
    //Approach 1 
    //split('/') => ['https', '', 'falcons-dev-ed.my.salesforce.com', 'services', 'apexrest', 'Case', '5008Z00001wWMebQAG' ];
    //size = 7
    //get the element from size_1 = 6

    //Approach 2
    //last Indexof('/')= S1
    //S1+1 = S2
    //requestUrI.susString(S2)= 




