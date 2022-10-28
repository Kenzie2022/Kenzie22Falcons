public class AccountTriggerHandler {
    public static void updateAccountDescription(list<Account> accTriggerNew,
    list<Account> accTriggerOld, Map<Id,Account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap ) {

        for (Account eachAcc: accTriggerNew) {
            Boolean updateDesc = false;
            if (accTriggerNew == null && eachAcc.Active__c == 'Yes') {
                updateDesc= true;
            }
            if (accTriggerOldMap != null) {
                Map<Id,Account> triggerOldMap = accTriggerOldMap;
                Account oldAccount = triggerOldMap.get(eachAcc.Id);
                Account newAccount = eachAcc;
                if (newAccount.Active__c == 'Yes ' && newAccount.Active__c != oldAccount.Active__c) {
                    updateDesc = true;
                }
            }
        if (updateDesc) {
            eachAcc.Description = 'Account is now active.Enjoy!!!';
        }
    }

}
}
    
    
    
    

