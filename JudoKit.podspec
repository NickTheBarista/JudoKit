Pod::Spec.new do |s|
  s.name                  = 'JudoKit'
  s.module_name           = 'Judo'
  s.version               = '6.1.1'
  s.summary               = 'Judo Pay Full iOS Client Kit'
  s.homepage              = 'http://judopay.com/'
  s.license               = 'MIT'
  s.author                = { "Hamon Ben Riazy" => 'hamon.riazy@judopayments.com' }
  s.source                = { :git => 'https://github.com/JudoPay/JudoKit.git', :tag => s.version.to_s }

  s.documentation_url = 'https://judopay.github.io/JudoKit/'

  s.ios.deployment_target = '8.0'
  s.requires_arc          = true
  s.source_files          = 'Source/**/*.swift'

  s.dependency 'JudoShield'

  s.frameworks            = 'CoreLocation', 'Security', 'CoreTelephony'
  s.pod_target_xcconfig   = { 'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) ${PODS_ROOT}/JudoShield/Source' }

end
