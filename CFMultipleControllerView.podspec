
Pod::Spec.new do |s|
s.name         = 'CFMultipleControllerView'
s.version      = '0.0.1'
s.summary      = '简单的几行代码, 就能实现绝大多数主流APP的一个页面切换多控制器页面的布局'
s.description      = <<-DESC
"简单的几行代码, 就能实现绝大多数主流APP的一个页面切换多控制器页面的布局---提供了3中切换控制器view的样式---其中一种切换效果 很多主流APP(如淘宝首页的淘宝头条模块都没很好展示)"
DESC
s.homepage     = 'https://github.com/CoderPeak/CFMultipleControllerView'
s.license      = 'MIT'
s.authors      = {'陈峰' => '545486205@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/CoderPeak/CFMultipleControllerView.git' , :tag => s.version.to_s}

s.vendored_frameworks = 'CFMultipleControllerView/CFMultipleControllerView.framework'

s.requires_arc = true
end