# Java Help

After the acquisition of Java by Oracle, the Java environment has huge changes. 
And after release Java 8, significant evolutions happened on the language,
JDK and JVM. This file help to build the developer environment and bring important tips.

## OpenJDK


**Understanding Providers:**

* https://www.baeldung.com/oracle-jdk-vs-openjdk
* https://en.wikipedia.org/wiki/OpenJDK
* https://blogs.oracle.com/java-platform-group/oracle-jdk-releases-for-java-11-and-later
* https://www.oracle.com/technetwork/java/javase/overview/oracle-jdk-faqs.html
* https://medium.com/@javachampions/java-is-still-free-2-0-0-6b9aa8d6d244
* http://openjdk.java.net/groups/conformance/JckAccess/jck-access.html
* http://londonjavacommunity.co.uk/

**My selected options**

1. [OpenJDK by AdoptOpenJDK](https://adoptopenjdk.net/)
2. [Zulu by Azul Systems](https://www.azul.com/downloads/zulu-community)
3. [Amazon Corrett by Amazon](https://aws.amazon.com/pt/corretto/)
4. [OpenJDK by java.net/Oracle](https://jdk.java.net/)


**News about new java lanaguage features**

https://blog.caelum.com.br/o-minimo-que-voce-deve-saber-de-java-10/
https://www.infoq.com/br/articles/java-10-var-type/
https://www.pluralsight.com/blog/software-development/java-9-new-features
https://www.infoq.com/br/news/2013/10/tudo-sobre-java-8/    

## Simple

javac -cp <classes folder> -d <classes folder taget> project/src/demo/Simple.java

java -cp <classes folder> <Main class>

javadoc -d <documentation path>
	-sourcepath <source code path>
	-subpackages <name of the root packages>

## Tools

* [VSCode](https://code.visualstudio.com/)
* Eclipse
* Intelij IDE
* [SDKman](https://sdkman.io/)
* Maven
* Gradle
* [LiveReload](http://livereload.com/)
* [Spring Boot Maven Plugin](https://docs.spring.io/spring-boot/docs/current/maven-plugin/plugin-info.html)
* [Spring Boot Gradle Plugin](https://docs.spring.io/spring-boot/docs/current/gradle-plugin/reference/html/)
* https://projectlombok.org/
* https://checkerframework.org/

## Builder

* Maven
* Gradle

### Maven

https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html

Create a project

mvn archetype:generate "-DgroupId=lab.java" "-DartifdactId=app" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DarchetypeVersion=1.4" "-DinteractiveMode=false"

mvn archetype:generate "-DgroupId=lab.java" "-DartifactId=app" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DinteractiveMode=false"


Create spring project

Create micronaut project

## Start Spring

For create spring project is recomended to use the webapp 
[Start Sprin](https://start.spring.io).

Command to see all options:

    curl -H 'Accept: application/json' https://start.spring.io

Options summary:

* groupId, artifactId version, name, description and packageName
* dependencies
* type (maven-project, gradle-project)
* javaVersion (1.8, 11, 12)
* bootVersion
* language (java, kotlin, groovy)
* packaging (war, jar)
* applicationName
* baseDir

Example of command to create a simple spring boot project:

    curl.exe https://start.spring.io/starter.zip -d groupId=sia -d artifactId=taco-cloud -d version=0.0.1-SNAPSHOT -d name=taco-cloud -d description='Taco Cloud Example' -d packageName=tacos -d dependencies=web,devtools,thymeleaf -d language=java -d type=maven-project -o taco-cloud.zip

Spring boot maven plugin:

    mvn spring-boot:help 


Tasks for uberjar

```groovy
jar {
    archiveFileName = 'capital-gains.jar'
    manifest {
        attributes("Implementation-Title": "capital-gains",
                "Implementation-Version": version,
                "Main-Class": application.mainClass)
    }
}

task uberJar(type: Jar, description: 'Package up files used for generating documentation.') {
    archiveFileName = 'capital-gains.jar'

    manifest {
        attributes("Implementation-Title": "capital-gains",
                "Implementation-Version": version,
                "Main-Class": application.mainClass)
    }

    from sourceSets.main.output

    dependsOn configurations.runtimeClasspath
    from {
        configurations.runtimeClasspath.findAll { it.name.endsWith('jar') }.collect { zipTree(it) }
    }
}
```

## Java 11

### Jshell

[Jshell Documentation](https://docs.oracle.com/en/java/javase/11/jshell/)

Commands:
    
    jshell> /<Tab> -<Tab>

After Tab commands or options will be show.

Scripts:

    jshell> /set start mystartup.jsh
    
    jshell --startup mystartup.jsh
    
    jshell> /save mysnippets.jsh
    
    jshell mysnippets.jsh


## Documentation

Java Tutorial Java8+ https://docs.oracle.com/javase/tutorial/tutorialLearningPaths.html

JDK 17 https://docs.oracle.com/en/java/javase/17/books.html


https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/io/InputStreamReader.html

https://docs.oracle.com/en/java/javase/17/docs/api/help-doc.html

https://docs.oracle.com/en/java/javase/11/docs/api/

https://www.oracle.com/java/technologies/javase/jdk8-jre8-suported-locales.html

Guide for java stream https://dzone.com/articles/your-guide-to-java-streams-tutorials-and-articles
