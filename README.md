# To Setup The GCP Server
---( **Each Step Is In Order** )---

To begin with:
- Setup you GCP Instance:
	- This requires certain options to be changed:
		- **Name** 
		- **Region:** Change to ***europe-west2-c***
		- **Firewall:** Allow both HTTPS and HTTP traffic 
		> Click "Management, security, disks, networking, sole tenancy"
		>
		> Click "Networking"
		- **Network Tags:** add "project" (You'll make it next)
- Copy the git clone link 

**Stop The Server As It Auto-Runs**

# Firewall Rules
>Click "Navigation Menu"

>Click "VPC Network"

>Click "Firewall Rules"

Create a new Firewall rule.
 - **Name:** (It can be whatever)
 - **Target Tags:** Add "project" (or whatever the network tag was called)
 - **Source IP Ranges:** Add "0.0.0.0/0"
 - **Protocols and Ports:** Click "tcp", add "8888"
>Click "Create"

# Static IP Address 
> Click "External IP Address"

Find the "Type" Column
- Change the "ephemeral" to Static
- Menu will Appear (Name it)

# **Start Server.**
**Run All Commands From The User Home Folder**

**Your Terminal Should Look Like This: `username@instanceName:~$`**

Once the terminal has loaded:
**Input:** 
- `git clone https://github.com/Matt25969/WildflySetupBasic.git`
- `chmod +x WildflySetupBasic/setupServer.sh`
- `sudo sh WildflySetupBasic/setupServer.sh`
- This will start Wildfly in the background, should you have the terminal, hit `Enter` 
  once you see a mention of `"services are lazy, passive or on-demand"`
  (Or spam `enter` if that helps...)

**With Thanks to James-Ingram for his inspiration**

