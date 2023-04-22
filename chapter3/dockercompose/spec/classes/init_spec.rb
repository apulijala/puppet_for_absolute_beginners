require 'spec_helper'
describe 'dockercompose' do
  context 'with default values for all parameters' do
    it { should contain_class('dockercompose') }
  end
end
