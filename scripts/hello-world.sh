#!/bin/bash
# Vars
PLAYBOOK_NAME=hello-world
VERBOSITY=-vvvv # 0-5

# Launch Ansible Playbook
ansible-playbook $VERBOSITY \
-i $ANSIBLE_INVENTORY \
$ANSIBLE_PLAYBOOKS/$PLAYBOOK_NAME.yaml \
--vault-password-file $VAULT_PASSWORD_FILE