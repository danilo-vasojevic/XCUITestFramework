import XCTest

class E2ETests: TestBase {
    
    func testAllElementsOfMainScreen() {
        app.staticTexts["welcomeMessage"].tap()
        app.staticTexts["enterCity"].tap()
        app.buttons["enrollButton"].tap()
        app.images["TAUlogo"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
    }
    
    func testThankYouMessage() {
        app.textFields["city"].tap()
        app.textFields["city"].typeText("London")
        app.staticTexts["welcomeMessage"].tap()
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }
}
