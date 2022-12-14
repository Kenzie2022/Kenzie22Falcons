public with sharing class AccountController {
    //this is home Address method 
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts(){
       return [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE  AnnualRevenue != null WITH SECURITY_ENFORCED ORDER BY AnnualRevenue DESC LIMIT 10];
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountByIndustry(string industry){
        return [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE Industry =:industry WITH SECURITY_ENFORCED LIMIT 10];

    }
  
        
    
}
