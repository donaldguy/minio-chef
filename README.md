# minio cookbook

[Chef](https://chef.io) cookbook to install and do basic configuration of minio, both
[server](https://github.com/minio/minio) and
[client](https://github.com/minio/mc).

For server, sets up a basic service with
[poise-service](https://github.com/poise/poise-service)

For client, uses chef search to find servers so set up, and seeds credentials
for them to `mc` for a specified user.

Both with [custom
resources](https://docs.chef.io/custom_resources.html)

Requires chef 12.5 or newer, or maybe `resource_compat` cookbook

## Basic example

```ruby
minio_server '/srv/minio' do
  service_provider :systemd
end

minio_client_for 'developer'
```

# License

Copyright 2016, Donald Guy

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License. You may obtain a copy of the
License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.
