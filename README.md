# Prettify your working environments

Contains files to prettify Ubuntu, IDE, text editor etc.

## .bash_additional

prettify bash terminal

enter in a terminal:

```
git clone https://github.com/amb-it/prettify.git &&
cd prettify &&
cp terminal/.bash_additional ~/.bash_additional &&
cp terminal/gtk.css ~/.config/gtk-3.0/gtk.css
```
- turn on .bash_additional (insert code below into the end of ~/.bashrc file):

```
if [ -f ~/.bash_additional ]; then
    . ~/.bash_additional
fi
```