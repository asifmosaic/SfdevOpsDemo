public with sharing class vftest {

    public vftest(ApexPages.StandardController controller) {

    }


    public string message {get; set; }

    public PageReference submit() {
    
        system.debug('Message' +message);
        
        return null;
    
    }

}