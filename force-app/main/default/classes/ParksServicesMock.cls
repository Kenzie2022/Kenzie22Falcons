public with sharing class ParksServicesMock implements WebServiceMock {
    public void doInvoke(Object a, Object b, Map<String,Object> c, String d, String e, String f, String g, String h, String i){
        ParksServices.byCountryResponse response_x = new ParksServices.byCountryResponse();
        response_x.return_x = new list<string>['Park1', 'Park2', 'Park3', 'Park4'];
        response.put('return_x', return_x);
    }
}
