@isTest
public with sharing class studentControllerTest {
    
    @TestSetup
    public static void makeData(){
        List<Student__c> sts = new List<Student__c>();
        for (Integer i = 1; i < 11; i++) {
            Student__c student = new Student__c();
            student.Student_Name__c='Imane ' + i;
            student.Class__c = i;
            student.Postal_Code__c = '3546' + i;
            sts.add(student);
        }
        insert sts;
    }
    @isTest
    public static void searchStudentsByPostalCodeTest() {
        test.startTest();
        List<Student__c> listst = studentController.searchStudentsByPostalCode('35461');
        
        test.stopTest();
        system.assert(listst.size() > 0);
        
    }
}