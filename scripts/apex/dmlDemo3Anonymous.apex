DmlDemo3.dmlMultipleRecordUpdate_right();
//List<account> delateAccounts = [select id from account where name like'%Soft%'];
delete [select id from account where name like '%Soft%'];