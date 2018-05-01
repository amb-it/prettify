# Prettify your working environments

Contains files to prettify Ubuntu, IDE, text editor etc.

## .bash_additional

prettify bash terminal

- copy this file to home directory
- include this file bash (insert code below into the end of ~/.bashrc file):

```
if [ -f ~/.bash_additional ]; then
    . ~/.bash_additional
fi
```