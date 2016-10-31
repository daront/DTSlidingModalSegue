
Pod::Spec.new do |s|

  s.name         = "DTSlidingModalSegue"
  s.version      = "0.0.1"
  s.summary      = "Present view controller modally in a UINavigationController(push) style"
  s.homepage     = "https://github.com/daront/DTSlidingModalSegue"
  s.license      = "MIT"
  s.author       = { "Daron Tancharoen" => "daront@gmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/daront/DTSlidingModalSegue.git", :tag => "#{s.version}" }
  s.source_files = "DTSlidingModalSegue/*.{swift}"
  #s.resources    = "DTSlidingModalSegue/*.gif"
  #s.resource_bundles = {
  #  'DTLoadingIndicator' => ['DTSlidingModalSegue/*.{gif}']
  #}
  #s.dependency 'FLAnimatedImage', '~> 1.0'

end
