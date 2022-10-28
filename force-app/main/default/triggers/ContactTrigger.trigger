trigger ContactTrigger on Contact  (before insert, before update, after insert, after update) {
    
    



    if (trigger.isBefore) {
        system.debug('Before Trigger');
        if (trigger.isInsert) {
            system.debug(' Before Insert Trigger called');    
        }
        if (trigger.isUpdate) {
            system.debug(' Before Update Trigger called.');
        }  
        
    }
    if (trigger.isAfter) {
        system.debug('After Trigger');
        if (trigger.isInsert) {
            system.debug('After Insert Trigger called');
        }
        if (trigger.isUpdate) {
            system.debug('After Update Trigger called  ');

        }
        
    }
    
  }
