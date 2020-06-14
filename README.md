# ministra-ansible-roles
Various roles used for Ministra installation, updating, and moving to another server

## Predefining variables
A couple of vars should be manually defined before running the [Ministra installation playbook](#ministra-installation-playbook "Ministra installation playbook"). For example, `exampleproject` file can be created inside the [host_vars directory](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#organizing-host-and-group-variables "host_vars directory")

Actually, only the name of the vars file and the timezone are custom values so the file could be generated with a help of a simple [hostvars-generator.sh](hostvars-generator.sh "hostvars-generator.sh") script

Usage:
```bash
./hostvars-generator.sh -t Europe/London -h exampleproject
```
Created `host_vars/exampleproject`:
```yaml
---
mysql_root_password:  q8aqhEsSDzFUK1dEIhvfpddKqx9CD38r
apache2_username: admin
apache2_password:  7IGcmkJ4x9FPxQ8G6J9VF1hFbEUoHai1
mysql_password:  3wD0Ydx3ND1j9CKy0yoDniY0fLgOrX8b
timezone: Europe/London
admin_panel_password: cJk0fnoRZXDRrLBQGlkOwiTgZxuT5ULa
```
## Ministra installation playbook
`ministra-install.yml` 
```yaml
---
- hosts: "{{ host }}"
  vars:
    ministra_portal_version: "{{ version }}"
  roles:
   - ministra-portal
```
Note to put the [Ministra archive](https://www.infomir.eu/eng/solutions/ministra-tv-platform/ "Ministra archive") inside the `ministra-portal/files/` directory as the roles in this repo come with no middleware sources.
 Example:
 ```bash
ansible-playbook ministra-install.yml -e "host=exampleproject" -e "version=5.5.0"
```
 and `ministra-portal/files/v5.5.0.zip` file has to be presented
