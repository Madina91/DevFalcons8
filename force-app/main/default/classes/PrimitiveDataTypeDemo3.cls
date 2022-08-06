public class PrimitiveDataTypeDemo3 {
    public void printNewDate(){
        system.debug('create new date instance');
        //create date below:
        Date newDate = Date.newInstance(1993, 1, 14);
        system.debug('new date is ' + newDate);
 
        Date newDate2 = Date.newInstance(2022, 5, 25);
        system.debug('new date2 is ' + newDate2);
 
        Date todayDate = Date.today();
        system.debug('today\'s date is ' + todayDate);
    }
    public void printNewTime(){
        Time myTime = Time.newInstance(15,08,30,00);
        Time meTime = Time.newInstance(9,00,00,00);
        system.debug('myTime is ' + myTime);
        system.debug('meTime is ' + meTime);

        
    }
    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = Time.newInstance(10,9,5,8);
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('dt1 is ' + dt1);
    

        Datetime dt2 = Datetime.newInstance(2000,02,22);
    system.debug('dt2 is '+ dt2);
    
    Datetime dt3 = Datetime.newInstance(2022,06,26,7,30,33);
    system.debug('dt3 is ' + dt3);

long longnumber = 0L;
Datetime dt4 = Datetime.newInstance(longNumber);
system.debug('dt4 =' + dt4);

Datetime dt6 =Datetime.now();
system.debug('dt6 is' + dt6); 

Datetime dt5 = Datetime.newInstanceGmt(2022,2,22,2,22,22);
system.debug('dt5 is ' + dt5);
}
    }
 