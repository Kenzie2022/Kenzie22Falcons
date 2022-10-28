import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi'
import { LightningElement, wire } from 'lwc';

import ACCOUNT_FIELD from '@salesforce/schema/Case.Account.Name';
import CONTACT_FIELD from '@salesforce/schema/Case.Contact.Name';
import CASE_NUMBER_FIELD from '@salesforce/schema/Case.CaseNumber';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';



export default class GetRecordCase extends LightningElement {

    recordId = "5003t00001dVtJZAA0";
    cs;

    @wire(getRecord, {recordId: "$recordId", layoutTypes: ['Full'], modes: ['View']})
    recordHandler({data, error}){
        if (data) {
            this.cs = data;
            console.log(data);
            
        }
        if(error){
            console.log(error);
        }
    }
    get account(){
        return getFieldValue(this.cs, ACCOUNT_FIELD);
    }
    get contact(){
        return getFieldValue(this.cs, CONTACT_FIELD);
    }
    get caseNumber(){
        return getFieldValue(this.cs, CASE_NUMBER_FIELD);
    }
    get subject(){
        return getFieldValue(this.cs, SUBJECT_FIELD);
    }

}