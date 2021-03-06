# Default parameters for the Pulp smart proxy plugin
class foreman_proxy::plugin::pulp::params {
  include ::foreman_proxy::params

  $enabled            = true
  $listen_on          = 'https'
  $version            = undef
  $group              = undef
  $pulpnode_enabled   = false
  $pulp_url           = "https://${::fqdn}/pulp"
  $pulp_dir           = '/var/lib/pulp'
  $pulp_content_dir   = '/var/lib/pulp/content'
  $puppet_content_dir = $::foreman_proxy::params::puppet_envdir
  $mongodb_dir        = '/var/lib/mongodb'
}
