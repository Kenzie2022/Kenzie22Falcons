Order_Event__e oev = new Order_Event__e();
oev.Has_Shipped__c = true;
oev.Order_Name__c = '17ABC';
Eventbus.publish(oev);