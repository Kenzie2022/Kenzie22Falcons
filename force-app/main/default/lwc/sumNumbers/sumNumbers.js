import { LightningElement } from 'lwc';

export default class SumNumbers extends LightningElement {
    num1; 
    num2;
    total;
    
    handleChange(event){
        if(event.target.name == "number1"){
            this.num1 = event.target.value;
        }
        else{
            this.num2= event.target.value;
        }
        this.total = Number(this.num1)+ Number(this.num2);


    }
} 