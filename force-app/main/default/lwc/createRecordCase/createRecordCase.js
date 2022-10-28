import { LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import {createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CreateRecordCase extends LightningElement {
    formadata = {};

    //* Target is to prepare an object with the data
    //* formdata = {
    //*      FirstName: "Bala",
    //*      LastName: "Test",
    //*      Title: "Salesforce Developer",
    //*      Email: "test@test.com"
    //* }



    changeHandler(event){
        const{name, value} = event.target;
        //const name = event.target.name;
        //const value = event.target.value;
        this.formadata[name] = value;

    }
    saveContact(){
        const recordInput = {
            apiName: CONTACT_OBJECT.objectApiName,
            fields: this.formadata
        };
        createRecord(recordInput)
        .then(result => {
            console.log(result);
            //show success message 
            const successToast = new ShowToastEvent({
                TITLE: "Success",
                message: "Contact has been saved succefully",
                variant: "success"
            });
            this.dispatchEvent(successToast);
            //reset the form
            this.template.querySelector('form. contactform').reset();
            this.formadata = {};
            
        })
        .catch(error => {
            console.error(error);
        })

    }

}