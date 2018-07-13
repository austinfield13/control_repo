require 'spec_helper'

describe 'ngc_eclipse' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end

  describe 'file' do
    it 'should create a file' do
      is_expected.to contain_file('C:\opt\eclipse').with_ensure('directory')
	end
  end

  describe 'exec' do
    it 'should have the execution' do
	  is_expected.to contain_exec('unzip_eclipse').with('refreshonly' => 'true').that_subscribes_to('File[C:\opt\eclipse]')
    end
  end

  describe 'resources' do
    it 'should have two resources' do
      is_expected.to have_resource_count(2)
    end
	it 'should have one file resource' do
	  is_expected.to have_file_resource_count(1)
	end
	it 'should have one exec resource' do
	  is_expected.to have_exec_resource_count(1)
    end
  end
end