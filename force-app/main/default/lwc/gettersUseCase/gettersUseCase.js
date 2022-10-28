import { LightningElement } from 'lwc';

export default class GettersUseCase extends LightningElement {
    fruits =['Orange', 'Kiwi', 'Apple','Banana'];
    num1 = 30;
    num2= 20;
    get firsFruit(){
        return this.fruits[0];
    }
    get sum(){
        return this.num1+this.num2;
    }
}