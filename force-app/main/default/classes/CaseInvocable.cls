public with sharing class CaseInvocable {
    @InvocableMethod(label = 'Send Email & Save Activity'
    description = 'Send an Email and Save the same Activity'
    category = 'Case')
    public static void sendEmail(list<FlowInput> inputs) {
        list<Messaging.SingleEmailMessage> messages = new list<messaging.SingleEmailMessage>();
        for (FlowInput input : inputs) {
            Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
            message.setSubject('Case Created' + input.caseNumber);
            message.setPlainTextBody('Hello There, \n' + 'A Case has been created your quote the case number when your call the next time \n\n'
             + 'Thanks, \n'
             + 'Salesforce');
            message.setTargetObjectId(input.contactId);
            message.setWhatId(input.contactId);
            message.setSaveAsActivity(true);
        }
    Messaging.sendEmail(messages);
    }
    public  class FlowInput {
        @InvocableVariable(label='Case Number' description = 'Case Number'  required = true)
        public String caseNumber;

        @InvocableVariable(label= 'Contact Id' description= 'Contact Id' required = true)
        public Id contactId;
    }

}
