{% if salt.match.glob('git.lustfield.net') %}
extra_sudoers_sbin: ['git-saltevent']
extra_sudoers: ['gitea']

{% elif salt.match.glob('salt*.lustfield.net') %}
extra_sudoers_sbin: ['global_highstate']

{% elif salt.match.glob('mlweb*') %}
extra_sudoers_sbin: ['api-mlustfield']
extra_sudoers: ['api-mlustfield']

{% endif %}
