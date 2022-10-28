Account acc = [select Id, Name, OwnerId, CreatedBy.Name from Account WHERE Account  Id = '0018Z00002f0HzmQAE' LIMIT 1];
Map<String,Object> inputs = new Map<String,Object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountName', acc.Name);
inputs.put('AccountOwnerId', acc.OwnerId);
inputs.put('CreatedByName', acc.CreatedBy.Name);
Flow.Interview flow = new flow.Interview.Account_Auto_Lanched_Flow(inputs);
flow.start();