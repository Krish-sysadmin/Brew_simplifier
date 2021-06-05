# Brew_simplifier (Notes for myself)
Shell script to simplify brew


Install brew 

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cd Downloads
curl -O  https://raw.githubusercontent.com/Krish-sysadmin/Brew_simplifier/main/Brew_simplifier.command
brew install wget shc
shc -f Brew_simplifier.command
mv Brew_simplifier.command.x brewsimple
mv brewsimple /usr/local/bin/

```
