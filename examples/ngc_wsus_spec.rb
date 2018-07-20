require 'spec_helper'


describe 'ngc_wsus' do

  =begin on_supported_os.each do |os, os_facts|

    context "on #{os}" do

      let(:facts) { os_facts }

      it { is_expected.to compile }

    end

  end
  =end
  describe 'Powershell File Execution' do

    it "should execute the wsus.ps1 file" do

      is_expected.to contain_exec('Execute WSUS Configuration').with('command' => '& C:\opt\wsus.ps1')

    end

  end

  describe 'resources' do

    it 'should have one resource' do

      is_expected.to have_resource_count(1)

    end

	  it 'should have one exec resource' do

	    is_expected.to have_exec_resource_count(1)

    end

  end

end