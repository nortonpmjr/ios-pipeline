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

# Requirements

## Create an App ID  
1. Access Apple Developer, and click on:  
2. Account ![Image](images/apple-dev-account.png)  
3. Certificates, IDs & Profiles ![Image](images/apple-dev-home.png)
4. App ID ![Image](images/appid.png)
5. Enter a name or description  
6. Select Explicit App ID and adds your bundle id  
7. Continue * App Services can be left with default options
![Image](images/appid-register-0.png)  ![Image](images/appid-register-1.png)

## Certificates
1. iOS App Development  
2. Follow CSR instructions  
3. Download and keep it safe  

* **Development Certificates: Belong to individuals and one iOS Development or Mac Development is allowed per Mac.**  
* **Distribution Certificates: belongs to the team and is required for publishing Apps. To share signing certificate with another person on the team you need to export it. On the other person’s Mac, double-click the exported file to install the signing certificate in the keychain.**  

## Provisioning Profile  
1. Click on Provisioning Profile Development
2. Add
3. In House
4. Select the App ID you previously created  

* **Once you’ve create an App ID and a distribution certificate you can create an iOS provisioning profile for distributing your application through the App Store.**  
* **You need a provisioning profile for each type of distribution: Ad Hoc, App Store, In House.**

# Deployment
1. Acess iTunes Connect  
2. Go to My Apps  
3. Select or create a new app  
4. Provide the requested informations (name, bundleID)
5. Go to Prepare for submission  
6. Once you upload an binary and it finishes procesing you have to select it here, to send it to the review process

![Image](images/itc-home.png)
![Image](images/itc-apps.png)
![Image](images/itc-app-menu.png)
![Image](images/itc-submission-binary.png)

# Commands

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
    
