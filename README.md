# Ansible Playbooks
Automation playbooks used along server crontab.


## Table of Contents
1. [Inventory](#inventory)
2. [Playbooks](#Playbooks)
3. [Vault](#Vault)


## Inventory
Each configured host has an ansible user with the necessary permissions to run these playbooks.
The hosts are accessed with the ansible user and password via `ssh-pass`.


## Playbooks
### Backup
Back up important data from the `servers` host group using the `backup-folder.yaml` role and overriding the default variables with the source path and destination path of the folder.


## Vault
Secrets such as ansible user password are encrypted and stored using `ansible-vault`, and vault's password is locally stored in the machine so that a ansible play would be something like this using a crontab:
```bash
0 6 15 * * ansible-playbook -i /home/ansible/ansible-playbooks/inventories/hosts.yaml /home/ansible/ansible-playbooks/playbooks/backup.yaml --vault-password-file /home/ansible/vault_password_file
```
