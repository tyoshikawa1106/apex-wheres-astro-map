public with sharing class WheresAstroMapController {
    
    public Account trailblazers {get; set;}
    
    public WheresAstroMapController() {
        this.trailblazers = WheresAstroMapController.getTrailblazers();
    }
    
    @RemoteAction
    public static Account getTrailblazers() {
        List<Account> accounts = [
            SELECT
                 Name
                ,(SELECT Id, Name, LastName, FirstName, Astro_Location__Latitude__s, Astro_Location__Longitude__s FROM Contacts ORDER BY Name ASC)
            FROM
                Account
            WHERE
                Name = 'Trailblazers'
            ORDER BY Name ASC
            LIMIT 1
        ];
        
        return accounts.isEmpty() ? new Account() : accounts[0];
    }
}