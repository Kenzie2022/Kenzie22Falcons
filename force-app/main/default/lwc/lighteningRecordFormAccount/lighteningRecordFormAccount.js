import { LightningElement } from 'lwc';
import { ShowToastEvent} from "lightning/platformShowToastEvent";

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import RATING_FIELD from '@salesforce/schema/Account.Rating';

export default class LighteningRecordFormAccount extends LightningElement {
    recordId='0013t00002Wjp9KAAR';
    objectName = ACCOUNT_OBJECT;
    fields=[NAME_FIELD, TYPE_FIELD, INDUSTRY_FIELD, REVENUE_FIELD, RATING_FIELD];
    
    successHandler(){
        const successToast = new ShowToastEvent({
            title :'Success!!',
            message : 'the account record has been savec successfully',
            variant :'success'
        });
        this.dispatchEvent(successToast);

    }


}