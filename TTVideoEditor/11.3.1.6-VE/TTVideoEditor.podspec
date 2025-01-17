Pod::Spec.new do |s|
  s.name = "TTVideoEditor"
  s.version = "11.3.1.6-VE"
  s.summary = "TTVideoEditor"
  s.license = "MIT"
  s.authors = {"zhouyi.ysj"=>"zhouyi.ysj@bytedance.com"}
  s.homepage = "https://github.com/volcengine"
  s.description = "ttvideoeditor"
  s.weak_frameworks = ["Metal", "MetalPerformanceShaders", "Photos", "CoreML", "MetalKit"]
  s.libraries = ["xml2", "iconv"]
  s.requires_arc = true
  s.source = { :http => "https://common.voleai.com/api/v1/veVos/repository?business=CK&key=#{$VEVOS_SPEC_KEY}&secret=#{$VEVOS_SPEC_SECRET}&repository=thrall_ck&version=#{s.version}", :type => "zip" }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/TTVideoEditor.framework'
  s.ios.frameworks = ["AVFoundation", "Foundation", "UIKit", "CoreTelephony", "AudioToolbox", "CoreMotion", "MediaToolbox", "GLKit", "OpenGLES", "Accelerate", "VideoToolbox", "CoreMedia", "MobileCoreServices", "CoreGraphics", "CoreVideo", "CoreImage", "ImageIO", "QuartzCore"]
s.pod_target_xcconfig = { "VALID_ARCHS" => "armv7 arm64" }
end
 # shell_commit=a427deb6739532c1695150128d8026588db4e1e4
 
