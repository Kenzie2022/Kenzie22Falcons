import { LightningElement } from 'lwc';

export default class CreateRecordLead extends LightningElement {

    formdata = {};

    changeHandler(event){
        // const name = event.target.name;
        // const value = event.target.value;
        const {name, value} = event.target;
        this.formdata[name] = value; 

        
        

    }
    


}