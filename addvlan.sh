#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 VLANID"
  echo "Example: $0 200"
  exit 1;
fi

if [[ -z $SSH_ADDR ]]; then
  echo Please specify envirornment variable SSH_ADDR
  exit 1;
fi

if [[ -z $SSH_HOST ]]; then
  echo Please specify envirornment variable SSH_HOST
  exit 1;
fi

if [[ -z $SSH_USER ]]; then
  echo Please specify envirornment variable SSH_USER
  exit 1;
fi

if [[ -z $SSH_PASS ]]; then
  echo Please specify envirornment variable SSH_PASS
  exit 1;
fi

VLAN_ID=$1 expect addvlan.expect
