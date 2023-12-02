# Ansible Installation
![Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Ansible_logo.svg/256px-Ansible_logo.svg.png)

## Ansible Controller 
- OS : Ubuntu 18.04.6 LTS
- Python : 
- Install 
```bash
  apt install python3
  apt install python
```
- Openssh : openssh-client-ssh1 , openssh-client
- Install 
```bash
  apt install openssh-client-ssh1
  apt install openssh-client
```
- Ansible : ansible 2.9.27

# Installing Ansible on Ubuntu (Controller machine)
1. Install software-properties-common
```bash
apt install software-properties-common
```
2. Add Repo
```bash
add-apt-repository --yes --update ppa:ansible/ansible
```
3. Update OS
```bash
apt update
```
4. Install Ansible
```bash
apt install -y ansible
```
5. Config optional for ansible for can see time stamp ( not require )
```bash
vi /etc/ansible/ansible.cg
callback_whitelist = profile_tasks
```
# Define the first inventory
1. Create Ansible folder
```bash
    mkdir ansiblelab
```
2. Create file inventory
```bash
    touch inventory.ini
```
3. Group hosting in inventory
```bash
    vi inventori.ini
```
```bash
    [web]
    node01 ansible_host=10.255.0.91 ansible_connection=ssh ansible_user=root
    node02 ansible_host=10.255.0.92 ansible_connection=ssh ansible_user=root
    node03 ansible_host=10.255.0.93 ansible_connection=ssh ansible_user=root
```
```bash
    [db]
    node04 ansible_host=10.255.0.94 ansible_connection=ssh ansible_user=root
```
4.save <br>
5.test ping all , test ping web , test ping db
```bash
ansible web -m ping -i inventory.ini
ansible db -m ping -i inventory.ini
```

