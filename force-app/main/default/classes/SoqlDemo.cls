public class SoqlDemo {
    public static void accountSOQL_1() {
        List<Account> listAcc = [Select Id, Name, Active__c from account where name like '%A%'];
        system.debug('listAcc =' + listAcc );
        system.debug('size of listAcc = ' + listAcc.size());

        Account acc = [select name, createddate from account order by CreatedDate Desc limit 1];
        system.debug('list created account record = ' + acc);
    }
    public static void accountSOQL_2() {
        Account acc = [select name, createddate, phone, AccountNumber from account order by CreatedDate Desc limit 1];
        system.debug ('last created account record = '+ acc);

        string accountName = acc.Name;
        string accountPhone = acc.Phone;
        system.debug('acount name is' + accountName + 'phone is ' + accountPhone);
        system.debug('account number is'  + acc.AccountNumber);
        
    }
    public static void accountSOQL_3() {
        List<account> listAcc = [Select name, phone,accountNumber from account order by CreatedDate DESC];
        for (Account eachAccount : listAcc) {
            string accountName = eachAccount.Name;
        string accountPhone = eachAccount.Phone;
        system.debug('acount name is ' + accountName + 'phone is ' + accountPhone);
        system.debug('account number is '  + eachAccount.AccountNumber);
            
        }
    }
    public static void accountSOQL_Filter(string accNameFilter) {
        List<Account> listAcc = [select name, phone from account where name = :accNameFilter];
        system.debug('filter accounts are ' + listAcc);
        
    }
}
