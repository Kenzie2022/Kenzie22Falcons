import getOppsByStage from '@salesforce/apex/OpportunityController.getOppsByStage';
import { LightningElement, wire } from 'lwc';

const COLUMNS = [
    {label: "Opportunity Name", fieldName: "Name", type: "text"},
    {label: "Opportunity Type", fieldName: "Type", type: "text"},
    {label: "Stage Name", fieldName: "StageName", type: "text"},
    {label: "Amount", fieldName: "Amount", type: "currency"},
]

export default class WireOpp2 extends LightningElement {
    
    stageType = "Closed Won";
    opps ;
    columns = COLUMNS;

    @wire(getOppsByStage, {stageName: "$stageType"})
    recordHandler({data, error}){
        if (data) {
            this.opps = data;
    
        }
        if(error){
            console.error(error);
        }

    }
    get total(){
        if (this.opps) {
            return this.opps.length;
            
        }
        else{
            return 0;
        }
}
}