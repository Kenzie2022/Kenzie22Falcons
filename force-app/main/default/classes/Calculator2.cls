public class Calculator2{
    public static string printAndReturnMessage(string msg) {
        system.debug(' in the method');
        system.debug('parametre value is ' + msg);
        string r = msg + '...OK  Cool';
        return r;
    }
    public static integer add(integer num1, integer num2) {
        integer sum = num1 +num2;
        return sum;
    }
    public static integer add(integer num1, integer num2, integer num3) {
        integer sum = num1 + num2+num3;
        return sum;
        
    }
}
