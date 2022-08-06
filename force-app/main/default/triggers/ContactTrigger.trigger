trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    system.debug('trigger.isBefore =' + trigger.isBefore);
    system.debug('trigger.isAfter =' + trigger.isAfter);
    system.debug('trigger.isInsert =' + trigger.isInsert);
    system.debug('trigger.isUpdate =' + trigger.isUpdate);



    if(Trigger.isBefore){
system.debug('Before Trigger');
if(Trigger.isInsert){
    system.debug('Before Insert Trigger');
}
if(trigger.isUpdate){
    system.debug('Before update Trigger');
}
    }

    if(Trigger.isAfter){
system.debug('After Trigger');
if(Trigger.isInsert){
    system.debug('After Insert Trigger');
}
if(trigger.isUpdate){
    system.debug('After update Trigger');
}

}
}