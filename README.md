# os-sample-java-war
Sample Hello World Java Web Application for Red Hat OpenShift (using a Dockerfile and a WAR file)

WAR file built from:
```
$ git clone https://github.com/wicksy/os-sample-java-web
$ cd os-sample-java-web
$ mvn package
```

To build and deploy in OpenShift:
```
$ oc new-app https://github.com/wicksy/os-sample-java-war.git --name=hello-war
```

To verify deployment:
```
$ curl http://$(oc get svc | awk '/^hello-war/ {print $2}'):8080
<html>
<body>
<h2>Hello World with OpenShift!</h2></br>
My second commit to an OpenShift App
</body>
</html>
$
```