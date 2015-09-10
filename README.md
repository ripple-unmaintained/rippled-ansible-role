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
```

### Example Playbook

```
- hosts: rippled
  roles:
    - { role: rippled }
```


## Role Variables

- `rippled_start_mode`: In what mode to run rippled service. Set to `false` to
  not have this role start/stop/reload the rippled service (default: `net`)
- `rippled_package_state`: Same as the state parameter to ansible's apt module
  (default: `present`)
- `rippled_config_template`: Template to write to /etc/rippled/rippled.cfg
  (default: the included `rippled.cfg`)
- `rippled_port_rpc`: Allow rpc requests on port 51234 (default: false)
- `rippled_port_rpc_admin`: Allow admin rpc requests locally on port 5005
  (default: true)
- `rippled_port_wss_public`: Allow websocket connections on port 51233
  (default: false)
- `rippled_rpc_startup`: List of RPC commands to run at startup (default: none)
- `rippled_ips`: List of hostnames or ips where the Ripple protocol is served
  (default: `[ r.ripple.com 51235 ]`)
- `rippled_ips_fixed`: List of IP addresses or hostnames to which rippled should
  always attempt to maintain peer connections with (default: `none`)
- `rippled_peer_private`: Whether rippled should request peers to not broadcast
  your address (default: `0`)
- `rippled_peers_max`: The largest number of desired peer connections
  (default: implementation-defined lower limit)
- `rippled_node_size`: Tunes the servers based on the expected load and
  available memory (default: `tiny`)
- `rippled_validation_quorum`: the minimum number of trusted validations a
  ledger must have before the server considers it fully validated (default: `0`)
- `rippled_ledger_history`: The number of past ledgers to acquire on server
  startup and the minimum to maintain while running (default: `256`)
- `rippled_fetch_depth`: The number of past ledgers to serve to other peers that
  request historical ledger data (default: `full` (no limit))
- `rippled_validation_seed`: Either a validation seed or key to perform
  validation (default: none)
- `rippled_validators`: List of nodes to always accept as validators
  (default: none)
- `rippled_validators_site`: Specifies where to find validators.txt for UNL
  boostrapping and RPC unl_network command (default: none)
- `rippled_node_db_type`: Rippled database type (default: `rocksdb`)
- `rippled_node_db_path`: Where rippled will save its database (default:
  `/var/lib/rippled`)
- `rippled_online_delete`: Enable automatic purging of older ledger information.
  Maintain at least this number of ledger records online (default: none)
- 'rippled_advisory_delete': Require administrative RPC call "can_delete" to
  enable online deletion of ledger records (default: none)
- `rippled_debug_logfile`: Location of the rippled log file (default:
  `/var/log/rippled/rippled.log`)
- `rippled_cluster_nodes`: List of node public keys to extend full trust to
  (default: none)

### SSL
- `rippled_ssl_cert`: Path to the SSL cert to be installed on the server
  (default: none)
- `rippled_ssl_chain`: Path to the SSL chain cert to be installed on the server
  (default: none)
- `rippled_ssl_key`: Path to the SSL private key to be installed on the server
  (default: none)
- `rippled_ssl_verify`: Whether rippled should verify peer SSL certificates
  (default: `1`)

## License

MIT

## Author Information

Maintained by Torrie Fischer at Ripple Labs

torrie@ripple.com
