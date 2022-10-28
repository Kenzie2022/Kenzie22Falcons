List<Account> listAcc = new List<Account>();
account a1 = new account();
a1.name = 'PI Test';
a1.Industry = 'Banking';
a1.type = 'Customer - Direct';
listAcc.add(a1);

account a3 = new account();
a3.name = 'PI Test';
a3.Industry = 'Banking';
a3.Type = 'Customer - Direct';
listAcc.add(a3);

Account a3x = new account();
listAcc.add(a3x);
account a3y = new Account();
listAcc.add(a3y);

list<DATABASE.SaveResult> results = Database.insert(listAcc, false);
system.debug('results = ' + results);
for( Database.SaveResult eachResult : results){
    if(eachResult.isSuccess()){
        system.debug('Account inserted ' + eachResult.getId());

    }else{
        system.debug('Errors ' + eachResult.getErrors());
    }
}