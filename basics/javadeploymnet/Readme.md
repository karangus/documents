# Goal: Deploy any java based web application into tomcat server

## How??
### 1. Install suitable java version
### 2. set java environment variables
### 3. Install tomcat with specific version
### 4. copy the java application (.war) into <tomcatdirectory>/webapps/<app.war>

## where or which operating systems needed to be supported
### Ubunutu 16 and centos 7


 sudo apt-get update
 sudo apt-get install tomcat7
 wget http://qt.in/test-war -o /var/lib/tomcat7/webapps/test.war



 -----------------------------------------------------
 apt:
        name: tomcat7
        update_cache: yes
        state: present 
get-url: 
  url: http://qt.in/test-war
  dest: /var/lib/tomcat7/webapps/test.war

handlers:      
  - name: restart tomcat7  
      service:
        name: tomcat7
        enabled: yes
        state: restarted
