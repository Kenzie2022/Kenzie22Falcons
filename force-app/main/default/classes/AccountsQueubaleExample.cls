public with sharing class AccountsQueubaleExample {
    List<Account> listAcc = new List<Account>();
    public AccountsQueubaleExample(List<Account> accs){
     listAcc = accs;   
    }
    public void execute(QueueableContext qc){
        for(account acc : listAcc){
            acc.Name += '__ SI';
        }
        update listAcc;
    }
    
}
