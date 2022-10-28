import { LightningElement, track } from 'lwc';

export default class trackProperty extends LightningElement {
    @track location = {
        city: "Houston",
        country: "United States",
        postalCode: "50033"
    };

    cityHandler(event) {
        this.location.city = event.target.value;
    }
}