public class StringDemoClass {
    public void StringMethod1(){
        String sessionDescription = ' learning string method in apex language';
        system.debug('sessionDescription = ' + sessionDescription);
        

        Integer lengthOfStr = sessionDescription.length();
        system.debug('lenght of string is =' + lengthOfStr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug ( 'in caps = ' + sessionDescriptionInCaps);

        string a = 'apex';
        Boolean containsApex = sessionDescription.contains('apex');
        system.debug('has apex'  + containsApex);

        Boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contains salesforce ?' + containsSalesforce);

        Boolean containsApex2 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('contains APEX ?' + containsApex2);




    }
}
