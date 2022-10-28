import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import PHONE_FIELD from '@salesforce/schema/Contact.MobilePhone';
import DEPARTMENT_FIELD from '@salesforce/schema/Contact.Department';

const Fields = [FIRSTNAME_FIELD, LASTNAME_FIELD, TITLE_FIELD, EMAIL_FIELD, PHONE_FIELD, DEPARTMENT_FIELD]

export default class GetRecordContact extends LightningElement {

    recordId = "0033t000043YvwnAAC";
    contact;
    //title;
    //email; 

    @wire(getRecord, {recordId: "$recordId", fields: Fields})
    recordHandler({data, error}){
        if (data) {
            console.log(data);
            this.contact = data;
            // way 1 this.title = data.fields.Title.value;
            // way 3 this.email = getFieldValue(data, EMAIL_FIELD);
        
    
        }
        if(error){
            console.error(error);
        }
    }
    get fullName(){
        return getFieldValue(this.contact, FIRSTNAME_FIELD) + " "  +getFieldValue(this.contact, LASTNAME_FIELD);
    }
    get title(){
        return getFieldValue(this.contact, TITLE_FIELD);
    }
    get email(){
        return getFieldValue(this.contact, EMAIL_FIELD);
    }
    get phone(){
        return getFieldValue(this.contact, PHONE_FIELD);
    }
    get department(){
        return  getFieldValue(this.contact, DEPARTMENT_FIELD);
    }


}