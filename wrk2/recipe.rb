class Wrk2 < FPM::Cookery::Recipe
  description 'A constant throughput, correct latency recording variant of wrk'

  name     'wrk2'
  revision 2
  version  '20141109.1'
  homepage 'https://github.com/giltene/wrk2'
  source   'https://github.com/giltene/wrk2', :with => :git, :ref => 'd7f17a104f'

  build_depends 'libssl-dev'
  depends       'libssl1.0.0'

  def build
    make
  end

  def install
    bin.install 'wrk', 'wrk2'
    share('wrk2/scripts').install Dir['scripts/*']
    share('doc/wrk2').install %w(README NOTICE LICENSE)
  end
end
