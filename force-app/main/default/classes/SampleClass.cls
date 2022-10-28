public class SampleClass {
    public static string SampleStaticString;

    public string SampleString;
    
    public static void SampleStaticMethod(){
        system.debug('static method called. Enjoy');
    }
    public void SampleMethod(){
        system.debug('non_static method called from instance.Enjoy');
    }
  
}
