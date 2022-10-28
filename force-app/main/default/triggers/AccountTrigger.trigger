trigger AccountTrigger on Account (before insert, before update, after insert, after  update) {
    system.debug('Trigger Start');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
   
    system.debug('Trigger End');
}


 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // system.debug('===Trigger START===');
    // if (trigger.isAfter && trigger.isUpdate) {

    //     Integer countWebsiteUpdate = o; 
        
    // Set<Id> accIdSet = trigger.newMap.keySet();
    // for (id eachId : accIdSet) {
    //     Account newAcc =  trigger.newMap.get(eachId);
    //     string newWebsite = newAcc.Website;

    //     account oldAcc =  trigger.oldMap.get(eachId);
    //     string oldWebsite = newAcc.Website;

    //     if (newWebsite != oldWebsite) {
    //         system.debug('Acc Name : ' + newAcc.name + ', website is changed to  ' + newWebsite);
    //         countWebsiteUpdate;
            
    //     }

        
    // }

    
   
    // }
    // system.debug('===Trigger End==='); 


    // if (trigger.isAfter && trigger.isUpdate) {
    // //       Map<Id,Account> trgOldMap = trigger.oldMap;
    //       Map<Id,Account> trgNewMap = trigger.newMap;
    //       Set<Id> accIdSet = trgNewmAP.keySet()
    //       for (id eachID : accIdSet) {
    //         system.debug('account id is ...' + eachID);
    //         Account newAcc = trgNewMap.get(eachID);
    //         system.debug('new acc name is ' + newACC.Name);

    //         account oldAcc = trgOldmMap =get(eachID);
    //         system.debug('old acc name ' + oldAcc.Name);
            
    //       }

    // }
   
    // if (trigger.isBefore && trigger.isInsert) {
    //     system.debug('====Before Insert====');
    //     system.debug('Old Map ==> ' + trgOldMap);// null
    //     system.debug('new Map ==> ' + trgNewMap);// null
        
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug('====After Insert====');
    //     system.debug('Old Map ==> ' + trgOldMap);//null
    //     system.debug('new Map ==> ' + trgNewMap);//yes
        
    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('====Before Update====');
    //     system.debug('Old Map ==> ' + trgOldMap);//yes
    //     system.debug('new Map ==> ' + trgNewMap);//yes
        
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('====After Insert====');
    //     system.debug('Old Map ==> ' + trgOldMap);//yes
    //     system.debug('new Map ==> ' + trgNewMap);//yes
        
    // }
    
    
     // if (trigger.isAfter && trigger.isUpdate) {
        
    //     List<Account> oldAccounts = trigger.old;
    //     List<Account> newAccounts = trigger.new;
    //     // for (Account oldAcc : oldAccounts) {
    //     //     system.debug(' old accounts id ' + oldAcc.id + ', old account name ' + oldAcc.Name);
    //     // }
    //     Set<id> setAcc = new Set<id>();
    //     for (account acc : setAcc) {
    //         accidset.add(newAcc.id);

            
    //     }
    //     // for (Account newAcc : newAccounts){
    //     //     system.debug('new Accounts id ' + newAcc.id + ', new Accounts name ' + newAcc.name );
            
    //     // }
    // }
   
    // if (trigger.isBefore && trigger.isInsert) {
    //     system.debug('before insert trigger trigger . old = ' + trigger.old);
        
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug('after insert trigger trigger . old =' + trigger.old);
    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('before update trigger trigger . old = ' + trigger.old);
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('after update trigger trigger . old = ' + trigger.old);
    // }    
    
    
    
    // if (trigger.isBefore && trigger.isInsert) {
    //     system.debug('Trigger .new before insert = ' + trigger.new);
        
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug('Trigger . new After insert =' + trigger.new);
    // }
    // List<Account> newAccount = trigger.new;
    // if (trigger.isAfter) {
    //     system.debug('after trigger =' + newAccount);
    //     system.debug('size of trigger = ' + newAccount.size());

    //     for (account eachAccount: newAccount) {
    //         system.debug('account id is ' + eachAccount.id + ', account name is ' + eachAccount.name);     
    //     }
    
    // }
    

    // if (trigger.isBefore && trigger.isInsert)
    //     system.debug('Before insert trigger called');
    // if (trigger.isAfter && trigger.isInsert) 
    //     system.debug('After Insert trigger called');
    // if (trigger.isBefore && trigger.isUpdate)
    //      system.debug('Before Update trigger called');
    // if (trigger.isAfter && trigger.isUpdate) 
    //      system.debug('After update trigger called');
    


    // system.debug('===Trigger End===');




