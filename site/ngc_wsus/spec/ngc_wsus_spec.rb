require 'spec_helper'


describe 'ngc_wsus' do

  on_supported_os.each do |os, os_facts|

    context "on #{os}" do

      let(:facts) { os_facts }

      it { is_expected.to compile }

    end

  end
  
  describe 'Powershell File Execution' do

    it "should execute the wsus.ps1 file if the WUServer is not configured" do

      is_expected.to contain_exec('Execute WUServer Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if the WUStatusServer is not configured" do

      is_expected.to contain_exec('Execute WUStatusServer Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if NoAutoUpdate is not configured" do

      is_expected.to contain_exec('Execute NoAutoUpdate Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if AUOptions is not configured" do

      is_expected.to contain_exec('Execute AUOptions Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if DetectionFrequency is not configured" do

      is_expected.to contain_exec('Execute DetectionFrequency Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if DetectionFrequencyEnabled is not configured" do

      is_expected.to contain_exec('Execute DetectionFrequencyEnabled Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if NoAutoRebootWithLoggedOnUsers is not configured" do

      is_expected.to contain_exec('Execute NoAutoRebootWithLoggedOnUsers Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if ScheduledInstallDay is not configured" do

      is_expected.to contain_exec('Execute ScheduledInstallDay Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if ScheduledInstallTime is not configured" do

      is_expected.to contain_exec('Execute ScheduledInstallTime Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if AutoInstallMinorUpdates is not configured" do

      is_expected.to contain_exec('Execute AutoInstallMinorUpdates Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

    end

    it "should execute the wsus.ps1 file if UseWUServer is not configured" do

      is_expected.to contain_exec('Execute UseWUServer Configuration').with('command' => '& S:\galaxy\wsus\wsus.ps1')

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