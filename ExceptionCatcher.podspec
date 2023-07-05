Pod::Spec.new do |spec|
  spec.name             = 'ExceptionCatcher'
  spec.version          = '2.0.0'
  spec.summary          = 'The ability to catch exceptions should really be built into Swift.'
  spec.description      = 'There are many Cocoa APIs that can throw exceptions that cannot be caught in Swift (NSKeyedUnarchiver, NSTask, NSObject, etc). This package wraps an Objective-C exception handler to make it possible to catch such exceptions.'

  spec.homepage         = 'https://github.com/Ali72/ExceptionCatcher'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors          = {
    'sindresorhus' => 'sindresorhus@gmail.com',
    'Ali Khajehpour' => 'alikhajepur@gmail.com'
  }
  spec.source           = { :git => 'https://github.com/Ali72/ExceptionCatcher', :tag => spec.version.to_s }

  spec.ios.deployment_target = '10.0'
  spec.source_files     = 'Sources/**/*'
  spec.swift_version    = '5.5'
end
