@isTest
public class AccountQueuableExampleTest {
    public static void testQueueable() {
        List<Account>listAcc = new List<Account>();
        for(integer i = 0; i< 500; i++);
        Account a3 = new Account();
        a3.name = 'PI TEST';
        a3.Industry = 'Banking';
        a3.Type = 'Customer- Direct';
        listAcc.add(a3);
    }
    insert listAcc;
    AccountsQueubaleExample aq = new AccountsQueubaleExample(lisAcc);
    
    Test.startTest();
    Id jobId = system.enqueueJob(aq);
    list

}
