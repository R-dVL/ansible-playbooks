#!/bin/bash
# Vars
VERBOSITY=-vv # 0-5
ANSIBLE_INVENTORY=/home/ansible/ansible-playbooks/inventories/hosts.yaml
ANSIBLE_PLAYBOOK=/home/ansible/ansible-playbooks/playbooks/backup.yaml
VAULT_PASSWORD_FILE=/home/ansible/vault_password_file
LOGS=/home/ansible/logs/backup

# Create directory
DATE=$(date +%Y-%m-%d)
mkdir -p $LOGS/$DATE

# Create log
TIME=$(date +%H-%M-%S)
LOGFILE=$LOGS/$DATE/$TIME.log

# Launch Ansible Playbook
ansible-playbook $VERBOSITY \
-i $ANSIBLE_INVENTORY \
$ANSIBLE_PLAYBOOK \
--vault-password-file $VAULT_PASSWORD_FILE \
>> $LOGFILE 2>&1
