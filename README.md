# iOS Pipeline

    1 -  Create project from Xcode Wizard
    
## Basics of Build
1 - Click at the arrow button Build and Run


## Commands

1. List available sdks
    `` xcodebuild -showsdks
    xcodebuild -project ios-pipeline.xcodeproj -scheme ios-pipeline -showdestinations
xcodebuild -project ios-pipeline.xcodeproj -scheme ios-pipeline -destination "platform=iOS Simulator,name=iPhone 8,OS=11.4" clean test``
    
    
## Basics of Unit Testing
    
1 - Open ios-pipelineTests file and make the test fail
    
    ```
    func testUnitExample() {
        XCTAssertEqual(5+1, 2)
    }
    ```
    
2 -  Run the tests clicking at the diamond button on the left
    
## Basics of iOS UI Testing
    
## Fastlane Install
    
## Setup iTunes connect
    provisioning profiles
    certificates
    prints
    
## Lint
    swiftlint
    
## Code Format
    
