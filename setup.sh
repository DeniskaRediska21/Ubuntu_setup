sudo apt update
sudo apt upgrade
sudo apt install kakoune
sudo apt install git
git config --global user.email "lenis@lenis"
git config --global user.name "DeniskaRediska21"
ssh-keygen -t ed25519 -C "lenis@lenis"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

cd .config/

mkdir kak
cd kak
git init -b main
git remote add origin git@github.com:DeniskaRediska21/Kakoune-configuration.git
git pull origin main
cd ..

mkdir tmux
git init -b main
git remote add origin git@github.com:DeniskaRediska21/Tmux_configuration.git
git pull origin main

cd

sudo apt install build-essential gcc dirmngr ca-certificates software-properties-common apt-transport-https dkms curl -y
curl -fSsL https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/3bf863cc.pub | sudo gpg --dearmor | sudo tee /usr/share/keyrings/nvidia-drivers.gpg > /dev/null 2>&1
sudo apt install nvidia-driver-460 cuda-drivers-460

sudo reboot


