read -p "Do you want to update nixos? (yes/no) " yn

case $yn in 
	yes ) echo Nixos is going to be updated.!;;
	no ) echo Ok maybe not today...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

sudo nix-channel --update
sudo nixos-rebuild switch --upgrade
