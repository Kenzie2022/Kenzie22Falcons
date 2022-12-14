import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class DeleteRecordCase extends LightningElement {
    recordId;
    changeHandler(event){
        this.recordId = event.target.value;
        
    }
    deleteRec(){
        const recordId = this.recordId;
        deleteRecord(recordId)
            .then(result => {
                console.log(result);
                //const successToast = new ShowToastEvent({
                   // title: "Success",
                    //message: "Record has been deleted",
                    //variant: "warning"
                //});
                this.displayToast("Success", "Record has been deleted!", "Warning");

            })
            .catch(error => {
                console.error(error);
                //const errorToast = new ShowToastEvent({
                    //title: "Error",
                    //message: error.body.messaeg,
                    //variant: "error"
                //});
                this.displayToast("Error", error.body.message, "error");
            })
         
    }
    displayToast(title, message, variant) {
        const toast = new ShowToastEvent(title, message, variant);
        this.dispatchEvent(toast);

    }


}