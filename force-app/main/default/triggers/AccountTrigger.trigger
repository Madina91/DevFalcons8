trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    system.debug('====Trigger START====');
    
    if(trigger.isBefore && trigger.isInsert){
        system.debug('Before insert trigger called.');
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('After insert trigger called.');
    }
    
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('Before update trigger called.');
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('After update trigger called.');
    }
    system.debug('====Trigger END====');
    
    /*
    //this should print only in BEFORE.
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called');
    }
    if(Trigger.isAfter){
        //this should print only in AFTER.
        system.debug('After INSERT trigger called');
    }

    */
}







