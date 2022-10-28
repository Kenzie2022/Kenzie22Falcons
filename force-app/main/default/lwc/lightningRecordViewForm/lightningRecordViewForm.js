import { LightningElement } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import RATING_FIELD from '@salesforce/schema/Account.Rating';


export default class LightningRecordViewForm extends LightningElement {
    recordId ="0013t00002Wjp9OAAR";
    objectName = ACCOUNT_OBJECT;
    fields = {
        name: NAME_FIELD,
        type: TYPE_FIELD,
        indstry: INDUSTRY_FIELD,
        revenue: REVENUE_FIELD,
        phone: PHONE_FIELD,
        rating: RATING_FIELD

    };
}