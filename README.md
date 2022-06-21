# DRAFT

napalm-brocade requires too many fixes to work with modern tooling. F-it, using expect.

## Usage

You must specify all of these environment variables before calling addvlan.sh

SSH_ADDR: The SSH address to connect to, hostname or IP

SSH_HOST: The hostname that the remote switch will display upon connection

SSH_USER: The automation user with privilege 0 on the switch

SSH_PASS: The password for the automation user

Prepend all of these to your call to addvlan.sh, and suffix with the VLAN ID to add.

Example:

    SSH_ADDR=127.0.0.1 SSH_HOST=brocade SSH_USER=automation SSH_PASS=totallysecurepassword ./addvlan.sh 101
