public  class PrimitiveDataTypeDemo3 {
  public void printNewDate(){
    system.debug('create new Date instance');
    
    Date newDate = Date.newInstance(1993, 1, 14);
    system.debug('new date is ' + newDate);
    Date newDate2 = Date.newInstance(2022, 5, 25);
    system.debug('new date 2 is ' + newDate2);
    Date todayDate = Date.today();
    system.debug('today\'s date is  ' + todayDate);
}
  public void printNewTime(){
    Time mytime = Time.newInstance (18, 20, 2, 30);
    Time meTime = Time.newInstance(13, 00, 30, 30);
    system.debug('my Time' + mytime);
    system.debug('me Time' + meTime);
}
  public void printNewDateTime(){
    Date newDate = date.today();
    Time newTime = Time.newInstance(9, 9, 0, 0);
    Datetime dt1 = datetime.newInstance(newDate, newTime);
    system.debug(' Date Time is '+ dt1);
    
    Datetime dt2 = Datetime.newInstance(2022, 07, 12);
    system.debug('Date Time is ' +  dt2);

    Datetime dt3 = Datetime.newInstance(2021, 10, 9, 10, 10, 10);
    system.debug('Date Time is ' + dt3);

    long longNumber = 0L;
    Datetime dt4_1 = Datetime.newInstance(longNumber);
    system.debug('dt4 =' + dt4_1);

    Datetime dt5 = Datetime.now();
    system.debug('Date Time is ' + dt5);

    Datetime dt6 = Datetime.newInstanceGMT(2022, 2, 22, 2, 22, 22);
    system.debug(' Date Time is ' + dt6);
}
}
