
# Add a volume to a EC2 instance and mount it temporarily

* Attach the volume to the EC2 instance.
* Login in the instance via SSH
* With  `lsblk` check what volumes are available.
* Check if the volume has any data with this command: `sudo file -s /dev/xvdb`. If the response is `/dev/xvdb: data` then the volume is empty and we need to format it (next step).
* (only if volume is not ready) Format the volume with `sudo mkfs -t ext4 /dev/xvdb`. In this case we are using ext4
* `sudo mkdir /newvolume` (sudo is important)
* `sudo mount /dev/xvdb /newvolume/`
* `cd /newvolume && df -h .` to check is space available is correct.
* If you want to umount it, `umount /dev/xvdb`

# Mount it to survive reboots

* `sudo cp /etc/fstab /etc/fstab.bak` ⚠️
* add this line to fstab `/dev/xvdb       /newvolume   ext4    defaults,nofail        0       0` which corresponds to `device_name mount_point file_system_type fs_mntops fs_freq fs_passno`
* `sudo mount -a`
