public class DmlDemo {
public static void dmlInsertDemo_stndObj() {
   
    Account acc = new account();
    acc.Name = 'SoftInnovas';
    insert acc;
    system.debug(acc);
}
public static void dmlInsertDemo_cstmObj() {
    Salesforce_project__c sp = new salesforce_project__c();
    sp.project_name__c = 'Teach DML to falcons';
    sp.description__c = 'All 40% are great learners';
    insert sp;
    system.debug(sp);
}
}
