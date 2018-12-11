Pod::Spec.new do |s|
  s.name         = "Configurable"
  s.version      = "0.1"
  s.summary      = "Configurable protocol: setup objects easy via closure"
  s.description  = <<-DESC
This tiny extension provides the approach to simplify and significantly increase visual perception of the code, to make it more structured, to segregate logic blocks and to get rid of local vars waste.
  DESC
  s.homepage     = "https://github.com/jormungand/Configurable"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Ilya Stroganov" => "ilya.stroganov@gmail.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/jormungand/Configurable.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
