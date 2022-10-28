public class Humans {
   public string FullName(string firstNmae, string lastName){
      string fullName = '';
      fullName = firstNmae.toUpperCase();
      fullName += ' ' + lastName.toUpperCase();
      return fullName;
   }
}
