Pod::Spec.new do |s|
  s.name     = 'algorithms'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'A fundation about algorithms'
  s.homepage = 'http://www.wolai.me'
  s.author   = { 'hcoder' => 'hcoder.cn@gmail.com' }
  s.source   = { :git => 'https://github.com/MindedCoder/algorithms.git', :tag => "v#{s.version}" }

  s.description = %{
    原始数据拟合成为四边形  三角形  圆形等等一系列规则图形
    当前是为了解决我们在绘制过程中的不标准而用程序使绘制标准化
    测试测试
  }

  s.source_files = 'algorithms/*.{h,m}'

  s.ios.deployment_target = '8.0' # minimum SDK with autolayout
end