figlet "Nixos Updater"

read -p "Do you want to Update nixos? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will update nix for you!;;
	no ) echo Ok maybe not today...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

sudo nix-channel --update
sudo nixos-rebuild switch --upgrade
