trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {

    List<BatchLeadConvertErrors__c> err = new List<BatchLeadConvertErrors__c>();
    
    for(BatchApexErrorEvent e: Trigger.new) {
        BatchLeadConvertErrors__c b = new BatchLeadConvertErrors__c();
        b.AsyncApexJobId__c = e.AsyncApexJobId;
        b.Records__c = e.JobScope;
        b.StackTrace__c =  e.StackTrace;
        
        err.add(b);
    }
    
    insert err;
    
}