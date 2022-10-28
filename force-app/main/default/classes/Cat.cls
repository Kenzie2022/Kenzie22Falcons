public class Cat {
    public String Name = '';
    public string Color = '';
    public Cat(){
        system.debug('Constructor Called ');
    }
    public Cat(string nm, string clr){
        name = nm;
        color = clr;
        sleeping();
    }
    public void sleeping (){
        system.debug(name + ' is sleeping ');
    }

}
