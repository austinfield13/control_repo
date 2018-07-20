require 'spec_helper'


describe 'ngc_ca' do

  #on_supported_os.each do |os, os_facts|

    #context "on #{os}" do

      #let(:facts) { os_facts }

      #it { is_expected.to compile }

    #end

  #end

  describe 'Certificate Import Execution' do

    it "should import the ng-1.cer file" do

      is_expected.to contain_exec('ng-1.cer')

    end

    it "should import the ng-2.cer file" do

      is_expected.to contain_exec('ng-2.cer')
  
    end

    it "should import the ng-3.cer file" do

      is_expected.to contain_exec('ng-3.cer')
  
    end

    it "should import the ng-5.cer file" do

      is_expected.to contain_exec('ng-5.cer')
  
    end

    it "should import the ng-6.cer file" do

      is_expected.to contain_exec('ng-6.cer')
  
    end

    it "should import the ng-8.cer file" do

      is_expected.to contain_exec('ng-8.cer')
  
    end

    it "should import the ng-9.cer file" do

      is_expected.to contain_exec('ng-9.cer')
  
    end

    it "should import the ng-10.cer file" do

      is_expected.to contain_exec('ng-10.cer')
  
    end

    it "should import the ng-11.cer file" do

      is_expected.to contain_exec('ng-11.cer')
  
    end

    it "should import the ng-12.cer file" do

      is_expected.to contain_exec('ng-12.cer')
  
    end

    it "should import the ng-13.cer file" do

      is_expected.to contain_exec('ng-13.cer')
  
    end

    it "should import the ng-14.cer file" do

      is_expected.to contain_exec('ng-14.cer')
  
    end

    it "should import the ng-16.cer file" do

      is_expected.to contain_exec('ng-16.cer')
  
    end

    it "should import the ng-17.cer file" do

      is_expected.to contain_exec('ng-17.cer')
  
    end

    it "should import the ng-18.cer file" do

      is_expected.to contain_exec('ng-18.cer')
  
    end

    it "should import the ng-19.cer file" do

      is_expected.to contain_exec('ng-19.cer')
  
    end

    it "should import the ng-20.cer file" do

      is_expected.to contain_exec('ng-20.cer')
  
    end

    it "should import the ng-21.cer file" do

      is_expected.to contain_exec('ng-21.cer')
  
    end

    it "should import the ng-22.cer file" do

      is_expected.to contain_exec('ng-22.cer')
  
    end

    it "should import the rootCA-1.cer file" do

      is_expected.to contain_exec('rootCA-1.cer')
  
    end

    it "should import the rootCA-2.cer file" do

      is_expected.to contain_exec('rootCA-2.cer')
    
    end

    it "should import the rootCA-4.cer file" do

      is_expected.to contain_exec('rootCA-4.cer')
    
    end


  end

  describe 'resources' do

    it 'should have twenty-two resources' do

      is_expected.to have_resource_count(22)

    end

	  it 'should have twenty-two exec resources' do

	    is_expected.to have_exec_resource_count(22)

    end

  end

end