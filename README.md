# Purple clouds

To run provisioning execute:

```
ansible-playbook playbook.yml -i hosts.ini --limit prod -e 'ansible_python_interpreter=/usr/bin/python3'
```