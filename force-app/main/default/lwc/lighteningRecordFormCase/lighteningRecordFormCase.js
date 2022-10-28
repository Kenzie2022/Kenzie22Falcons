import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CASE_OBJECT from '@salesforce/schema/Case';


export default class LighteningRecordFormCase extends LightningElement {
   recordId = "5003t00001dVtJPAA0";
   objectName =CASE_OBJECT;
   layouttype = "Compact";

   successHandler(){
    const successToast = new ShowToastEvent({
        title :'Success!!',
        message : 'the case record has been created successfully',
        variant :'success'
    });
    this.dispatchEvent(successToast);

}

}