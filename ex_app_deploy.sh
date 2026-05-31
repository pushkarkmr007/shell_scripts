#! /bin/bash 

#code to deploy django app

# cloning repo
git_clone(){   
        echo "cloning the git repo"
        git clone https://github.com/LondheShubham153/django-notes-app.git
}

#install requirement 

install_requirement()
           {
           yum -y update
           yum install -y docker
           yum install -y nginx
          }

required_restart(){
            systemctl start nginx
            systemctl enable nginx
            systemctl start docker
            systemctl enable docker
    }      
            
deployment() {
    docker build -t notes-app .
    docker run -d -p 8000:8000 notes-app:latest
}

echo "*********** Deployment Started **************"

if ! git_clone;
then
        echo "unable to download the git file..file may already exist pls check"
        cd django-notes-app
fi

install_requirement

if ! required_restart
then 
        echo "system fault identified"
        exit 1
fi

deployment

echo "*********** Deployment Completed **************"
