import { LightningElement, wire } from 'lwc';

import getTopOpps from '@salesforce/apex/OpportunityController.getTopOpps';

const COLUMNS =[
    {label: "Opportunity Name", fieldName: "Name", type: "text"},
    {label: "Type", fieldName: "Type", type: "text"},
    {label: "Stage Name", fieldName: "StageName", type: "text"},
    {label: "Amount", fieldName: "Amount", type: "currency"},
]

export default class WireOpportunity extends LightningElement {

    opps;
    columns = COLUMNS;
    
    @wire(getTopOpps)
    oppHandler({data, error}){
        if (data){
            this.opps = data;    
        }
        if (error) {
            console.error(error);
            
        }

    }

}