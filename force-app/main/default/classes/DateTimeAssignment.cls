public class DateTimeAssignment {
    public void diffoDate(){
        Date varTomorowDate = Date.newInstance(2022, 07, 14);
        Date varTodaysDate  = Date.newInstance(2022, 07, 13);
        Integer diffDate    = varTomorowDate.daysBetween(varTodaysDate);
        system.debug('Difference between dates is '  +  diffDate);
 }

    public void Timecheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2022, 07, 14, 07, 00, 00);
        Datetime var10DaysDateTime   = Datetime.newInstanceGmt(2022, 07, 24, 09, 00, 00);
        Long varDateTimeLong         = 12339874361L;
        Datetime newDateTime         = varTomorrowDatetime.addDays(7);
        Datetime newDateTime2        = var10DaysDateTime.addDays(10);
       
        system.debug('This is the tomorow date '  + varTomorrowDatetime);
        system.debug('This is the 10 days later ' + var10DaysDateTime);
        system.debug('This is the long date'  + varDateTimeLong);
        system.debug('This is ths 7 days added ' + newDateTime);
        system.debug('This is the 10 days added'  + newDateTime2);
        

 }
   
}
