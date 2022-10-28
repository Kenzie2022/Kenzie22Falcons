public with sharing class AccountInvocable {
    @InvocableMethod(Label = 'Close Related Opportunities'
    description = 'Closes all the related opportunities of the given accounts'
    category = 'Account')

    public static void closeOpportunities(List<Id> accountIds) {
        List<Opportunity> opps = [select Id, StageName FROM Opportunity
                                 WHERE AccountId IN : accountIds
                                 AND StageName NOT IN ('Closed Won', 'Closed Lost')
                                 WITH SECURITY_ENFORCED];

        for (Opportunity opp : opps) {
            opp.StageName = 'Closes Lost';
            
        }  
        try {
            update opps;
        } catch (Exception ex) {
            system.debug(ex.getMessage());
            
        }                      
    }
   
   
}
