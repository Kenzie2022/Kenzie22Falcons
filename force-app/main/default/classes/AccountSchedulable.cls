public with sharing class AccountSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        AccountsBatch ab = new AccountsBatch();
        Integer numberOfRecords = 20;
        id batchId = Database.executeBatch(ab, numberOfRecords);
    }
    
}
