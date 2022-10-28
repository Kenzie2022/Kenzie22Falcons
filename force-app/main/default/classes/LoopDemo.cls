public class LoopDemo {
  public void printintwhile(){
    Integer count = 1;
    while(count<= 25){
        system.debug(count);
        count++;
    }  
  }

  public void print_N_numbers(integer n){
    for( integer i=0; i<n; i++){
        system.debug(i);
    }
  }
  public void print_N_Odd_numbers(integer startInt, Integer endInt){
    for(integer i = startInt; i <= endInt; i++){
        Integer mod= Math.mod(i, 2);
        if (mod ==1) system.debug(i);

    }

  }
}
