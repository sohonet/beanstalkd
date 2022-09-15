require 'spec_helper'
describe 'beanstalkd' do
  on_supported_os.each do |os, facts|
    let(:facts) do
      facts.merge(os_specific_facts(facts))
    end
    context "on #{os}" do
      it { is_expected.to contain_class('beanstalkd') }
    end
  end
end
