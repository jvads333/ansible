#!/bin/bash
# run_sequence.sh
# 1) create only the dhcp VM
ansible-playbook -i ../inventory.ini create_vms.yml --limit dhcp
# 2) configure kea on dhcp
ansible-playbook -i ../inventory.ini kea_dhcp.yml
# 3) create the other VMs (dns,nfs,web)
ansible-playbook -i ../inventory.ini create_vms.yml --limit dns,nfs,web
