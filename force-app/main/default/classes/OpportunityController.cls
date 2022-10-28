public with sharing class OpportunityController {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getTopOpps(){
       return [SELECT Name, Type, StageName, Amount FROM Opportunity WHERE  Amount != null WITH SECURITY_ENFORCED ORDER BY Amount DESC LIMIT 10];
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOppsByStage(string stageName){
        return [SELECT Name, Type, StageName, Amount FROM Opportunity WHERE StageName =:stageName WITH SECURITY_ENFORCED LIMIT 10];


    }
}
