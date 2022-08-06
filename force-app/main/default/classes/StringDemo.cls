public with sharing class StringDemo {
    public void stringMethod1(){
        string sessionDecription = 'learning string method in apex language.';
        system.debug('systemDescription =' +sessionDecription);
       
    
        integer lengthOfStr = sessionDecription.length();
        system.debug('length of sessionDecription is' + lengthOfStr);
    
    
        string SessionDecriptionInCaps = sessionDecription.toUpperCase();
        system.debug('in caps =' + sessionDecriptionInCaps);
    
        boolean containsSaleforce = sessionDescription.contains('Saleforce');
        system.debug('contains Saleforce?' + containsSaleforce);
    }
    
}
