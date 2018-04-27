Pod::Spec.new do |s|
  s.name = 'UIViewController-GIHViewController'
  s.version = '0.0.1'
  s.ios.deployment_target = '6.0'
  s.license = { :type => "Apache-2.0", :file => "LICENSE" }
  s.summary = 'Expand focusViewController property to UIViewController'
  s.homepage = 'https://github.com/gaizhi'
  s.author = { 'Xu Qiang' => '994059781@qq.com' }
  s.source = { :git => 'https://github.com/gaizhi/UIViewController-GIHViewController.git', :tag => s.version.to_s }

  s.description = 'Expand focusViewController property to, now you can get the focus controller by selected method!'

  s.requires_arc = true

  s.frameworks = [
    'UIKit'
  ]

  s.source_files = 'UIViewController/*.{h,m}'
  s.public_header_files = 'UIViewController/*.h'

end
