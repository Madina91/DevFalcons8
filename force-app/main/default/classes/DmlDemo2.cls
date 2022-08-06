public class DmlDemo2 {
    public static void dmlUpdateDemo_3() {
        //1. fetch record
        account acc = [select id, name, Site from account where name = 'SoftInnovas' limit 1];
        //2. update account
        acc.Name = 'SoftInnovas Inc.';
        acc.site = 'www.softinnovas.com';
 
        //3. update DML
        update acc;
        system.debug('acc = ' + acc);
    }
    public static void dmlInsertRelatedDemo_1() {
        account acc = [select id, name from account where name = 'SoftInnovas Inc.' limit 1];

        contact c = new Contact();
        c.LastName = 'Biden';
        c.AccountId = acc.Id;
        insert c;
        
    }
    public static void dmlInsertRelatedDemo_2() {
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c ORDER BY CreatedDate DESC limit 1];

        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn DML in Apex';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 7, 29);
        st.Salesforce_Project__c = sp.id;

        insert st;
        system.debug('st =' +st);
        
    }
    public static void dmlInsertMultipleRecord_right1() {
        List<account> listAcc = new list<account>();
        account a = new account();
        a.name = 'bulk acc 1';
        listAcc.add(a);
        account a1 = new account();
        a1.name = 'bulk acc 2';
        listAcc.add(a1);
         
        account a2 = new account();
        a.name = 'bulk acc 3';
        listAcc.add(a2);
        account a3 = new account();
        a.name = 'bulk acc 4';
        listAcc.add(a3);
        insert listAcc;

        
    }
    public static void dmlMultipleRecordInsert_right2() {
        List<account>listAccount = new list<account>();

        for (integer i=0; i<200; i++){
            account acc = new account();
            acc.name = 'SoftInnovas 29 July v'+i;
            acc.AccountNumber = 'Accis - '+1;
            acc.Active__c = 'Yes';
            listAccount.add(acc);

        }
        system.debug('size of list = '  + listAccount.size());
        if (!listAccount.isEmpty()){
            insert listAccount;
        }

        
    }
 }