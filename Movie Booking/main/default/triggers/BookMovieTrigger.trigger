trigger BookMovieTrigger on Booking__c (before update, before delete) {
    
    if(Trigger.isDelete || Trigger.isUpdate){
        if(trigger.isBefore){
        	for(Booking__c book: Trigger.new){
        if(book.Status__c == 'Booked'){
            book.addError('Cannot perform actions on locked records');
        }    
        }
    	
    }    
    }
    
}