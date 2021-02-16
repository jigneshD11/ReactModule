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
  # s.dependency 'React-Core/DevSupport', react_native_version
  # s.dependency 'React-Core/RCTWebSocket', react_native_version
  # s.dependency 'React-RCTActionSheet', react_native_version
  # s.dependency 'React-RCTAnimation', react_native_version
  # s.dependency 'React-RCTBlob', react_native_version
  # s.dependency 'React-RCTImage', react_native_version
  # s.dependency 'React-RCTLinking', react_native_version
  # s.dependency 'React-RCTNetwork', react_native_version
  # s.dependency 'React-RCTSettings', react_native_version
  # s.dependency 'React-RCTText', react_native_version
  # s.dependency 'React-RCTVibration', react_native_version
  
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