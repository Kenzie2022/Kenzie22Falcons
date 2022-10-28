Map<string, integer> shopping = new Map<string, integer>();
shopping.put('Apple', 4);
shopping.put('Orange', 5);
shopping.put('Pinaple', 8);
shopping.put('Strawberry', 3);

Integer sizeMap = shopping.size();
system.debug(sizeMap);

string Salim = 'Apple';
integer quantityIs =shopping.get(Salim);
system.debug(Salim + ' quantity is ' + quantityIs);


string getQuantityof = 'TV';
if (shopping.containskey(getQuantityof)) {
    Integer qs = shopping.get(getQuantityof);
    system.debug(getQuantityof + ' quantity is ' + qs);

}else {
    system.debug(getQuantityof + ' not in syllabs');

}
Set<string> items = shopping.keySet();
system.debug('all items are ' + items);

List<integer> quant = shopping.values();
integer sum = 0;
for (integer q : quant){
    sum += q;
}
system.debug('number of items ' + sum);