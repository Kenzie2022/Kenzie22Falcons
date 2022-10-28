public  class DmlDemo {
    public static void dmlInsertDemo_stnObj() {
         account acc = new Account();
         acc.Name = 'SoftInnovas';
         insert acc;
         system.debug(acc);
        
    }
    public static void dmlInsertDemo_cstmobj() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = ' Teach DML to Falcons';
        sp.description__c = 'All 40% are great learners';
        insert sp;
        system.debug(sp);


        
    }
}
