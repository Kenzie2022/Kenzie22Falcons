import { LightningElement } from 'lwc';

export default class SaturdayUseCase extends LightningElement {
    username = 'Kenzie';
    handleChange(event){
    this.username = event.target.value;
    }
    value;
    get options(){
        return[
            {label:'Dentist', value:'Dentist'},
            {label:'Doctor', value:'Doctor'},
            {label:'Architect', value:'Architect'}
        ];
    }
    handleChange(event){
        console.log(event);
        this.value= event.detail.value;
    }

}