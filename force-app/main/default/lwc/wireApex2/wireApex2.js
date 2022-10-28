import { LightningElement, wire } from 'lwc';
import getAccountByIndustry from '@salesforce/apex/AccountController.getAccountByIndustry'

const COLUMNS =[
    {label: "Account Name", fieldName: "Name", type: "text"},
    {label: "Account Type", fieldName: "Type", type: "text"},
    {label: "Industry", fieldName: "Industry", type: "text"},
    {label: "Annual Revenue", fieldName: "AnnualRevenue", type: "currency"},

]

export default class WireApex2 extends LightningElement {

    industryType = "Biotechnology";
    accounts;
    columns= COLUMNS;


    @wire(getAccountByIndustry, {industry: "$industryType"})
    recordHandler({data, error}){
        if (data) {
            this.accounts = data;
            
        }
        if(error){
            console.log(error);
        }

    }
    get total(){
        if (this.accounts) {
            return this.accounts.length;
            
        }
        else{
            return 0;
        }
    }
}