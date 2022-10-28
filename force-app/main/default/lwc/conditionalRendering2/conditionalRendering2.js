import { LightningElement } from 'lwc';

export default class ConditionalRendering2 extends LightningElement {
   showData =false;
    details= {
        fullName :" Quuens",
        place:"New York"
    };
    clickHandler(){
        this.showData = !this.showData;
    }
}
