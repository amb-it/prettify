# Prettify your working environments

Contains files to prettify Ubuntu, IDE, text editor etc.

## BASH
- 10px padding + empty line after each prompt
- beautiful git history
- short commmands for `list files`, GIT, and so on. See [here](https://github.com/amb-it/prettify/blob/master/terminal/.bash_additional)

To make it works enter following code in a terminal:

```
git clone https://github.com/amb-it/prettify.git &&
cd prettify/terminal &&
cp gtk.css ~/.config/gtk-3.0/gtk.css &&
cp .bash_additional ~/.bash_additional &&
cat git_additional >> ~/.gitconfig &&
cat plug_bash_additional >> ~/.bashrc
```

and restart terminal.
