# Ansible Installation
![Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Ansible_logo.svg/256px-Ansible_logo.svg.png)

## Ansible Controller 
- OS : Ubuntu 
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

# Installing Ansible on Ubuntu (Controller machine)
1.apt install software-properties-common
2.add-apt-repository --yes --update ppa:ansible/ansible
3.apt update
4.apt install -y ansible
5.vi /etc/ansible/ansible.cg
callback_whitelist = profile_tasks

# Define the first inventory
1.mkdir ansiblelab
2.touch inventory.ini
3.vi inventori.ini and define group web and db
[web]
node01 ansible_host=10.255.0.91 ansible_connection=ssh ansible_user=root
node02 ansible_host=10.255.0.92 ansible_connection=ssh ansible_user=root
node03 ansible_host=10.255.0.93 ansible_connection=ssh ansible_user=root

[db]
node04 ansible_host=10.255.0.94 ansible_connection=ssh ansible_user=root
4.save
5.test ping all , test ping web , test ping db
ansible web -m ping -i inventory.ini

