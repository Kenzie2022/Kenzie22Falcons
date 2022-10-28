List<Account> listAccount = new List<Account>();
for (integer i=0; i<5; i++) {
    account acc = new account();
    acc.name = 'SoftInnovas 20 July ' + i;
    acc.AccountNumber = 'Accis ' +i;
    acc.Active = ' New';
    listAccount.add(acc);

    system.debug('size of list = ' + listAccount)
    
}