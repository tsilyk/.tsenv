# TSenv 


#### Tmux conf from https://github.com/gpakosz/.tmux
```
    #sudo apt install sudo vim tmux xclip xsel 
    sudo apt install sudo vim tmux git
```
```
    usermod -aG sudo rob
```
```
    git clone https://github.com/tsilyk/.tsenv.git
```
```
	cd
	ln -s -f .tsenv/.tmux.conf
	ln -s -f .tsenv/.tmux.conf.local
	ln -s -f .tsenv/.vimrc
	ln -s -f .tsenv/.profile
```
```
	ln -f .tsenv/.tmux.conf
	ln -f .tsenv/.tmux.conf.local
	ln -f .tsenv/.vimrc
	ln -f .tsenv/.profile
```

#### Useful commands for systemctl
```
sudo systemctl list-unit-files -at service
sudo systemctl list-units -at service
sudo systemctl list-units -t service --state running

systemctl cat rsyslog.service
systemctl list-units --type target
systemctl get-default
sudo systemctl isolate multi-user.target
sudo systemctl isolate graphical.target
```

#### if not exist
```
systemctl reset-failed
```

#### Extract ip 
```
ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
```

#### delete empty line coments etc
```
grep "^[^#*/;]" host83.conf > host83.conf_
```

#### How to check if port is in use in
```
    sudo lsof -i -P -n | grep LISTEN
    sudo netstat -tulpn | grep LISTEN
    sudo ss -tulpn | grep LISTEN
    sudo lsof -i:22 ## see a specific port such as 22 ##
    sudo nmap -sTU -O IP-address-Here
```
```
    sudo lsof -i -P -n
    sudo lsof -i -P -n | grep LISTEN
```

#### Run the netstat command along with grep command to filter out port in LISTEN state:
```
    netstat -tulpn | grep LISTEN
    netstat -tulpn | more
```

#### OR filter out specific TCP port such as 443:
```
    netstat -tulpn | grep ':443'
```

### The netstat command deprecated for some time on Linux. Therefore, you need to use the ss command as follows:
```
    sudo ss -tulw
    sudo ss -tulwn
    sudo ss -tulwn | grep LISTEN
```

#### linux check system performance
```
curl -sL yabs.sh | bash -s -- -ig
```




