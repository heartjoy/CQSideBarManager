Pod::Spec.new do |s|

  s.name         = "CQSideBarManager"
  s.version      = “0.1.1”
  s.summary      = "A useful sideBar Manager for iOS."
  s.homepage     = "https://github.com/heartjoy/CQSideBarManager"
  s.license      = "MIT"
  s.author             = { "heartjoy" => "xinzhongdefuping@163.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/heartjoy/CQSideBarManager.git", :tag => s.version }
  s.source_files  = "CQSideBarManager", "CQSideBarManager/**/*.{h,m}"
  s.requires_arc = true

end
