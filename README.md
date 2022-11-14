# Setup workstation

This project set up my workstation, and after running the main script, everything will be ready quickly and cleanly.

## Preparing
This project works with ansible and git to accomplish its goals before running the main script install them.

* Install ansible and git
````bash
sudo apt install ansible git -y
````

* Clone this repository
````bash
git clone https://github.com/robsonrod/setup-workstation.git
````

* Execute the main script
````bash
./install.sh -f
````
- - **-f** it means complete installation

The inspiration for this project was [Caio's tools](https://github.com/caiodelgadonew/tools)
