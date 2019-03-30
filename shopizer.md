# create vpc  
   aws ec2 create-vpc --cidr-block 10.10.0.0/16

# create  aws Ec2 in ubuntu  16.04
  name : ram
open connect
  copy example : ssh -i "ansible.pem" ubuntu@ec2-54-197-199-1.compute-1.amazonaws.com

open gitbrush-here
   paste  : ssh -i "ansible.pem" ubuntu@ec2-54-197-199-1.compute-1.amazonaws.com
   configure : yes 

      now intall java ,tomcat7 , mysql , openmrs

# java installation 
 https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04

 # tomcat7 installation
 https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-7-on-ubuntu-14-04-via-apt-get

check it  public ipaddress:8080

http://54.197.199.1:8080   


installation process below 

now open gitbrush 
beacame rootuser :  sudo-i

cd /var/lib/tomcat7

type ls
chose webapps

cd webapps 

type       wget htts.....link past here
https://liquidtelecom.dl.sourceforge.net/project/shopizer/source/shopizer-2.0-src.zip
paste the link 

this can be install shopizer completed





















  
