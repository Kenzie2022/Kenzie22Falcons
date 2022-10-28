public  class setDemo2 {
    public static Set<String> capitalizeSetString(Set<String> stringSet){
        Set<String> capsSet = new Set<String>();
        
        for(string eachStr : stringSet){
            string tempsstr = eachStr.toUpperCase();
            capsSet.add(tempsstr);
        }

       return capsSet;
    }
    
}
