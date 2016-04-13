directory '/srv/minio'

minio_server '/srv/minio' do
  service_provider :systemd
end

minio_client_for 'developer'
