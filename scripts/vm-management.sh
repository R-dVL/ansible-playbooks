#!/bin/bash
# Configure Path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Vars
PLAYBOOK_NAME=update
VERBOSITY=-v # 0-5

# Create directory
DATE=$(date +%Y-%m-%d)
mkdir -p /logs/$PLAYBOOK_NAME/$DATE

# Create log
TIME=$(date +%H-%M-%S)
LOGFILE=/logs/$PLAYBOOK_NAME/$DATE/$TIME.log

# Args
OPTION=$1

# Launch Ansible Playbook
ansible-playbook $VERBOSITY \
-i $ANSIBLE_INVENTORY \
$ANSIBLE_PLAYBOOKS/$PLAYBOOK_NAME.yaml \
--vault-password-file $VAULT_PASSWORD_FILE \
-e "option=${OPTION}" \
>> $LOGFILE 2>&1