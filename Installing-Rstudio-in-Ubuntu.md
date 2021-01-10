Installing Rstudio Desktop in Ubuntu


### 1. Install R in Ubuntu 20.04 (skip if R is installed)
sudo apt-get install r-base

### 2. Install gdebi (skip if installed)
sudo apt-get install gdebi-core


wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.1093-amd64.deb

sudo gdebi rstudio-1.3.1093-amd64.deb 
