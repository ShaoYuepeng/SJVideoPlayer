
Pod::Spec.new do |s|
s.name         = 'SJVideoPlayer'
s.version      = '1.2.5'
s.summary      = 'video player.'
s.description  = 'https://github.com/changsanjiang/SJVideoPlayer/blob/master/README.md'
s.homepage     = 'https://github.com/changsanjiang/SJVideoPlayer'
s.license      = { :type => 'MIT', :file => 'LICENSE.md' }
s.author       = { 'SanJiang' => 'changsanjiang@gmail.com' }
s.platform     = :ios, '8.0'
s.source       = { :git => 'https://github.com/changsanjiang/SJVideoPlayer.git', :tag => "v#{s.version}" }
s.resource     = 'SJVideoPlayer/Resource/SJVideoPlayer.bundle'
s.frameworks  = "UIKit", "AVFoundation"
s.requires_arc = true
s.dependency 'Masonry'
s.dependency 'SJSlider'
s.dependency 'SJAttributesFactory'
s.dependency 'SJBorderLineView'
s.dependency 'SJPrompt'
s.dependency 'SJUIFactory'
s.dependency 'SJVideoPlayerBackGR'
s.dependency 'SJOrentationObserver'

s.source_files = 'SJVideoPlayer/SJPlayer.h'

s.subspec 'Header' do |ss|
    ss.source_files = 'SJVideoPlayer/Header/*.{h}'
end

s.subspec 'Base' do |ss|
    ss.source_files = 'SJVideoPlayer/Base/*.{h,m}'
    ss.dependency 'SJVideoPlayer/Header'
    ss.dependency 'SJVideoPlayer/Model'
    ss.dependency 'SJVideoPlayer/Resource'
end

s.subspec 'Player' do |ss|
    ss.source_files = 'SJVideoPlayer/Player/*.{h,m}'
    ss.dependency 'SJVideoPlayer/Control'
    ss.dependency 'SJVideoPlayer/Loading'
    ss.dependency 'SJVideoPlayer/MoreSetting'
    ss.dependency 'SJVideoPlayer/VolBrigControl'
    ss.dependency 'SJVideoPlayer/Present'
    ss.dependency 'SJVideoPlayer/Registrar'
    ss.dependency 'SJVideoPlayer/TimerControl'
    ss.dependency 'SJVideoPlayer/GestureControl'
end

s.subspec 'Model' do |ss|
    ss.source_files = 'SJVideoPlayer/Model/*.{h,m}'
end

s.subspec 'Control' do |ss|
    ss.source_files = 'SJVideoPlayer/Control/*.{h,m}'
    ss.dependency 'SJVideoPlayer/Other'
end

s.subspec 'GestureControl' do |ss|
    ss.source_files = 'SJVideoPlayer/GestureControl/*.{h,m}'
end

s.subspec 'Loading' do |ss|
    ss.source_files = 'SJVideoPlayer/Loading/*.{h,m}'
end

s.subspec 'MoreSetting' do |ss|
    ss.source_files = 'SJVideoPlayer/MoreSetting/*/**.{h,m}'
    ss.dependency 'SJVideoPlayer/Other'
end

s.subspec 'VolBrigControl' do |ss|
    ss.source_files = 'SJVideoPlayer/VolBrigControl/*.{h,m}'
    ss.dependency 'SJVideoPlayer/Other'
end

s.subspec 'Other' do |ss|
    ss.source_files = 'SJVideoPlayer/Other/*.{h,m}'
    ss.dependency 'SJVideoPlayer/Base'
end

s.subspec 'Present' do |ss|
    ss.source_files = 'SJVideoPlayer/Present/*.{h,m}'
    ss.dependency 'SJVideoPlayer/Other'
end

s.subspec 'Registrar' do |ss|
    ss.source_files = 'SJVideoPlayer/Registrar/*.{h,m}'
end

s.subspec 'TimerControl' do |ss|
    ss.source_files = 'SJVideoPlayer/TimerControl/*.{h,m}'
end

s.subspec 'Resource' do |ss|
    ss.source_files = 'SJVideoPlayer/Resource/*.{h,m}'
end

end
