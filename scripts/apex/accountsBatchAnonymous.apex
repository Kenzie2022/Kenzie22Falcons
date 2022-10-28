AccountsBatch ab = new AccountsBatch();
Integer numberOfRecords = 20;
Id batchId = Database.executeBatch(ab, numberOfRecords);

