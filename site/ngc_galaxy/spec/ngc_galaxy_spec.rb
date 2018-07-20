require 'spec_helper'


describe 'ngc_galaxy' do

  #on_supported_os.each do |os, os_facts|

    #context "on #{os}" do

      #let(:facts) { os_facts }

      #it { is_expected.to compile }

    #end

  #end

  describe 'Activation Execution' do

    it "should run the execution file" do

      is_expected.to contain_exec('Activate Windows and Office').with('command' => 'powershell -executionpolicy remotesigned -file S:\galaxy\Activate-GalaxyNet.ps1', 'provider' => 'powershell')

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