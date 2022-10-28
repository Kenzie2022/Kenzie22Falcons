import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';

export default class GetPicklistValuesStage extends LightningElement {

    oppRtId;
    stageOptions =[];
    selectedStage;


    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
    objectInfoHandler({data, error}){
        if (data) {
            this.oppRtId= data.defaultRecordTypeId;         
        }
        if (error) {
            console.log(error);        
        }
    }

    @wire(getPicklistValues, {fieldApiName: STAGE_FIELD, recordTypeId: '$oppRtId'})
    picklistHandler({data, error}){
        if (data) {
            this.stageOptions = data.values;        
        }
        if (error) {
            console.log(error);
            
        }

    }

}