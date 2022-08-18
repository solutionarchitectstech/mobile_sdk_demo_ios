use_frameworks!

platform :ios, '14.0'

target 'SAAdvertisingSDK_Example' do
 pod 'SAAdvertisingSDK', '~> 0.0.6'

  target 'SAAdvertisingSDK_Tests' do
    inherit! :search_paths

    
  end
end


# fix that error https://github.com/CocoaPods/CocoaPods/issues/10185#issuecomment-722332929
post_install do |installer|
installer.pods_project.targets.each do |target|
target.build_configurations.each do |config|
config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
end
end
end
