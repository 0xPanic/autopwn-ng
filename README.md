# autopwn-ng
Because bash is the future

Tests default credentials on SSH and RDP servers at ISUCDCs. pulls down blue team flags on ssh servers as well.

dependencies are sshpass and xfreerdp 

## Usage
./autopwn.sh

comments at the top of the script explain what is needed to get the environment all set
there's no switches or input files yet so it has credentials/servernames/flag locations hard coded in.

## TODO
	- possibly script some windows commands (probably over SMB/WinRM and just gonna hope)
	- use cdc user if root doesn't work
	- integration with some C2
	- scrape iseage for hostnames and auto capture flags
