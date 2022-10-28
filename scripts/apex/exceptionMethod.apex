try{
account acc = new account();
insert acc;
}catch(DMLException dex){
    system.debug('Dml went wrong buddy');
}catch(Exception ex){
    system.debug('something went wrong buddy');
}


system.debug('Apex is simple');