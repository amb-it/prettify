# Prettify your working environments

Contains files to prettify Ubuntu, IDE, text editor etc.

## .bash_additional

prettify bash terminal

enter in a terminal:

```
git clone https://github.com/amb-it/prettify.git \
cd prettify \
cp .bash_additional ~/.bash_additional
```
- turn on .bash_additional (insert code below into the end of ~/.bashrc file):

```
if [ -f ~/.bash_additional ]; then
    . ~/.bash_additional
fi
```