public  class DateTimeMethodsDemo2 {
    public void printSubscrptionEndDate(){
       Date subscriptionStartDate = Date.today();
       Date subscriptionEndDate   = subscriptionStartDate.addDays(1000);
       system.debug('End of Subscrption is '  + subscriptionEndDate);
       Integer endDateYear = subscriptionEndDate.year();
       system.debug('End year of Subscription is ' + endDateYear);
       Integer endDateMonth = subscriptionEndDate.month();
       system.debug('Last Month of Subscription is ' + endDateMonth);
    }
    public void prinOfferEndDateTime(){
        Datetime offerStartDate = Datetime.now();
        Datetime OfferEndDate = offerStartDate.addHours(51);
        system.debug('End Date Time of Offer is ' + OfferEndDate);
        
        Date OfferEndDate1 = OfferEndDate.date();
        system.debug('Offer end date is ' + OfferEndDate1);
    }    

}
