#
#  Be sure to run `pod spec lint FrameworkTestTool.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "YDTestSDK"
  spec.version      = "1.0.6"
  spec.summary      = "TestSDK is a SDK from Sigmob providing AD service."
  spec.description  = <<-DESC
  这就是一个测试，没别的，你信不信？
                   DESC
  spec.homepage     = "https://github.com/yangdimuyi/YDTestSDK.git"
  
  # spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "yangdiyangdi" => "yangdi.yang@adwangmai.com" }

 
  spec.platform     = :ios
  spec.ios.deployment_target = "11.0"

  spec.source       = { :git => "https://github.com/yangdimuyi/YDTestSDK.git", :tag => "#{spec.version}" }

  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

  spec.resource  = "FrameworkFramework/YDTestSDK.bundle"

  spec.ios.vendored_frameworks = 'FrameworkFramework/YDTestSDK.framework'
  
  spec.frameworks = 'AppTrackingTransparency.framework','AssetsLibrary.framework','AdSupport.framework','Audiotoolbox.framework','AddressBook.framework','AVKit.framework','AVFoundation.framework','Accelerate.framework','CoreServices.framework','CoreImage.framework','CoreLocation.framework','CoreTelephony.framework','CoreText.framework','CoreMotion.framework','CoreGraphics.framework','CoreMedia.framework','CoreData.framework','DeviceCheck.framework','Foundation.framework','ImageIO.framework','JavaScriptCore.framework','MobileCoreServices.framework','MapKit.framework','MessageUI.framework','MediaPlayer.framework','Photos.framework','QuartzCore.framework','QuickLook.framework','SystemConfiguration.framework','Security.framework','StoreKit.framework','SafariServices.framework','UIKit.framework','WebKit.framework'
  
  spec.libraries = "z.tbd","resolv.9.tbd","xml2.tbd","c++.tbd","c++abi.tbd","z.1.2.5.tbd","sqlite3.0.tbd","sqlite3.tbd","bz2.1.0.tbd","bz2.tbd","iconv.tbd"
  
  spec.requires_arc = true


end
