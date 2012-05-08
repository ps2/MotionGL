$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'MotionGL'
  
  app.frameworks << 'OpenGLES'
  app.frameworks << 'QuartzCore'
  app.frameworks << 'GLKit'
  
  # This entitlement is required during development but must not be used for release.
  app.entitlements['get-task-allow'] = true
  
  app.codesign_certificate = ENV["RUBY_MOTION_CODESIGN_CERTIFICATE"]
  app.provisioning_profile = ENV["RUBY_MOTION_PROVISIONING_PROFILE"]
end
