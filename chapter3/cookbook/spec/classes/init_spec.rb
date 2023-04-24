require 'spec_helper'
describe 'cookbook' do
  context 'with default values for all parameters' do
    it { should contain_class('cookbook') }
  end
end
