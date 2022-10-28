public class Greetings {
    public string language = '';

    public string GreetingHello(integer n){
        string greet = '';
        if (language == 'Hindi') {
            greet = 'Namaste';
        }else if (language == 'Turkish') {
            greet = 'Merheba';
        }else if (language == 'French') {
            greet = 'Bonjour';
        }
        else {
            greet = 'Hello';
        }
        string finalReturnString = greet;
        for (Integer i = 1; i < n; i++) {
            finalReturnString = finalReturnString + ' ' + greet;
        }

        return finalReturnString;
    }
    
    public string GreetingHello2(){
        string greet = '';
        switch on language {
            when  'Hindi' {
                greet = 'Namaste Namaste';
            }
            when else {
                greet = 'Hello hello';
                
            }
        }

        return greet;
    }

}
    
