#!/bin/bash
# Vars
PLAYBOOK_NAME=task
VERBOSITY=-v # 0-5

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