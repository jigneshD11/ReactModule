# require 'json'

# pkg_version = lambda do |dir_from_root = '', version = 'version'|
#   path = File.join(__dir__, dir_from_root, 'package.json')
#   JSON.parse(File.read(path))[version]
# end

# rcmodule_version = pkg_version.call
# react_native_version = pkg_version.call('node_modules/react-native')

Pod::Spec.new do |s|
  s.name             = 'ReactModule'
  s.version          = '0.0.2'
  s.description      = 'Components for ReactModule.'
  s.summary          = 'Components for ReactModule.'
  s.homepage         = 'https://github.com/Jignesh/ReactModule.git'
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'Jignesh' => 'jignesh@dream11.com' }
  s.source           = { :git => 'https://github.com/Jignesh/ReactModule.git', :tag => s.version.to_s }
  s.source_files   = 'Pod/Classes/**/*.{h,m}'
  s.resources      = 'Pod/Assets/{ReactModule.js,assets}'
  s.platform       = :ios, '12.1'

  # React is split into a set of subspecs, these are the essentials
  s.dependency 'React', "~> 0.63.4"
  s.dependency 'React-Core/DevSupport', "~> 0.63.4"
  s.dependency 'React-Core/RCTWebSocket', "~> 0.63.4"
  s.dependency 'React-RCTActionSheet', "~> 0.63.4"
  s.dependency 'React-RCTAnimation', "~> 0.63.4"
  s.dependency 'React-RCTBlob', "~> 0.63.4"
  s.dependency 'React-RCTImage', "~> 0.63.4"
  s.dependency 'React-RCTLinking', "~> 0.63.4"
  s.dependency 'React-RCTNetwork', "~> 0.63.4"
  s.dependency 'React-RCTSettings', "~> 0.63.4"
  s.dependency 'React-RCTText', "~> 0.63.4"
  s.dependency 'React-RCTVibration', "~> 0.63.4"
  s.dependency 'Yoga' , "~> 1.14.0"
  s.dependency 'DoubleConversion' , "~> 1.1.6"
  s.dependency 'glog' , "~> 0.3.5"
  s.dependency 'Folly' , "~> 2020.01.13.00"
  
  # podspecs = [
  #   'node_modules/react-native/ReactCommon/yoga/Yoga.podspec',
  #   'node_modules/react-native/third-party-podspecs/DoubleConversion.podspec',
  #   'node_modules/react-native/third-party-podspecs/Folly.podspec',
  #   'node_modules/react-native/third-party-podspecs/glog.podspec'
  # ]
  # podspecs.each do |podspec_path|
  #   spec = Pod::Specification.from_file podspec_path
  #   s.dependency spec.name, "#{spec.version}"
  # end
end