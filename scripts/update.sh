#!/bin/bash
# Configure Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Vars
PLAYBOOK_NAME=update
VERBOSITY=-vvvv # 0-5

# Paths
ANSIBLE_INVENTORY=/ansible-playbooks/inventories/hosts.yaml
ANSIBLE_PLAYBOOKS=/ansible-playbooks/playbooks
ANSIBLE_LOGS=/logs
VAULT_PASSWORD_FILE=/config/vault_password_file

# Create directory
DATE=$(date +%Y-%m-%d)
mkdir -p $ANSIBLE_LOGS/$PLAYBOOK_NAME/$DATE

# Create log
TIME=$(date +%H-%M-%S)
LOGFILE=$ANSIBLE_LOGS/$PLAYBOOK_NAME/$DATE/$TIME.log

# Launch Ansible Playbook
ansible-playbook $VERBOSITY \
-i $ANSIBLE_INVENTORY \
$ANSIBLE_PLAYBOOKS/$PLAYBOOK_NAME.yaml \
--vault-password-file $VAULT_PASSWORD_FILE \
>> $LOGFILE 2>&1