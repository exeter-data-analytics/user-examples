Example script showing how to rsync a folder and it's contents from the cluster to a NASBox.

Assumes that the following has been done:

1) ssh keys generated and present at both source and destination

2) config file present in - /nobackup/nfs/home/ISAD/jd708/.ssh. This config file looks as follows:

#Add Hosts below 
Host server1
HostName "NAS IP Address"
User ???
Port 22
IdentityFile "path to keys"

