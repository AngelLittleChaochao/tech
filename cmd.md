# ssh
## ssh login
SSH is very convinient, especially we can login using sshkey without password. It is just two steps to login using your ssh public key.

Step1: Generate key paris

For client, using ssh-keygen to generate private/public key paris.

```sh
 $ ssh-keygen 
```

We'll find in ~/.ssh folder, the public/private file pairs are generated(default is id_rsa and id_rsa.pub). 

Step2: Copy public key to remote virtual machine

Copy the public key(default id_rsa.pub) to the file "authorized_keys" in ~/.ssh folder. Each line in this file is a public key. If you want to allow several client to connect to the machine, just copy your public key to this file.

Sample content of authorized_keys:

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyt7YfUT+2PslSL3n+uXKsezDkBn2cfojfGK7Y3QX4CWxFVOLso3dsnyNEihKzvgXwjxpdfaD4iVbtf49k75ECmgaKIMjHZGlM+fWuXfeA91Wnb3pF0UHzXEKoB77eoVXiMZY06b6zl11HuK5QG/Pk1pXETyuV1Yiltf+ihSnXSh9Zr9Qj7feu9oLkczF8NuSQQC0SHA8jd8oaxgovlRHGFdnUGhPV/DmOHeSX8K26HvKEWT0huWqARxDRV+cZPAnZKG7iZ2DdKkjilZGwfCEFfj70fbbhebUwgkrRQUA6896ZCaulaX6OucEbKR2EQiHSaM0sDHbMphqNfDYWTrBv chaochao@mac.local

ssh-rsa AAAA2222B3NzaC1yc2EAAAADAQABAAABAQCyt7YfUT+2PslSL3n+uXKsezDkBn2cfojfGK7Y3QX4CWxFVOLso3dsnyNEihKzvgXwjxpdfaD4iVbtf49k75ECmgaKIMjHZGlM+fWuXfeA91Wnb3pF0UHzXEKoB77eoVXiMZY06b6zl11HuK5QG/Pk1pXETyuV1Yiltf+ihSnXSh9Zr9Qj7feu9oLkczF8NuSQQC0SHA8jd8oaxgovlRHGFdnUGhPV/DmOHeSX8K26HvKEWT0huWqARxDRV+cZPAnZKG7iZ2DdKkjilZGwfCEFfj70fbbhebUwgkrRQUA6896ZCaulaX6OucEbKR2EQiHSaM0sDHbMphqNfDYWT chaochao2@mac.local

```

## ssh login by password

Some time we allow someone to login by ssh key and also allow password. We can config file /etc/ssh/sshd_config

```
$ sudo vim /etc/ssh/sshd_config

```

```
PubkeyAuthentication yes
PasswordAuthentication yes
```

If the user doesn't have a password, and you want to generate a password to login, so you can run the following command to set your new password. Assume the user is 'test'.

```
$ sudo passwd -d test
$ sudo passwd test
```

