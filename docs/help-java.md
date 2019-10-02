# Java Help

After the acquisition of Java by Oracle, the Java environment has huge changes. 
And after release Java 8, significant evolutions happened on the language,
JDK and JVM. This file help to mount the developer environment and bring important tips.

## OpenJDK and providers

* https://www.baeldung.com/oracle-jdk-vs-openjdk
* https://en.wikipedia.org/wiki/OpenJDK
* https://blogs.oracle.com/java-platform-group/oracle-jdk-releases-for-java-11-and-later
* https://www.oracle.com/technetwork/java/javase/overview/oracle-jdk-faqs.html
* https://medium.com/@javachampions/java-is-still-free-2-0-0-6b9aa8d6d244
* http://openjdk.java.net/groups/conformance/JckAccess/jck-access.html
* http://londonjavacommunity.co.uk/

## OpenJDK options

* [Amazon Corretto, the OpenJDK by Amazon](https://aws.amazon.com/pt/corretto/)
* [OpenJDK by AdoptOpenJDK](https://adoptopenjdk.net/)
* [OpenJDK by Oracle](https://jdk.java.net/)

## Builder

* Maven
* Gradle

### Maven

https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html

Create a project

mvn archetype:generate "-DgroupId=lab.java" "-DartifactId=app" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DarchetypeVersion=1.4" "-DinteractiveMode=false"

mvn archetype:generate "-DgroupId=lab.java" "-DartifactId=app" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DinteractiveMode=false"


Create spring project

Create micronaut project


## IDEs

* VSCode
* Intelij IDE

## Sprint Start

curl -H 'Accept: application/json' https://start.spring.io

Options:

* groupId, artifactId version, name, description and packageName
* dependencies  
* type (maven-project, gradle-project)
* javaVersion (1.8, 11, 12)
* bootVersion
* language (java, kotlin, groovy)
* packaging (war, jar)
* applicationName
* baseDir

curl.exe https://start.spring.io/starter.zip -d groupId=sia -d artifactId=taco-cloud -d version=0.0.1-SNAPSHOT -d name=taco-cloud -d description='Taco Cloud Example' -d packageName=tacos -d dependencies=web,devtools,thymeleaf -d language=java -d type=maven-project -o taco-cloud.zip

