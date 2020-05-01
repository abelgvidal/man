
- create EBS volume (for example )
- ssh in machine
- `lsblk` 
- we see what block devices are attached
- sudo file -s /dev/xvdf
- if the result if "file" then it is not formatted as file system
- sudo mkfs -t xfs /dev/xvdf        (a filesystem xfs is created)
- sudo file -s /dev/xvdf
- sudo mount /dev/xvdf /ebstest
