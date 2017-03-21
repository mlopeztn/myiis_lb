# contents of chef-repo/cookbooks/my-wrapper-cookbook/recipes/default.rb
node.default['iis-lb']['members'] = [
  {
    'address' => 'hs2211.southcentralus.cloudapp.azure.com',
    'weight' => 100,
    'port' => 80,
    'ssl_port' => 443
  },
  {
    'address' => 'hs911.southcentralus.cloudapp.azure.com',
    'weight' => 100,
    'port' => 80,
    'ssl_port' => 443
  }]

include_recipe 'iis-lb::default'