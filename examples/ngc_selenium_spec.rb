require 'spec_helper'

describe 'ngc_selenium' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end

  describe 'file' do
    it 'should create a file' do
      is_expected.to contain_file('C:\opt\selenium').with_ensure('directory')
	end
  end

  describe 'file' do
    it 'should create a file for chrome' do
      is_expected.to contain_file('C:\opt\selenium\chrome').with('ensure' => 'directory', 'source' => 'S:\selenium\chrome', 'recurse' => 'remote')
	end
  end

    describe 'file' do
    it 'should create a file for firefox' do
      is_expected.to contain_file('C:\opt\selenium\firefox').with('ensure' => 'directory', 'source' => 'S:\selenium\firefox', 'recurse' => 'remote')
	end
  end

    describe 'file' do
    it 'should create a file for Internet Explorer' do
      is_expected.to contain_file('C:\opt\selenium\IE').with('ensure' => 'directory', 'source' => 'S:\selenium\IE', 'recurse' => 'remote')
	end
  end

  describe 'resources' do
    it 'should have four resources' do
      is_expected.to have_resource_count(4)
    end
	it 'should have four file resources' do
	  is_expected.to have_file_resource_count(4)
	end
  end
end