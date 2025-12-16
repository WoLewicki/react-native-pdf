require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['summary']
  s.description    = package['description']
  s.author         = package['author']['name']
  s.license        = package['license']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/wolewicki/react-native-pdf.git', :tag => "v#{s.version}" }
  s.requires_arc   = true
  s.framework    = "PDFKit"

  s.platforms       = { ios: '11.0', tvos: '11.0' }
  s.source_files    = 'ios/**/*.{h,m,mm,cpp}'
  s.requires_arc    = true
  install_modules_dependencies(s)
end
