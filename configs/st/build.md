[Download here](https://st.suckless.org://st.suckless.org/)


Requirements
------------
In order to build st you need the Xlib header files.

sudo apt install libx11-dev
sudo apt install libxft-dev
dpkg-query -L libx11-dev
dpkg-query -L libx11-6

Results for ubuntu 20:
X11INC = /usr/include/X11
X11LIB = /usr/lib/x86_64-linux-gnu


Fonts
--------------
[st advice](https://freedesktop.org/software/fontconfig/fontconfig-user.html)

list available fonts: 
$ fc-list
