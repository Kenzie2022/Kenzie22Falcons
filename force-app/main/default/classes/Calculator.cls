public class Calculator {
    public void welcomeMessage(){
        system.debug('Welcome to apex calc');
    }
    public void printNewMessage(string msg){
        system.debug(msg);
    }
    public void add(Integer a, Integer b){
        Integer sum = a+b;
        system.debug(sum);
    }
}
