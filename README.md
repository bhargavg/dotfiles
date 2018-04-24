# My Dot files

## Installation
```bash
git clone https://github.com/bhargavg/dotfiles YOURPATH
cd YOURPATH
./install.sh
```

## SSH Config
To use different SSH keys for different hosts, edit `~/.ssh/config` as follows:

```ssh
Host HOSTNAME #Example: github.com
  IdentitiesOnly true
  IdentityFile /Users/USERNAME/.ssh/IDENTITY_FILE
  User YOUR_USERNAME
```


