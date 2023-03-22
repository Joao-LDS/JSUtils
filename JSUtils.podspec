#
#  Be sure to run `pod spec lint JSUtils.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "JSUtils"
  spec.version      = "1.0"
  spec.summary      = "Library to use in iOS project."

  spec.description  = <<-DESC
                     JSUtils help you a validate or format inputs.
                     DESC

  spec.homepage     = "https://github.com/Joao-LDS/JSUtils"
  spec.author       = { "Joao-LDS" => "joao_l_d_s@hotmail.com" }
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.ios.deployment_target = "12.0"
  spec.swift_version = "5.0"
  
  spec.source       = { :git => "https://github.com/Joao-LDS/JSUtils.git", :tag => "#{spec.version}" }
  spec.source_files  = "JSUtils/Source/*.{h,m,swift}"

end
