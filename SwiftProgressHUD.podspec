Pod::Spec.new do |s|
s.name         = 'SwiftProgressHUD'
s.version      = '1.0.0'
s.swift_version= '4.0'
s.summary      = 'A clean and lightweight progress HUD by Swift for your iOS and tvOS app'
s.homepage     = 'https://github.com/zxhkit/SwiftProgressHUD'
s.license      = 'MIT'
s.authors      = {'MrXuanhe' => '1152167469@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/zxhkit/SwiftProgressHUD.git', :tag => s.version}
s.source_files = 'SwiftProgressHUD/SwiftProgressHUD/SwiftProgressHUD/*'
s.requires_arc = true
end
