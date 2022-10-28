import { LightningElement } from 'lwc';

export default class QuerySelectorsDemo extends LightningElement {
    
    cities = ["New York", "Algiers", "Dubai", "Paris", "California"];
    
    clickHandler(){
        //querySelector demo - h1
        const h1elem = this.template.querySelector('h1');
        console.log(h1elem.innerText);
        h1elem.style.color = "yellow";
        h1elem.style.border = "2px solid red";
        h1elem.style.backgroundColor = "red";

        //querySelector demo - p
        const pelem = this.template.querySelector("p");
        console.log(pelem);
        pelem.style.backgroundColor= "pink";
        pelem.style.color = "bleu";
        
        
        //querySelectorAll demo
        const divelem = this.template.querySelectorAll('div.child');
        divelem.forEach(item => {
            console.log(item.innerText);
            item.style.color = "white";
            item.style.backgroundColor = "green";
            item.style.border = "2px solid blue";
            item.setAttribute("class", "slds-align_absolute-center");
        })
        
    }
}