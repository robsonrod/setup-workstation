# Setup workstation

This project set up my workstation, and after running the main script, everything will be ready quickly and cleanly.

## Disclaimer

This project set things up the way I like them. Please copy everything that seems applicable to you.

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

## Others 
I have been using i3-wm with i3status-rs. If you want to use my config, I suggest you compile and install i3status-rs following the official [instructions](https://github.com/greshake/i3status-rust)



The inspiration for this project was [Caio's tools](https://github.com/caiodelgadonew/tools)
