public class DmlDemo3 {
   public static void dmlMultipleRecordUpdate_right() {
    
    
    list<account> updateAccounts = new list<account>();

    List<Account> listAccount = [select name from account];
    for (account eachAccount : listAccount){
        eachAccount.name = 'via B.0';
        updateAccounts.add(eachAccount);
    }
    if (!updateAccounts.isEmpty()){
update updateAccounts;
    }else{
        system.debug('NO ACCOUNTS TO UPDATE.');
    }
   }
}
