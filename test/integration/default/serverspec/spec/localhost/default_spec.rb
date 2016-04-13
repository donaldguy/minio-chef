require ::File.expand_path('../../spec_helper', __FILE__)

describe user('minio') do
  it { should exist }
  it { should belong_to_group 'minio' }
  it { should have_home_directory '/srv/minio' }
  it { should have_login_shell '/bin/false' }
end

describe file('/srv/minio') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_grouped_into 'minio' }
  it { should be_owned_by 'minio' }
end

describe file('/usr/local/sbin/minio') do
  it { should be_file }
  it { should be_mode 755 }
  it { should be_owned_by 'minio' }
  it { should be_grouped_into 'staff' }
end

describe process('minio') do
  its(:user) { should eq 'minio' }
end
