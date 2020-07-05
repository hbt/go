## What is it?

Disabled "unused imports" and "unused variable" errors during compilation.

## Similar project

uses warnings + flags and keeps up with latest versions of Golang

https://github.com/kstenerud/go/blob/master/README.md

## Why?

While experimenting, I need a compiler not a linter. 
Every single thing I type is not meant for immediate code review and release.


## Usage

Assuming go was never installed. 

```
cd ~
wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
tar -xf go1.14.2.linux-amd64.tar.gz
mv go go1.4
export PATH="$HOME/go1.4/bin:$PATH" 

cd ~
mkdir mygoroot
cd mygoroot
git clone https://github.com/hbt/go.git .
cd src
git checkout hbt
./make.bash
# cancel the testing phase

alias mgo=~/mygoroot/bin/go
```

Check Dockerfile

Keep both go version (official and this one). Use this one to speed up your development flow only and not for release.
Setup pre-commit checks to ensure the right version is used.
