@isTest
private class HelloWorldTest {
    @isTest
    static void testSayHello() {
        User u = new User(
            Username = 'testuser@example.com',
            Alias = 'testuser',
            Email = 'testuser@example.com',
            EmailEncodingKey = 'UTF-8',
            LastName = 'Test',
            LanguageLocaleKey = 'en_US',
            LocaleSidKey = 'en_US',
            ProfileId = [SELECT Id FROM Profile WHERE Name='Standard User' LIMIT 1].Id,
            TimeZoneSidKey = 'America/Los_Angeles'
        );
        insert u;
        System.runAs(u) {
            String result = HelloWorld.sayHello('Salesforce');
            System.assertEquals('Hello, Salesforce!', result);
        }
    }
}
