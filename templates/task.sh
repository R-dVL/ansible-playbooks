#!/bin/bash
PLAYBOOK_NAME=task

# Configuration
VERBOSITY=-vv # 0-5
INVENTORY_PATH=/home/ansible/ansible-playbooks/inventories/hosts.yaml
PLAYBOOK_PATH=/home/ansible/ansible-playbooks/playbooks/$PLAYBOOK_NAME.yaml
LOGS_PATH=/home/ansible/logs/$PLAYBOOK_NAME
VAULT_PASSWORD_FILE=/home/ansible/vault_password_file

# Playbook vars (if necessary)
OPTION=$1

# Create logs directory
DATE=$(date +%Y-%m-%d)
mkdir -p $LOGS/$DATE

# Create log
TIME=$(date +%H-%M-%S)
LOGFILE=$LOGS/$DATE/$TIME.log

# Launch Ansible Playbook
ansible-playbook $VERBOSITY \
-i $INVENTORY_PATH \
$PLAYBOOK_PATH \
--vault-password-file $VAULT_PASSWORD_FILE \
-e "option=$OPTION" \
>> $LOGFILE 2>&1