trigger CaseTrigger on Case (before insert) {
    system.debug('before insert case trigger called');
    system.debug('trigger size is ==>>> ' + trigger.size);

}