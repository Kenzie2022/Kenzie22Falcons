import getAllBlogs from '@salesforce/apex/BlogController.getAllBlogs';
import { LightningElement, wire } from 'lwc';

const COLUMNS = [
    {label: "Blog#",
    fieldName: "nameUrl",
    type: "url",
    typeAttributes: {
        label: {fieldName: "Name"},
        
    }
    },
    {label: "Author",
    fieldName: "Author__c",
    type: "text"
    }, 
    {label: "Topic Name",
    fieldName: "Topic__c",
    type: "text"
    }, 
    {label: "Title",
    fieldName: "Title__c",
    type: "text"
    }, 
    {label: "Content",
    fieldName: "Body__c",
    type: "textarea"
    } 
];

export default class ImperativeApex extends LightningElement {

    blogs;
    error;
    columns = COLUMNS;

    fetchBlogs(){
        getAllBlogs()
            .then(result =>{
                console.log(result);
                //this.blogs = result;
                let nameUrl;
                this.blogs = result.map(blog => {
                    nameUrl = "/" + blogs.Id;
                    return{...blog, nameUrl}

                });
                this.error = undefined;
            })
            .catch(error =>{
                console.error(error);
                this.error = error;
                this.blogs = undefined;
            })

    }

}