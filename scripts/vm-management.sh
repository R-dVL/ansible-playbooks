#!/bin/bash
# Vars
PLAYBOOK_NAME=backup
VERBOSITY=-vv # 0-5

# Create directory
DATE=$(date +%Y-%m-%d)
mkdir -p $LOGS/$DATE

# Create log
TIME=$(date +%H-%M-%S)
LOGFILE=$LOGS/$DATE/$TIME.log

# Args
OPTION=$1

# Launch Ansible Playbook
ansible-playbook $VERBOSITY \
-i $ANSIBLE_INVENTORY \
$ANSIBLE_PLAYBOOK \
--vault-password-file $VAULT_PASSWORD_FILE \
-e "option=${OPTION}" \
>> $LOGFILE 2>&1