cask 'spider-cask' do
  version '2.0.11'
  url 'https://httpbin.org/gzip'
  sha256 :no_check
 
  name 'spider-cask'
  homepage 'https://github.com/ivanfrolovmd/brew-example'

  container type: :naked
  
  deps = [
    '1password',
    'docker',
    'firefox',
    'google-chrome',
    'google-drive-file-stream',
    'adoptopenjdk8',
    'jetbrains-toolbox',
    'slack',
    'sublime-text',
    'visual-studio-code',
    'visualvm',
    'zoomus'
  ]
  deps.each { |d| depends_on cask: d }
end
