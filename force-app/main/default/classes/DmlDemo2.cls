public class DmlDemo2 {
    public static void dmlUpdateDemo_3 () {
        account acc = [ select id, name, Site from account where name = 'SoftInnovas' LIMIT 1];
        acc.name = ' Soft Innovas Inc';
        acc.Site = 'www.softinnovas.com';
        update acc;
        system.debug('acc = ' + acc);
    }

    public static void dmlInsertDemo_2() {
        account acc = [select id, name from account where name = 'Soft Innovas Inc' limit 1];
        contact c = new contact();
        c.LastName = 'Biden';
        c.AccountId = acc.id;
        insert c;
        system.debug(c);
    }

    public static void dmlInsertRelatedDemo_2() {
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c order by createdDate DESC limit 1];
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn Apex';
        st.priority__c = ' High';
        st.status__c = 'New';
        st.Requested_by_date__c = Date.newInstance(2021, 12, 06);
        st.Salesforce_Project__c = sp.id;
        insert st;
        system.debug('Salesforce ticket :' + st);
    }

    public static void  dmlMultipleRecordInsert_roght() {
         List<Account> listACC = new List<Account>();
         account a = new Account();
         a.Name = ' bulk acc 1';
         listACC.add(a);
         account a1 = new Account();
         a1.name = 'bulk acc 2';
         listACC.add(a1);
         account a2 = new Account();
         a2.name = 'bulk acc 2';
         listACC.add(a2);
         insert listACC;
    }
    public static void dmlMultipleRecordInsert_right2() {
        List<Account> listAcc = new List<Account>();
        for (integer i = 0; i < 200;  i++)  {
            account acc = new account();
            acc.name = 'Soft Innovas july29 ';
            acc.AccountNumber = 'Accis';
            acc.Active__c = 'Yes';
            listAcc.add(acc);
            system.debug('size of list = ' + listAcc.size());
            if (listAcc.isEmpty()) {
                insert listAcc;
                
            }

            
        }
        
    }
    public static void dmlMultipleRecordUpdate_right3 () {
        List<Account> updateAccounts = new List<Account>();
        List<Account> lisAccount = [select id, name from account];
        for (account eachAccount : lisAccount) {
            eachAccount.Name += 'via B.0';
            updateAccounts.add(eachAccount);
        }
        if (!updateAccounts.isEmpty()) {
           update updateAccounts; 
        }
        }

        
    }
    

 