List <Account> accounts =[select id, name from account];
AccountsQueubaleExample a = new AccountsQueubaleExample(accounts):
ID JobId = system.enqueueJob(a);
system.debug('job id is ....' + JobId);