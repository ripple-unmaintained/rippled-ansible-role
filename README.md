# Rippled Ansible Role

An Ansible role for installing and running rippled

[![Circle CI](https://circleci.com/gh/ripple/rippled-ansible-role.svg?style=svg)](https://circleci.com/gh/ripple/rippled-ansible-role)
[![Ripple](https://ripple.com/wp-content/uploads/2014/10/Ripple_attribution_badge_blue1.png)](https://ripple.com)

## Requirements

This role is currently only supported on Ubuntu 14.02 LTS.

## Usage

### Ansible Galaxy

```
$ ansible-galaxy install ripple.rippled
```

### Git Submodules

```
$ git submodule add git://github.com/ripple/rippled-ansible-role roles/rippled

### Example Playbook

```
- hosts: rippled
  roles:
    - { role: rippled }
```


## Role Variables

- `rippled_data_root`: Where rippled will save its database (default:
  `/var/lib/rippled`)
- `rippled_log_file`: Location of the rippled log file (default:
  `/var/log/rippled/rippled.log`)
- `rippled_ledger_history`: How much ledger history rippled should store
  (default: all)
- `rippled_validation_quorum`: Desired quorum (default: whatever rippled's
  default is)
- `rippled_config_template`: Template to write to /etc/rippled/rippled.cfg
  (default: the included `rippled.cfg`)
- `rippled_run_service`: If this role should manage the rippled service. Set to
  `false` to not have this role start/stop/reload the rippled service.
  (default: `true`)

### SSL
- `rippled_ssl_cert`: Path to the SSL cert to be installed on the server
  (default: none)
- `rippled_ssl_key`: Path to the SSL private key to be installed on the server
  (default: none)
- `rippled_ssl_verify`: Whether rippled should verify peer SSL certificates
  (default: `false`)

## License

MIT

## Author Information

Maintained by Torrie Fischer at Ripple Labs

torrie@ripple.com
