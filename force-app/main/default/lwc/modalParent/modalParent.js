import { LightningElement } from 'lwc';

export default class ModalParent extends LightningElement {
    showModal = false;
    clickHandler(){
        this.showModal = true;    
    }
    modalHandler(event){
       this.showModal = false;
       console.log(event);
       this.message= event.detail;
    }
}