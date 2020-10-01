# autopwn-ng
Because bash is the future

Tests default credentials on SSH and RDP servers at ISUCDCs. pulls down blue team flags on ssh servers as well.

requires sshpass and xfreerdp being installed

## Usage
./autopwn.sh

there's no switches or input files yet so it has credentials/servernames/flag locations hard coded in.

## TODO
	- plant red flags
	- try users other than root/administrator
	- possibly script some windows commands (probably over SMB and just gonna hope)
	- make RDP multiprocess like SSH is
	- debug other things that will arise after actually running this once
	- scrape iseage for hostnames
