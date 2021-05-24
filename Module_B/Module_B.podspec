
Pod::Spec.new do |spec|

  spec.name         = "Module_B"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of Module_B."

  spec.description  = <<-DESC
			this is Module_B
                   DESC

  spec.homepage     = "https://gitee.com/zwj946/Module_B"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "zwj222" => "1741831606@qq.com" }
  spec.platform     = :ios, "10.0"

  spec.source       = { :path => "./" }


  spec.source_files  = "Module_B/Module_B/**/*.{h,m}"
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

  spec.dependency "ZWJ_MasonyFrame"

end
