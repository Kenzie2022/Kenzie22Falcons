public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        String batchNmae = 'Falcons 8';
        Integer totalCandidates = 40;
        Boolean isAdminCompleted = true;

        system.debug(batchNmae);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);
        string batchDescription= batchNmae+ ' are the Bestest ';
        system.debug(batchDescription);

    }
    public void printBasicDataType2(){
        Decimal decimallValue =  3655;
        system.debug (' Decimal value =' +decimallValue);

        long  longValue = 2145667L;
        system.debug('Lomg value =' + longValue); 
          
        ID id1 = '0018Z00002f0HzmQAE';
        system.debug( 'ID IS ' + id1);


    }
        
}


       

