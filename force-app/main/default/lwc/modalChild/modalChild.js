import { LightningElement } from 'lwc';

export default class ModalChild extends LightningElement {
    closeHandler(){
        console.log("I am going to create to custom event and dispatch it!");
        //const closeEvent = new CustomEvent("close", {detail: "modal is closed"});
        const con = {
            firstName: "Imane",
            lastName: "Anani",
            company: "AW Computing"
        };
        const closeEvent = new CustomEvent("close", {detail: con});
        this.dispatchEvent(closeEvent);

    }
}
