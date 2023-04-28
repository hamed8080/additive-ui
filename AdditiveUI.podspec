Pod::Spec.new do |s|
  s.name         = "AdditiveUI"
  s.version      = "1.0.0"
  s.summary      = "AdditiveUI"
  s.description  = "It's comprised of common ui-views, extensions, and modifiers."
  s.homepage     = "https://pubgi.fanapsoft.ir/chat/ios/additive-ui"
  s.license      = "MIT"
  s.author       = { "Hamed Hosseini" => "hamed8080@gmail.com" }
  s.platform     = :ios, "10.0"
  s.swift_versions = "4.0"
  s.source       = { :git => "https://pubgi.fanapsoft.ir/chat/ios/additive-ui", :tag => s.version }
  s.source_files = "Sources/Additive/**/*.{h,swift,xcdatamodeld,m,momd}"
  s.frameworks  = "Foundation"
end
