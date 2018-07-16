require 'spec_helper'

describe 'ngc_galaxy' do

  on_supported_os.each do |os, os_facts|

    context "on #{os}" do

      let(:facts) { os_facts }

      it { is_expected.to compile }

    end

  end

  describe 'Windows Activation Executions' do

    it "should execute 'Check Status'" do
      is_expected.to contain_exec('Check Status').with_command("$number = Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property LicenseStatus| Where-Object{$_.LicenseStatus -ne '1'}")

    end
    
    it "should execute 'Activate Windows Part 1'" do

      is_expected.to contain_exec('Activate Windows Part 1').with(command => "slmgr.vbs /skms 10.129.17.5:1688", provider => 'powershell', unless => $number == nil)

    end

    it "should execute 'Activate Windows Part 2'" do

      is_expected.to contain_exec('Activate Windows Part 2').with(command => "slmgr.vbs /ato", provider => 'powershell', unless => $number == nil)

    end

    it "should execute 'Activate Windows Part 3'" do

      is_expected.to contain_exec('Activate Windows Part 2').with(command => "slmgr.vbs /dli", provider => 'powershell', unless => $number == nil)

    end

  end

  describe 'Office Activation Executions' do

    it "should execute 'Activate Office Part 1'" do

      is_expected.to contain_exec('Activate Office Part 1').with(command => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /remhst", provider => 'powershell', unless => $number == nil)
      
    end

    it "should execute 'Activate Office Part 2'" do

      is_expected.to contain_exec('Activate Office Part 2').with(command => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /sethst:10.129.17.5", provider => 'powershell', unless => $number == nil)

    end

    it "should execute 'Activate Office Part 3'" do

      is_expected.to contain_exec('Activate Office Part 3').with(command => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /act", provider => 'powershell', unless => $number == nil)

    end

    it "should execute 'Activate Office Part 4'" do

      is_expected.to contain_exec('Activate Office Part 4').with(command => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /remhst", provider => 'powershell', unless => $number == nil)

    end

    it "should execute 'Activate Office Part 5'" do

      is_expected.to contain_exec('Activate Office Part 5').with(command => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /dstatus", provider => 'powershell', unless => $number == nil)

    end

  end

  describe 'resources' do

    it 'should have nine resources' do

      is_expected.to have_resource_count(9)

    end

    it 'should have nine exec resource' do

      is_expected.to have_exec_resource_count(9)

    end

  end

end
