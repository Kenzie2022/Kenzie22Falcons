import { LightningElement } from 'lwc';
import searchStudentsByPostalCode from '@salesforce/apex/studentController.searchStudentsByPostalCode';

const COLUMNS = [
    {label:"Student Name", fieldName:"Student_Name__c", type:"text"},
    {label:"Class", fieldName:"Class__c", type:"number"},
    {label:"Mobile", fieldName:"Mobile__c", type:"tel"},
    {label:"Email", fieldName:"Email__c", type:"email"},
    {label:"Postal Code", fieldName:"Postal_Code__c", type:"text"}

];
export default class StudentSearch extends LightningElement {
    searchWord;
    changeHandler;
    students;
    error;
    columns = COLUMNS;

    changeHandler(event){
        this.searchWord=event.target.value;
        console.log(this.searchWord);
        if(this.searchWord.length > 0){
        searchStudentsByPostalCode({postalCode: this.searchWord})
        .then(result => {
            if (this.students.length ==0) {
                this.error = "There is no results for this postal code, try again!";
                this.students = undefined;    
            }else{
                this.error = undefined;
                this.students = result;
                
            }
        })
        .catch(error => {
            this.error = error;
            this.students = undefined;
        })
    }  

    }
}