@isTest
private class WheresAstroMapControllerTest {

    private static User testAdminUser = new User(Id = UserInfo.getUserId());

    /**
     * コンストラクタ
     */
    static testMethod void WheresAstroMapControllerTest() {
        System.runAs(testAdminUser) {

            Test.startTest();

            WheresAstroMapController cls = new WheresAstroMapController();

            Test.stopTest();

            System.assertEquals(String.isEmpty(cls.trailblazers.Id), true);
        }
    }

    /**
     * getTrailblazers
     */
    static testMethod void getTrailblazersTest() {
        System.runAs(testAdminUser) {

            Test.startTest();

            Account result = WheresAstroMapController.getTrailblazers();

            Test.stopTest();

            System.assertEquals(String.isEmpty(result.Id), true);
        }
    }
}