import XCTest

class BusinessTests: TestBase {
    
 func testThankYouMessageInBDDStyle() {
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}
