 # iOS Pipeline
 1. Download [Xcode](https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
 2. Create project from Xcode Wizard
 3. Clone project [ios-pipeline](https://github.com/nortonpmjr/ios-pipeline)
 4. Open FizzBuzz project


 ## Important Websites
 * [Itunes Connect](https://appstoreconnect.apple.com)
 * [Apple Developer](https://developer.apple.com/account/#/overview/27F3ZKLUK9)
    
## Basics of Build
 1. Click at the arrow button Build and Run
![Image](images/xc-run.png)

## Requirements
1. Create an App ID  
    1.1 Access Apple Developer, and click on:  
    1.2 Account ![Image](images/apple-dev-account.png)  
    1.3 Certificates, IDs & Profiles ![Image](images/apple-dev-home.png)
    1.4 App ID ![Image](images/appid.png)
    1.5 Enter a name or description  
    1.6 Select Explicit App ID and adds your bundle id  
    1.7 Continue * App Services can be left with default options
    ![Image](images/appid-register-0.png)  ![Image](images/appid-register-1.png)

2. Code Signing  
    2.1


## Commands

1. List available sdks  
    `` xcodebuild -showsdks``  
    ``xcodebuild -project ios-pipeline.xcodeproj -scheme ios-pipeline -showdestinations``  
    ``xcodebuild -project ios-pipeline.xcodeproj -scheme ios-pipeline -destination "platform=iOS Simulator,name=iPhone 8,OS=11.4" clean test``
    
    
## Basics of Unit Testing
    
1.  Open ios-pipelineTests file and make the test fail
    
    ```
    func testUnitExample() {
        XCTAssertEqual(5+1, 2)
    }
    ```
    
2. Run the tests clicking at the diamond button on the left
    
## Basics of iOS UI Testing
    
## Fastlane Install
    
## Setup iTunes connect
    provisioning profiles
    certificates
    prints
    
## Lint
    swiftlint
    
## Code Format
    
