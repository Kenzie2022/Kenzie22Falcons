public with sharing class ContactController {
    
    @AuraEnabled
    public static List<Contact> searchContacts(string searchKey){
        searchKey = '%' + searchKey + '%';
        return [SELECT Name, Title, Email, Phone
        FROM Contact
        WHERE FirstName LIKE :searchKey
        OR LastName LIKE :searchKey
        WITH SECURITY_ENFORCED];

    }
}