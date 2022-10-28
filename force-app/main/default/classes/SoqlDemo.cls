public  class SoqlDemo {
  public static void accountSOQL_1(){ 
        List<Account> listAccount = [select id, name,Active__c from account where name LIKE '%A%'];
        system.debug('List of Account ' + listAccount);
        system.debug('Size of Account = ' + listAccount.size());

        Account acc = [select name, createddate from account order by CreatedDate desc limit 1];
        system.debug('Last cretated account record ' + acc);
   }

   public static void accountSOQL_2(){
        Account acc = [select name, phone, CreatedDate from Account order by CreatedDate desc limit 1 ];
        system.debug('Latest created account is ' + acc);
        string accName = acc.name;
        system.debug('accName = ' + accName);
        system.debug('accPhone = ' + acc.phone);
    }
    public static void accountSOQL_3() {
        List<Account> listAcc = [ select name, phone, accountnumber from account order by CreatedDate DESC];
        system.debug('All Accounts ' + listAcc);
        for (account eachAccount : listAcc) {
            system.debug('accNmae = ' + eachAccount.Name);
            
        }

    }
    public static void accountSOQL_Filter() {
        string accNameFilter = 'Saesforce Inc';
        List<Account> listAcct = [select id, name from account where name = :accNameFilter];
        

        system.debug('List of Account ' + listAcct);

    }
}
