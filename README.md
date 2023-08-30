
<img align="right" src="https://i.imgur.com/mAv9fj4.png" height="140"/>

# Ansible Net`Hops`

Ansible Nethops streamlines the deployment, setup, and usage of the Nethops project. With streamlined configurations, deploy Nethops features effortlessly.



## Usage


### Requirements
- **Docker**: Install from [Docker official repository](https://github.com/docker/docker-install).


### Configuration

Navigate to `playbook/vars.yaml` and tailor settings.

The `playbook` directory contains a sample playbook. Modify the `vars.yaml` and Ansible `host` file to target your preferred Nethops deployment server.

- `vars.yalml` :
```yaml
registry_enabled: false
registry_url: <registry_url>
registry_user: <user>
registry_password: <password>

image: ghcr.io/filouz/nethops:local

OVPN_DOMAIN: nethops.dev.example.com
OVPN_CA: Nethops CA
OVPN_CA_PWD: strongPassword
OVPN_PORT: 2455

OVPN_VOLUME: openvpn-data
OVPN_OVERRIDE_EXISTING_CA: false
OVPN_OVERRIDE_EXISTING_PROFILES: false

PROFILES_PATH: /playbook/ovpn
PROFILES:
  - name: user_1
    password: password_1
  - name: user_2
    password: password_2
  - name: user_3
    password: password_3
```

- `hosts` file:

```Hosts
localhost ansible_connection=local #  case you target the local environement 
```

### Run

```bash
make play
```

## Setup locally

### Requirements

- **Python**
- **Ansible**: Have Ansible in place. Install via pip:
```bash
pip install ansible
```

### Run

```bash
cd ./playbook
ansible-playbook main.yaml
```

## Contributing
Your contributions are appreciated! If you discover bugs or have enhancement suggestions, please create an issue or submit a pull request.

## License
This project is licensed under the GNU General Public License v3.0 (GPLv3).