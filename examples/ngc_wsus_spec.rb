require 'spec_helper'


describe 'ngc_wsus' do

  on_supported_os.each do |os, os_facts|

    context "on #{os}" do

      let(:facts) { os_facts }

      it { is_expected.to compile }

    end

  end

  describe 'Batch File Execution' do

    it "should execute the batch file" do

      is_expected.to contain_exec('Execute batch file').with('command' => "cd S:\galaxy\wsus | Start-Process wsus_mng_iso.bat", 'provider' => 'powershell', 'unless' => 'if ((Get-ItemProperty -Path hklm:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate -Name "WUServer") -eq "http://10.129.17.5") {exit 0} else {exit 1})'

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
