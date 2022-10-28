public with sharing class RestCallouts2 {
//https://mockyard.herokuapp.com/blogs/2
      public static HttpResponse getBlogs(){
        //1: Prepare HttpRequest & wrap the necessary information in it
        HttpRequest request  = new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/blogs/2');
        request.setMethod('GET');

        //2: Preapre internet
        Http http = new Http();
        
        //3: Send the HttpRequest over the internet to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4: Process the HttpResponse
        if(response.getStatusCode() == 200){
            string jsonString = response.getBody();
            system.debug(jsonString);

            list<BlogWrapper> blogWrappers = (List<Blogwrapper>)JSON.deserialize(jsonString, list<BlogWrapper>.class);
            list<Blog__c>blogs = new List<Blog__c>();
            for(BlogWrapper bw : blogWrappers){
                Blog__c blog = new Blog__c();
                blog.Topic__c = bw.topic;
                blog.Title__c = bw.title;
                blog.Author__c = bw.author;
                blog.Body__c = bw.body;
                blogs.add(blog);

            }
            try{
                if(!blogs.isEmpty()){
                insert blogs;
                }
            } catch(Exception ex) {
                //Create a log record
                CommonUtility.createLog('RestCallouts - getProduct', 'Integration Apex', ex.getStackTraceString(), 'Exception', 
                ex.getTypeName(), ex.getMessage(), '');

            }
        }
        return response;
}

//https://mockyard.herokuapp.com/users/10
      public static HttpResponse getUsers(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://mockyard.herokuapp.com/users/10');
        request.setMethod('GET');
        
        Http http = new Http();
        
        HttpResponse response = http.send(request);

        if(response.getStatusCode()==200){
            String jsonString = response.getBody();
            system.debug(jsonString);

            list<UserWrapper> UserWrappers = (list<UserWrapper>)JSON.deserialize(jsonString, list<UserWrapper>.class);
            list<User__c> users=new list<User__c>();
            for(UserWrapper uw : UserWrappers){
                User__c user = new User__c();
                user.Name__c=uw.name;
                user.Email__c=uw.email;
                user.Gender__c=uw.gender;
                user.Image__c=uw.image;
                user.Phone__c=uw.phone;
                user.Country__c=uw.country;
                user.City__c=uw.city;
                user.Age__c=uw.age;
                users.add(user);
            }
            try{
                if(!users.isEmpty()){
                insert users;
                }
            } catch(Exception ex) {
                //Create a log record
                CommonUtility.createLog('RestCallouts - getProduct', 'Integration Apex', ex.getStackTraceString(), 'Exception', 
                ex.getTypeName(), ex.getMessage(), '');
            }
            
        }
      return response;
}
}