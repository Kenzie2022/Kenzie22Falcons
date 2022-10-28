import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import OPPORTUNITYNAME_FIELD from '@salesforce/schema/Opportunity.Name';
import TYPE_FIELD from '@salesforce/schema/Opportunity.Type';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';


export default class LighteningRecordFormOpportunity extends LightningElement {
    recordId = '0063t000014RfznAAC';
    objectName = OPPORTUNITY_OBJECT;
    fields = [NAME_FIELD, OPPORTUNITYNAME_FIELD, TYPE_FIELD, STAGENAME_FIELD, AMOUNT_FIELD, CLOSEDATE_FIELD];

    successHandler(){
        const successToast = new ShowToastEvent({
            title : "Success youhouu !!",
            message : "The Opportunity has been created successfully",
            variante : "success"

        })
        this.dispatchEvent(successToast);
    }

    
}



