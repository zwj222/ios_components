
Pod::Spec.new do |spec|

  spec.name         = "Module_C_Swift_Extention"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of Module_C_Swift_Extention."
  spec.swift_version= "4.2"

  spec.description  = <<-DESC
			this is Module_C_Swift_Extention
                   DESC

  spec.homepage     = "https://gitee.com/zwj946/Module_C_Swift_Extention"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "zwj222" => "1741831606@qq.com" }
 

  spec.platform     = :ios, "10.0"


  spec.source       = { :path => "./" }

  spec.source_files  = "Module_C_Swift_Extention/Module_C_Swift_Extention/**/*.{h,m,swift}"
  #spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"


  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  spec.dependency "ZWJ_CTMediator"


end
