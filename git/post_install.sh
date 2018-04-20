#!/bin/bash
### Configure git

die_if_no_conf_src_set

echo "====================Git config Start===================="

if ! git config --global alias.lol > /dev/null 2>&1;
then
    echo "Adding 'lol' git alias"
    git config --global alias.lol "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"
fi

if ! git config --global alias.lool > /dev/null 2>&1;
then
    echo "Adding 'lool' git alias"
    git config --global alias.lool "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(auto)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)'"
fi

echo "=====================Git config End====================="
