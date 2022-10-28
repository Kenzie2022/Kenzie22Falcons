public  class SoqlDemo2 {
    public static void childToParent1 () {
        List<contact> listCnt = [SELECT Name, account.Name, account.industry 
        FROM contact WHERE account.industry = 'Energy'];
        for (contact eachContact : listCnt) {
             string accName = eachContact.account.name; 
             system.debug('Contact name is ' + eachContact.Name + ', its acc is ' + accName);
            
        }
    }  
    public static void sampleSOQL4() {
       List<Account> accountWithHopps =[select name, annualrevenue, (select amount ,name 
       from Opportunities where stageName = 'Closed Won')
       from account WHERE type = ' Customer - Direct'];

       for (account eachAccount : accountWithHopps) {
        system.debug('Account name ' + eachAccount.Name + 'and its annual revenue is =' + eachAccount.AnnualRevenue);
        List<Opportunity> listOPP = eachAccount.Opportunities;
        for (opportunity eachOPP : listOPP) {
            system.debug(' OPP NAME ' + eachOPP.Name + ', amount is ' + eachOPP.Amount);

        }
        system.debug('------');
    }
       

        
       } 
        
    }

    
