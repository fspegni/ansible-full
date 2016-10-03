# Batteries-included Ansible Docker image

[![](https://images.microbadger.com/badges/image/kobe25/ansible-full.svg)](https://microbadger.com/images/kobe25/ansible-full "Get your own image badge on microbadger.com")

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
