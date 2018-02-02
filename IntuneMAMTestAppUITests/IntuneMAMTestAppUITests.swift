//
//  IntuneMAMTestAppUITests.swift
//  IntuneMAMTestAppUITests
//
//  Created by Gopinath P on 12/8/17.
//

import XCTest

class IntuneMAMTestAppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
//        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
      
      let app = XCUIApplication()
      snapshot("01LoginScreen")
      app.textFields["chip count"].typeText("23")
      snapshot("02LoginScreen")
      let bigBlindTextField = app.textFields["big blind"]
      bigBlindTextField.tap()
      bigBlindTextField.typeText("11")
      app/*@START_MENU_TOKEN@*/.buttons["what should i do"]/*[[".buttons[\"WHAT SHOULD I DO?\"]",".buttons[\"what should i do\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      snapshot("03LoginScreen")
      app.alerts["Recommendation"].buttons["OK"].tap()
      snapshot("04LoginScreen")
      
                    // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
