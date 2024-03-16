# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

source 'git@code.byted.org:ee/pods_specs.git'
platform :ios, '13.4'

target 'ICU4C' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'icu4c-iosx', :path => './icu4c-iosx'
end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      end
    end
    # 将自定义配置写入 Project
    project.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.4'
    end
  end
end

