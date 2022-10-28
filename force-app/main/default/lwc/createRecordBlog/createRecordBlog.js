import { LightningElement } from 'lwc';

import BLOG_OBJECT from '@salesforce/schema/Blog__c';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class CreateRecordBlog extends LightningElement {
    formdata = {};
    changeHandler(event){
        const{name, value} = event.target;
        this.formdata[name] = value;
    }
    saveBlog(){

        if (this.formdata.Author__c == undefined || this.formdata.Author__c == NULL) {
            this.formdata.Author__c = "Anonymous User";
            
        }




        const recordInput  = {
            apiName: BLOG_OBJECT.objectApiName,
            fields: this.formdata
        };
        createRecord(recordInput)
            .then(result => {
                console.log(result);
                const successToast = new ShowToastEvent({
                    title: "Success",
                    message: " Your Blog has been saved successfully",
                    variant: "success"

                });
                this.dispatchEvent(successToast);
                this.resetBlog();
            })    

    
            .catch(error => {
                console.error(error);
            })

        }
        resetBlog(){
            this.formdata = {};
            this.template.querySelector('form.blogform').reset();
        }
    }

