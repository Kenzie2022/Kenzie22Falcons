@RestResource(UrlMapping = '/Account/*')
global with sharing class AccountManager {
    
    @httpGet
    global static Account getAccount(){
        
        RestRequest request = RestContext.request;
        string requestURI = request.requestURI;
        Integer lastIndex = requestURI.lastIndexOf('/');
        Id AccountId = requestURI.substring(lastIndex+1);
        account ac =[SELECT Name, AccountNumber, Type, Industry FROM Account WHERE Id = : AccountId LIMIT 1 ];
        return ac;
    }

    @HttpPost
    global static Id createAccount(string  name, string AccountNumber,  string type, string industry, string status){
        Account ac = new Account();
        ac.Name = name;
        ac.AccountNumber = 

    }
   
}
