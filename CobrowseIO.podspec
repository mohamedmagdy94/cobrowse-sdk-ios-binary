Pod::Spec.new do |s|
    s.name = 'CobrowseIO'
    s.version = '2.13.3'
    s.summary = 'CobrowseIO SDK'
    s.description = 'CobrowseIO SDK. See cobrowse.io for more information.'
    s.license = 'Apache-2.0'
    s.homepage = 'https://cobrowse.io/docs'
    s.author = { 'Andy' => 'andy@cobrowse.io' }
    s.frameworks = 'Foundation', 'Security'
    s.ios.frameworks = 'CoreLocation', 'ReplayKit'
    s.ios.deployment_target = '12.0'
    s.osx.deployment_target = '10.10'
    s.dependency 'Starscream', '~> 4.0.4'
    s.dependency 'SwiftCBOR', '~> 0.4.3'
    s.swift_version = '5'
    s.source = { :git => 'https://github.com/cobrowseio/cobrowse-sdk-ios-binary.git', :tag => 'v'+s.version.to_s }
    s.subspec 'Extension' do |sp|
        sp.ios.vendored_frameworks = 'CobrowseIOAppExtension.framework'
    end
    s.subspec 'Framework' do |sp|
        sp.ios.vendored_frameworks = 'CobrowseIO.framework'
    end
    s.subspec 'XCFramework' do |sp|
        sp.vendored_frameworks = 'CobrowseIO.xcframework'
    end
    s.default_subspec = 'XCFramework'

end
