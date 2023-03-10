# configurations

## help
###### quickly seeing markdown edits
https://stackedit.io/app#

# git
```powershell
git init
git con
git remote add origin "https//:<git-key>#github.com/<user>/<etc>..."
```

```powershell
 # pushing to repo
git add . 
git commit -m (this means [m]essage) "<message>"
git push -u origin <branch>
```
# windows
## nvim/neovim ; install within Administrator/High-Elevation
### <div align="center">ALWAYS RESTART YOUR POWERSHELLS IN ORDER TO UPDATE PACKAGE CHANGES AND PATH CHANGES!!!</div>
https://github.com/neovim/neovim/wiki/Installing-Neovim
## installation of nvim with the following commands
```powershell
winget install Neovim.Neovim
```		
## making nvim callable from cmd line
```powershell
 # edit system variables
start rundll32.exe sysdm.cpl,EditEnvironmentVariables
 # within the path variable (PATH or Path) add the location of nvim's bin
 # ex. C:\Program Files\neovim\bin
```		

### remember to hit 'ok' when editing environment/env variables and to restart the cmd-line to refresh env variables

## <div align="center">configuring nvim</div>
```powershell
<# 
.SYNOPSIS
Stupidly you have to make your own nvim directory and config file

.DESCRIPTION
1. go to AppData directory from your $HOME directory
	- window $HOME variable saved upon cmdline initalization
2. go into AppData
3. go into local and ls
4. create an nvim folder, nvim-data is for data and plugins
#>
cd $HOME
cd Appdata
cd Local
mkdir nvim
cd nvim
# or notepad, DO not echo "" > init.vim as echo creates utf-16 txt files
# you add your configurations here
nvim init.vim


```
### reference 'init.vim' from my repo to see some configurations or  ...

## Plugin Tutorial
### <div align="center">Installation</div>
https://github.com/junegunn/vim-plug
```powershell
# beautiful line of code I don't understand, don't run any ole command btw
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```
The following code will create a folder in __nvim-data__
### <div align="center">Use</div>
```vim
call plug#begin()
Plug 'https://github.com/preservim/nerdtree' " allows you to navigate dirs
call plug#end()
```
The following code git clones the github link and connects it to your nvim environment
## Adding Most Windows Commands in Neovim
```vim
" within your init.vim file
:source mswin.vim
```

### other stuff
https://github.com/equalsraf/neovim-qt/issues/
		 - Being able to Copy and Paste; There is a file within C:\Program Files\neovim\share\runtime that is called mswin.vim that allows windows commands within vim
		 
- you can run cmdline commands from vim but it is very restrictive and linux like compared to native windows command execution experience. 
ex. :echo $VIMRUNTIME
- this command displays info that is only created when nvim is initalized!

