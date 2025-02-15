Pod::Spec.new do |s|
  s.name             = "LBBottomSheet"
  s.version          = "1.1.7"
  s.summary          = "LBBottomSheet"
  s.description      = "Rownd fork of LunabeeStodio/LBBottomSheet"
  s.homepage         = "https://github.com/rownd/LBBottomSheet"
  s.license          = { :type => "Apache 2.0", :file => "LICENSE" }
  s.author           = {
    "Rownd" => "support@rownd.io",
  }
  s.documentation_url = "https://github.com/rownd/LBBottomSheet"
  s.source            = {
    :git => "https://github.com/rownd/LBBottomSheet.git",
    :tag => s.version.to_s
  }

  s.ios.deployment_target = '11.0'

  

  s.requires_arc     = true
  s.source_files     = 'Sources/**/*.swift'
  s.resource = 'Sources/LBBottomSheet/Resources/BottomSheet.storyboard'
  s.swift_versions   = [ "5.5", "5.4", "5.3", "5.2", "5.0" ]
end
