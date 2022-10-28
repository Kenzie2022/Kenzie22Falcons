import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    name ='Salim';
    handleChange(event){
        this.name = event.target.value;

    }
}