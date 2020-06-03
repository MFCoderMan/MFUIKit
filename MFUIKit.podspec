Pod::Spec.new do |spec|
  spec.name         = "MFUIKit"
  spec.version      = "0.0.2"
  spec.summary      = "A short description of MFUIKit."
  spec.description  = "A description of MFUIKit."
  spec.homepage     = "https://github.com/MFCoderMan/MFUIKit.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = "wuyazi"
  spec.ios.deployment_target = "8.0"
  spec.osx.deployment_target = "10.7"
  spec.watchos.deployment_target = "2.0"
  spec.tvos.deployment_target = "9.0"
  spec.source       = { :git => "https://github.com/MFCoderMan/MFUIKit.git", :tag => "#{spec.version}" }
  spec.source_files  = "MFUIKit/*.{h,m}"
  spec.private_header_files = 'MFUIKit/*.h'
  
  spec.resource_bundles = {
    'MFUIKit' => ['MFUIKit/Assets/**/*.{storyboard,xcassets,xib,plist,png,jpg,svga,webp,bundle}']
  }
  spec.frameworks = 'UIKit', 'Foundation'
  spec.requires_arc = true

end
