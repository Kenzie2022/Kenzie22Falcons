public with sharing class studentController {
    
    @AuraEnabled
    public static List<Student__c> searchStudentsByPostalCode(string postalCode){
        return [SELECT Student_Name__c, Class__c, Mobile__c, Email__c, Postal_Code__c FROM Student__c WHERE Postal_Code__c =: postalCode WITH SECURITY_ENFORCED];

        
    }
    
}
