# jenkins-workshop

Save the Dockerfile and build a new image:

docker build -t jenkins:jcasc .

Once the build is done, run the new Jenkins image:

docker run --name jenkins --rm -p 8080:8080 jenkins:jcasc
