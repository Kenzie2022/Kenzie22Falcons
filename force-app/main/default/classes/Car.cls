public  class Car {
  public string carName = '';
  public string carColor = '';
  integer maxSpeedKmPerHour= 150;
  public void switchOn(){
    system.debug(' Starting the car');
  }
  public void drive(){
    system.debug('driving ' + carName);
  }
  public void  driveAtMaxSpeed(){
    string drivingDescription = ' driving ' + carName + ' at ' + maxSpeedKmPerHour + ' km/h';
    system.debug(drivingDescription);

  }

}
