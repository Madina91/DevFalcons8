public class DatetimeMethodsDemo {
    //calculate your age in MONTHS.
    public void calculateAgeInMonths(){
        //birthdate variable             year month day
        Date birthdate = Date.newInstance(1991, 4, 12);
        //today's date
        Date todayDate = Date.today();
        //calcuate difference
        integer ageInMonths = birthdate.monthsBetween(todayDate);

        system.debug('Madina\'s age in MONTHS ' + ageInMonths );
    }

    //calculate your age in MONTHS.
    public void calculateAgeInDays(){
        //birthdate variable             year month day
        Date birthdate = Date.newInstance(1991, 4, 12);
        //today's date
        Date todayDate = Date.today();
        //calcuate difference
        integer ageInDays = birthdate.daysBetween(todayDate);

        system.debug('Madina\'s age in DAYS ' + ageInDays );
    }
}