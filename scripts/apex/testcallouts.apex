
HttpResponse resp = RestCallouts.getAnimals();
system.debug(resp);


HttpResponse output=RestCallouts.getUsers();
system.debug(output);

HttpResponse output=RestCallouts2.getBlogs();
system.debug(output);

HttpResponse output=RestCallouts2.getUsers();
system.debug(output);

HttpResponse output = RestCallouts3.postCallouts3();
system.debug(output);

HttpResponse resp = RestCallouts3.postContacts();
system.debug(resp);

//TEST PArks Callout
string[] parks = SoapCallouts.getPaksCountry('United States');
system,.debug(parks);

Double output = SoapCallouts.getMultiply(12, 10);
SYSTEM.debug(output);

Double output1 = SoapCallouts.getSubtract(15, 50);
system.debug(output1);

HttpResponse output3 =  IntegrationCallouts.getCovidInfo();
system.debug(output3);

system.debug(UserInfo.getSessionId().subString(1));