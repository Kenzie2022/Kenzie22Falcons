public with sharing class RestCallouts {
    public static HttpResponse getAnimals(){
        //1. Prepare HttpRequest & and wrap the necessary information in it
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        Request.setMethod('GET');
        
        //2. Prepare Internet
        Http http = new Http();
        
        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);
        
        //4. Process the HttpResponse
        if(response.getStatusCode()==200){
         system.debug(response.getBody());
        }
        return response;
   }
   public static HttpResponse getUsers(){
      HttpRequest request = new HttpRequest();
      request.setEndpoint('https://gorest.co.in/public/v2/users');
      request.setMethod('GET');

      Http http = new Http();

      HttpResponse response = http.send(request);

      if(response.getStatusCode() == 200){
        system.debug(response.getBody());
      }else{
        CommonUtility.createLog('RestCallouts = getAnimals', 'Integration Apex', ' ', 'Error', 'Callout Exception', 
        response.getStatus(), response.getBody());
      }
      return response;
   }

//https://api.spoonacular.com/recipes/random?apiKey=aa5dc014e4594afb97abecde6c8d60c2

//https://mockyard.herokuapp.com/products/1
   public static HttpResponse getProduct() {
        //1. Prepare HttpRequest & wrap the necessary information in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/products/1');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process the HttpResponse
        if(response.getStatusCode() == 200) {
            String jsonString = response.getBody();
            System.debug(jsonString);
            //convert the json string into our product object
            List<ProductWrapper> productWrappers = (List<ProductWrapper>)JSON.deserialize(jsonString, List<ProductWrapper>.class);
            List<Product__c> products = new List<Product__c>();
            for(ProductWrapper pw : productWrappers) {
                Product__c prod = new Product__c();
                prod.Name = pw.productId;
                prod.Category__c = pw.category;
                prod.Description__c = pw.description;
                prod.Price__c = pw.price;
                prod.Image__c = pw.image;
                prod.Product_Name__c = pw.name;
                products.add(prod);
            }
            try {
                if(!products.isEmpty()) {
                    insert products;
                }
            } catch(Exception ex) {
                //Create a log record
                CommonUtility.createLog('RestCallouts - getProduct', 'Integration Apex', ex.getStackTraceString(), 'Exception', ex.getTypeName(), ex.getMessage(), '');
            }
        }
        return response;
}


}