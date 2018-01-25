Pod::Spec.new do |s|

  s.name         = "app3"
  s.version      = "1.0.0"
  s.summary      = "cricleClass Public"
  s.description  = <<-DESC
                           cricle libraries, This File Mainly contains babytree business code
                   DESC
  s.homepage     = "http://www.babytree.com"
  s.license      = "MIT"
  s.author             = { "wanghonglu" => "wanghonglu@babytree-inc.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/wanjj8023/app3.git", :tag => "#{s.version}" }

  s.source_files  = "app3/circleModel/**/*.{h,m,plist}"
  s.dependency "Masonry"

end
