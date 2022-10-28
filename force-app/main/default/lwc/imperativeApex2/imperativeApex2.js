import searchContacts from '@salesforce/apex/ContactController.searchContacts';
import { LightningElement } from 'lwc';

export default class ImperativeApex2 extends LightningElement {
    contacts; 
    error = "Start inputing some keywords in order to find matching contacts";
    keyword;

    searchHandler(event){
        this.keyword = event.target.value;
        if (this.keyword.length > 0) {
        searchContacts({searchKey: this.keyword})
        .then(result => {
            this.contacts = result;
            this.error =undefined;
        })
        .catch(error => {
            this.error = error;
            this.contacts = undefined;
        })
    }
    else{
        this.contacts = undefined;
        this.error = "Start inputing some keywords in order to find matching contacts";
    }
        
    }


}