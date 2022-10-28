public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidate(){
        system.debug('=====Start=====');
        system.debug('Name is  ' + name + ' , (' + gender +')');
        system.debug('Company name =' + CompanyName);
        system.debug('======END=====');
    }
    public static void printCandidateInfo(){
        system.debug('Company name is ' + CompanyName);
    }
    
}

