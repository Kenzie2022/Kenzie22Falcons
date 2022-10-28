import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {
    showContent = true;
    dataIfTrue = "This will be visible is showContent is true";
    dataIfFalse = "This will be visibe if showContent is false";
    
}
//Boolean