
### 1. Install R in Ubuntu 20.04 (skip if R is installed)
sudo apt-get install r-base

### 2. Install gdebi (skip if installed)

sudo apt-get install gdebi-core

### 3. Download Rstudio server version
wget https://download2.rstudio.org/server/xenial/amd64/rstudio-server-1.3.1093-amd64.deb

### 4. Install Rstudio server version 
sudo gdebi rstudio-server-1.3.1093-amd64.deb
