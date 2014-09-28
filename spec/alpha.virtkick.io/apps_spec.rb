require 'spec_helper'

describe 'HTTP Server' do
  describe package 'http-master' do
    # TODO: package http-master and upload to AUR
    it { should be_installed.by('npm').with_version '0.7.8' }
  end

  describe service 'http-master' do
    it { should be_enabled }
    it { should be_running }
  end

  describe port 80 do
    it { should be_listening }
  end

  # TODO: check for 80 -> 443 redirect

  describe port 443 do
    it { should be_listening }
  end

  # TODO: check if it proxies
end

describe 'virtkick-webapp' do
  describe service 'alpha.virtkick.io' do
    it { should be_enabled }
    it { should be_running }
  end

  describe port 3007 do
    it { should be_listening }
  end

  # TODO: check if home page loads
end

describe 'virtkick-webvirtmgr-backend' do
  describe

  describe 'api' do
    describe service 'webvirtmgr.virtkick.io' do
      it { should be_enabled }
      it { should be_running }
    end

    describe port 8000 do
      it { should be_listening }
    end

    describe package 'libvirt-python' do
      it { should be_installed }
    end
  end

  describe 'novnc' do
    describe service 'webvirtmgr-novnc' do
      it { should be_enabled }
      it { should be_running }
    end

    describe port 6080 do
      it { should be_listening }
    end
  end
end

describe 'connection to hv1.alpha.virtkick.io' do
  describe command 'ping -c 1 -W 1 hv1.alpha.virtkick.io' do
    it { should return_exit_status 0 }
  end

  describe command 'getent hosts hv1.alpha.virtkick.io' do
    its(:stdout) { should start_with "\n10." } # TODO: bug in serverspec, should not be prepended with \n
  end
end
