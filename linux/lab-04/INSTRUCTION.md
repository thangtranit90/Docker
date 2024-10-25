# LAB 04

The purpose of this lab is to work in team of two/three people and achieve the following :

1. Create a shell script "webserver.sh" to perform the following actions :
	- Install Ngnix
	- Allow port 80 in inbound on guest Firewall
	- Rename the default home page "index.nginx-debian.html" to "index.nginx-debian.html.old"
	- Modify the name "Thien Huynh" on the custom page to "<Your Name>"

2. Use the Storage Account created previously to create a blob container "scripts"
3. Upload the script to that container
3.  Modify the template of the VM deployed in **lab-02** to :
	- Authorized "Internet" inbound on port 80
	- Add the **custom script extension** based on the script created previously

4. Update your previous deployment in Azure with the modified template

5. Display the home page
