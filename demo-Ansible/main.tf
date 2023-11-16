terraform {
  required_providers {
    ansible = {
      source = "ansible/ansible"
      version = "1.1.0"
    }
  }
}
resource "ansible_playbook" "playbook" {
  playbook   = "test.yaml"
  name       = "192.168.1.149"
 
}
output "result" {
  value = ansible_playbook.playbook.ansible_playbook_stdout
}