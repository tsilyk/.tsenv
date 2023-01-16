# TSenv 


Tmux conf from https://github.com/gpakosz/.tmux


    #sudo apt install sudo vim tmux xclip xsel 
    sudo apt install sudo vim tmux git
    
    usermod -aG sudo rob

    git clone https://github.com/tsilyk/.tsenv.git

	cd
	ln -s -f .tsenv/.tmux.conf
	ln -s -f .tsenv/.tmux.conf.local
	ln -s -f .tsenv/.vimrc
	ln -s -f .tsenv/.profile

	ln -f .tsenv/.tmux.conf
	ln -f .tsenv/.tmux.conf.local
	ln -f .tsenv/.vimrc
	ln -f .tsenv/.profile

Useful
sudo systemctl list-unit-files -at service
sudo systemctl list-units -at service
 sudo systemctl list-units -t service --state running

systemctl cat rsyslog.service
systemctl list-units --type target
systemctl get-default
sudo systemctl isolate multi-user.target
sudo systemctl isolate graphical.target
