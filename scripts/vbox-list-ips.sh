#!/bin/bash

VM_LIST=$(VBoxManage list runningvms)
while IFS= read -r line; do
    VMNAME=${line%\"*}
    VMNAME=${VMNAME##*\"}
    IP_PROPERTY=$(VBoxManage guestproperty enumerate $VMNAME --patterns *IP)
    if [[ $IP_PROPERTY = "No properties found." ]]; then
        IP="Not available (install vbox-additions)"
    else
        IP=${IP_PROPERTY%", timestamp"*}
        IP=${IP##*"value: "}
    fi
    echo "$VMNAME: $IP"
done <<< "$VM_LIST"
