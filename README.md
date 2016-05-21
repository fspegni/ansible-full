# Batteries-included Ansible Docker image

Mandatory file:

* `inventory.ini`

Optional directories:

* `roles/`
* `filter_plugins/`
* `lookup_plugins/`

Then run a playbook:

```bash
$ docker run --rm kobe25/ansible-full:latest \
    ansible-playbook /path/to/playbook.yml
```
