#
#  Be sure to run `pod spec lint SaaS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "SaaS"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of SaaS."

  spec.description  = 'An in-app purchase module for iOS project'

  spec.homepage     = "https://github.com/Pixocial/testSaaS-iOS/blob/master/README.md"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

  spec.author             = { "Pixocial" => "app@miraclevision.sg" }

  spec.source       = { :git => "https://github.com/Pixocial/testSaaS-iOS.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # 第三方非开源framework(多个)
  spec.vendored_frameworks = 'sdk/PurchaseSDK.framework'
  # 系统动态库(多个)
  spec.frameworks = 'UIKit','StoreKit','Security'

  spec.ios.deployment_target = '10.0'

  spec.resource_bundles = {
    'SaaS' => ['sdk/PurchaseSDK.bundle']
  }


  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
end
