import { LightningElement } from 'lwc';

import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import CASE_OBJECT from '@salesforce/schema/Case';
import ACCOUNT_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACT_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';
import STATUS_FIELD from '@salesforce/schema/Case.Status';


export default class CaseEditForm extends LightningElement {
    recordId="5003t00001dVtJmAAK";
    objectName= CASE_OBJECT;
    fields={
        account:ACCOUNT_FIELD, 
        contact: CONTACT_FIELD, 
        subject: SUBJECT_FIELD, description:DESCRIPTION_FIELD, priority:PRIORITY_FIELD, origin:ORIGIN_FIELD, status:STATUS_FIELD};
    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success!!",
            message: "Case record has been updated successfully!",
            variant: "success "
        });
        this.dispatchEvent(successToast);
        
    }
}