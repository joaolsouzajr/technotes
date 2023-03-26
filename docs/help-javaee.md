# Java Enterprise Edition

Java Platform, Enterprise Edition (Java EE) is the standard in community-driven enterprise software. 
Java EE is developed using the Java Community Process, with contributions from industry experts, 
commercial and open source organizations, Java User Groups,and countless individuals. 
Each release integrates new features that align with industry needs, improves application portability, 
and increases developer productivity [[1]](https://www.oracle.com/java/technologies/java-ee-glance.html).

## Inrodution

The Java EE platform is built on top of the Java SE platform. The Java EE platform provides an API and runtime environment for developing and running large-scale, multi-tiered, scalable, reliable, and secure network applications.

## History
The first version was released in December of 1999. Until version 1.4, the main features of J2EE platform 
it was very verbose with a lot overhead to develop and to run the  applications. 
And the first implementations of EJB (until 2.x) it was a big problem.

The old versions:

* J2EE 1.2 (December 12, 1999)
* J2EE 1.3 (September 24, 2001)
* J2EE 1.4 (November 11, 2003)

After those versions, big changes happened, and the platform received a new name,
Java Enterprise Edition (Java EE).

### Java EE 1.5


Principal Vendor: Sun/Oracle

Mantainers: Sun and JCP

Documentations:

* [Overview](https://docs.oracle.com/javaee/5/)
* [Java EE 5 Tutorial](https://docs.oracle.com/javaee/5/tutorial/doc/)
* [Java EE 5 API Documentation](https://docs.oracle.com/javaee/5/api/)
* [Java EE 5 Technologies](https://www.oracle.com/technetwork/java/javaee/tech/javaee5-jsp-135162.html)

Main features:

* [Java EE Web Services Technologies](https://www.oracle.com/technetwork/java/javaee/tech/webservices-139501.html)
    * Java API for RESTful Web Services (JAX-RS) – JSR 311
    * Implementing Enterprise Web Services
    * Java API for XML-Based Web Services (JAX-WS) 2.0
    * Java API for XML-Based RPC (JAX-RPC) 1.1
    * Java Architecture for XML Binding (JAXB) 2.0
    * SOAP with Attachments API for Java (SAAJ)
    * Web Service Metadata for the Java Platform
* [Web Application Technologies](https://www.oracle.com/technetwork/java/javaee/tech/webapps-138511.html)
    * JavaServer Faces 1.2
    * JavaServer Pages 2.1
    * JavaServer Pages Standard Tag Library
    * Java Servlet 2.5
* [Enterprise Application Technologies](https://www.oracle.com/technetwork/java/javaee/tech/entapps-138775.html)
    * Common Annotations for the Java Platform
    * Enterprise JavaBeans 3.0/3.1
    * Dependency Injection for Java 1.0
    * Bean Validation
    * J2EE Connector Architecture 1.5/1.6
    * JavaBeans Activation Framework (JAF) 1.1
    * JavaMail 1.4
    * Java Message Service API
    * Java Persistence/Java Persistence API 2.0
    * Java Transaction API (JTA)
* [Java EE Management and Security Technologies](https://www.oracle.com/technetwork/java/javaee/tech/management-139662.html)
    * J2EE Application Deployment
    * J2EE Management
    * Java Authorization Contract for Containers
* Java EE-related Specs in Java SE
    * JDBC 3.0
    * Streaming API for XML (StAX) 1.0

Reference implmentations:


Application Servers:

* [Java EE 5 Compatibility](https://www.oracle.com/technetwork/java/javaee/overview/compatibility-javaee5-jsp-141098.html)
    * Apache Geronimo-2.1.4
    * Oracle WebLogic Server 10g R3
    * Oracle Application Server 11 
    * IBM WebSphere Application Server v7
    * JBoss Application Server 5.0
    * JBoss Enterprise Application Platform 5
    * Sun GlassFish Enterprise Server 9.1
    * GlassFish Application Server v2

[Authorized Licensees of the Java EE Platform](https://www.oracle.com/downloads/licenses/javaee-licensees.html)

### Java EE 1.6

Principal Vendor: Oracle and JCP

Mantainers: JCP

Documentations:

* [Overview](https://docs.oracle.com/javaee/6/index.html)
* [Java EE 6 Tutorial](https://docs.oracle.com/javaee/6/tutorial/doc/)
* [Java EE 6 API](https://docs.oracle.com/javaee/6/api/)
* [Java EE 6 Introdution](https://docs.oracle.com/javaee/6/firstcup/doc/index.html)

Main features:

* [Web Services Technologies](https://www.oracle.com/technetwork/java/javaee/tech/webservices-139501.html)
    * Java API for RESTful Web Services (JAX-RS) 1.1 
    * Implementing Enterprise Web Services 1.3
    * Java API for XML-Based Web Services (JAX-WS) 2.2
    * Java Architecture for XML Binding (JAXB) 2.2
    * JWeb Services Metadata for the Java Platform
    * Java API for XML-Based RPC (JAX-RPC) 1.1
    * Java APIs for XML Messaging 1.3
    * Java API for XML Registries (JAXR) 1.0
* [Web Application Technologies](https://www.oracle.com/technetwork/java/javaee/tech/webapps-138511.html)
    * Java Servlet 3.0 
    * JavaServer Faces 2.0
    * JavaServer Pages 2.2/Expression Language 2.2
    * Standard Tag Library for JavaServer Pages (JSTL) 1.2
    * Debugging Support for Other Languages 1.0
* [Enterprise Application Technologies](https://www.oracle.com/technetwork/java/javaee/tech/entapps-138775.html)
    * Contexts and Dependency Injection for Java (Web Beans 1.0)
    * Enterprise JavaBeans 3.1 (includes Interceptors 1.1)
    * Dependency Injection for Java 1.0
    * Bean Validation 1.0 
    * J2EE Connector Architecture 1.6
    * JavaBeans Activation Framework (JAF) 1.1
    * JavaMail 1.4
    * Java Message Service API 1.1
    * Java Persistence 2.0
    * Java Transaction API (JTA) 1.1
    * Common Annotations for the Java Platform 1.1
* [Java EE Management and Security Technologies](https://www.oracle.com/technetwork/java/javaee/tech/management-139662.html)
    * Java Authentication Service Provider Interface for Containers 
    * Java Authorization Contract for Containers 1.3
    * Java EE Application Deployment 1.2
    * J2EE Management 1.1
* Java EE-related Specs in Java SE
    * Java API for XML Processing (JAXP) 1.3
    * JDBC 4.0
    * Java Management Extensions (JMX) 2.0
    * JavaBeans Activation Framework (JAF) 1.1
    * Streaming API for XML (StAX) 1.0

Reference implmentations:

Application Servers:

* Java EE 6 Full Platform Compatible Implementations
    * Oracle GlassFish Server 3.x
    * IBM WebSphere Application Server 8.x
    * Fujitsu Interstage Application Server powered by Windows Azure
    * Fujitsu Interstage Application Server v10.1
    * Oracle WebLogic Server 12c
    * Apache Geronimo 3.0-beta-1
    * JBoss Application Server 7.x
    * JBoss Enterprise Application Platform 6
* Java EE 6 Web Profile Compatible Implementations
    * Oracle GlassFish Server 3.x
	* Caucho Resin 4.0.17
    * JBoss Application Server 7.x
    * JBoss Enterprise Application Platform 6
    * IBM WebSphere Application Server Version 8.5.5 (Liberty Profile)
	* Apache TomEE 1.0
    * Apache Geronimo 3.0-beta-1
    * SAP NetWeaver Cloud
	
### Java EE 1.7

Principal Vendor: Oracle

Mantainers: JCP

Documentations:

* [Overview](https://docs.oracle.com/javaee/7/index.html)
* [Java EE 7 Tutorial](https://docs.oracle.com/javaee/7/tutorial/index.html)
* [Java EE 7 API](https://docs.oracle.com/javaee/7/api/toc.htm)
* [Java EE 7 Introdution](https://docs.oracle.com/javaee/7/firstcup/index.html)

Main features:

* Web Services Technologies
    *  Java API for RESTful Web Services (JAX-RS) 2.0 - JSR 339
    * Implementing Enterprise Web Services 1.3 - JSR 109
    * Java API for XML-Based Web Services (JAX-WS) 2.2 - JSR 224
    * Web Services Metadata for the Java Platform - JSR 181
    * Java API for XML-Based RPC (JAX-RPC) 1.1 (Optional) - JSR 101
    * Java APIs for XML Messaging 1.3 - JSR 67
    * Java API for XML Registries (JAXR) 1.0 - JSR 93
* Web Application Technologies
    * Java API for WebSocket - JSR 356
    * Java API for JSON Processing - JSR 353
    * Java Servlet 3.1 - JSR 340
    * JavaServer Faces 2.2 - JSR 344
    * Expression Language 3.0 - JSR 341
    * JavaServer Pages 2.3 - JSR 245
    * Standard Tag Library for JavaServer Pages (JSTL) 1.2 - JSR 52
* Enterprise Application Technologies
    * Batch Applications for the Java Platform - JSR 352
    * Concurrency Utilities for Java EE 1.0 - JSR 236
    * Contexts and Dependency Injection for Java 1.1 - JSR 346
    * Dependency Injection for Java 1.0 - JSR 330
    * Bean Validation 1.1 - JSR 349
    * Enterprise JavaBeans 3.2 - JSR 345
    * Interceptors 1.2 ((Maintenance Release covered under JSR 318)) - JSR 318
    * Java EE Connector Architecture 1.7 - JSR 322
    * Java Persistence 2.1 - JSR 338
    * Common Annotations for the Java Platform 1.2 - JSR 250
    * Java Message Service API 2.0 - JSR 343
    * Java Transaction API (JTA) 1.2 - JSR 907
    * JavaMail 1.5 - JSR 919

Reference implmentations:

Application Servers:

* Java EE 7 Full Platform Compatible Implementations
    * GlassFish Server Open Source Edition 4.0
    * Wildfly 8.x
    * Red Hat JBoss Enterprise Application Platform 7.0
    * IBM WebSphere Application Server Version 8.5.5.6(Liberty Profile)
    * IBM WebSphere Application Server Version 9.x
    * Oracle Weblogic Server 12.2.1
    * Fujitsu Interstage Application Server v12.0
    * Cosminexus: Hitachi Application Server v10.0 
* Java EE 7 Web Profile Compatible Implementations
    * GlassFish Server Open Source Edition 4.0 Web Profile
	* Wildfly 8.x Web Profile
    * Red Hat JBoss Enterprise Application Platform 7.0
    * IBM WebSphere Application Server Version 8.5.5.6(Liberty Profile)
    * IBM WebSphere Application Server Version 9.x
	* SAP  Cloud Platform

### Java EE 8

Principal Vendor: Oracle

Mantainers: JCP

Main features:
https://www.oracle.com/java/technologies/java-ee-8.html

Reference implmentations:

Application Servers:



## Monolictic Arcchitecture

### Pros

### Contra

## Microservice Architecture

### Pros

### Contra


## Reference

1. https://www.oracle.com/java/technologies/java-ee-glance.html
2. https://www.oracle.com/technetwork/java/javaee/overview/compatibility-jsp-136984.html
3. https://stackoverflow.com/questions/2296678/where-can-i-find-a-list-of-all-the-reference-implementations-for-java-ee-6
4. https://www.devmedia.com.br/jakarta-ee-o-futuro-do-java-ee/40322
https://jakarta.ee/
