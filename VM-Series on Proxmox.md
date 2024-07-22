1. After you SSH into you ProxMox Host, download QCOW2 image from support portal
```
wget https://download.somelink.com/PA-VM-KVM-11.0.2.qcow2
```
2. Create the VM
```
qm create 220 --name pan-fw-scm-220 --bios seabios --numa 0 --cpu host --ostype l26 --cores 2 --sockets 1 --memory 6144  --serial0 socket --agent enabled=1 --scsihw virtio-scsi-pci --boot order='virtio0' --hotplug disk,network,usb,cpu --net0 virtio,bridge=vmbr0,tag=10
```
or more readable format
```
qm create 220 \
--name pan-fw-scm-220 \
--bios seabios \
--numa 0 \
--cpu host \
--ostype l26 \
--cores 2 \
--sockets 1 \
--memory 6144 \
--serial0 socket \
--agent enabled=1 \
--scsihw virtio-scsi-pci \ 
--boot order='virtio0' \
--hotplug disk,network,usb,cpu \ 
--net0 virtio,bridge=vmbr0,tag=10 \
--net0 virtio,bridge=vmbr0,tag=55 \
--net0 virtio,bridge=vmbr0,tag=56 
```

Adjust it accordinly to your settings and enviroment, especially values for --name and all network(s)

3. Import the VM-Series disk
```
qm importdisk 220 /tmp/PA-VM-KVM-11.0.4-h1.qcow2 lvol-dir --format qcow2
```

4. Attach disk to your VM 
```
qm set 220 --virtio0 lvol-dir:220/vm-220-disk-0,discard=on,cache=writeback
```

5. Start your VM
   ```
   qm start 220
   ```
   
