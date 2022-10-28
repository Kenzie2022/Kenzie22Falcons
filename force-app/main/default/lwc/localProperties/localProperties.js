import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name; //undefined
    fullname = 'My name is Imane Anani';
    age = 31;
    location = {
        city: 'New York',
        country:'USA',
        postalCode:'11102'
    };
    fruits = ['Banana', 'Apple', 'Grape'];





}