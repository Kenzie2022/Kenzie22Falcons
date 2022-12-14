import { getObjectInfo, getPicklistValuesByRecordType} from 'lightning/uiObjectInfoApi';
import { LightningElement, wire} from 'lwc';

import LEAD_OBJECT from '@salesforce/schema/Lead';


export default class GetPicklistValuesLead extends LightningElement {

    leadRtId;
    industryOptions = [];
    ratingOptions = [];
    statusOptions = [];
    leadSourceOptions = [];
    selectedIndustry;
    selectedStatus;
    selectedLeadSource;
    selectedRating;



    @wire(getObjectInfo, {objectApiName: LEAD_OBJECT})
    objectInfoHandler({data, error}){
        if (data) {
            console.log(data);
            this.leadRtId = data.defaultRecordTypeId;    
        }
        if (error) {
            console.log(error);    
        }
    }

    @wire(getPicklistValuesByRecordType, {objectApiName: LEAD_OBJECT, recordTypeId:'$leadRtId'})
    picklistHandler({data, error}){
        if (data) {
            console.log(data);
            this.industryOptions = data.picklistFieldValues.Industry.values; 
            this.ratingOptions= data.picklistFieldValues.Rating.values;
            this.statusOptions = data.picklistFieldValues.Status.values;
            this.leadSourceOptions = data.picklistFieldValues.LeadSource.values;

        }
        if (error) {
            console.log(error);
            
        }
    }
    changeHandler(event){
        if (event.target.lable === "Select Industry...") {
            this.selectedIndustry= event.target.value;
        }
        else if(event.target.label=== "Select Rating..."){
            this.selectedRating = event.target.value;

        }else if(event.target.label === "Select Lead Source..."){
            this.selectedLeadSource = event.target.value;

        }else{
            this.selectedStatus = event.target.value;
        }
    }


    
} 