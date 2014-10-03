require 'spec_helper'

describe 'hv1.alpha.virtkick.io' do
  %w(libvirt qemu dnsmasq ebtables bridge-utils dmidecode).each do |name|
    describe package name do
      it { should be_installed }
    end
  end

  describe 'dnsmasq' do
    describe port 53 do
      it { should be_listening }
    end
  end

  describe 'libvirt' do
    describe service 'libvirtd' do
      it { should be_enabled }
      it { should be_running }
    end

    describe command 'sudo -u virtkick virsh list' do
      it { should return_exit_status 0 }
    end

    describe command 'sudo -u nobody virsh list' do
      it { should return_exit_status 1 }
    end
  end
end
