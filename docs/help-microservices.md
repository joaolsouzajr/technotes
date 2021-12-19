The benefits os the monolithic architecture

* Simple to develop
* Easy to make radical changes to the application
* Straightforward to test
* Straughtforward to deploy
* Easy to scale - Usinda a load balancer

Limitations

* Complexity intimidates developers
* Scaling is dificult - different application modules have conflicting resource requirements.
* Delivering a reliable monolith is challenging
* Locked into increasingly obsole technology stack

Comparing SOA with microservices

* Inter-servce communication
    * **SOA**: Smart pipesm, such as Enterprise Service Bus (ESB), using
    heavyweight protocols, such as SOAP and the other WS* standards.
    * **Microservices**: Dumb pipes, such as a message broker, or direct 
    service-to-service commmunication, using lightweight protocols such as 
    REST or gRPC
* Data
    * **SOA**: Global data model and shared databases
    * **Microservices**: Data model and database per service
* Typical service
    * **SOA**: Larger monolithic application
    * **Microservices**: Smaller service


 The benefits of microservices

* It enables the continuous delivery and deployment of large, complex applications.
* Services are small and easily maintained.
* Services are independently deployable.
* Services are independently scalable.
* The microservice architecture enables teams to be autonomous.
* It allows easy experimenting and adoption of new technologies.
* It has better fault isolation.

Drawbacks

* Finding the right set of services is challenging.
* Distributed systems are complex, which makes development, testing, and deploy-
ment difficult.
* Deploying features that span multiple services requires careful coordination.
* Deciding when to adopt the microservice architecture is difficult.

Links:

SOA - https://martinfowler.com/bliki/ServiceOrientedAmbiguity.html
https://martinfowler.com/articles/microservices.html
https://queue.acm.org/detail.cfm?id=1142065
https://craft-conf.com/2015

https://www.infoq.com/presentations/migration-cloud-native/
https://github.com/ReactiveX/RxJava
https://martinfowler.com/bliki/MicroservicePremium.html
https://martinfowler.com/bliki/CircuitBreaker.html
https://www.infoq.com/presentations/soundcloud-microservices/
https://martinfowler.com/articles/microservice-trade-offs.html
https://martinfowler.com/bliki/MicroservicePrerequisites.html


https://www.oreilly.com/ideas/microservices-antipatterns-and-pitfalls

All service shouded be build with version


TODO List to define Microservices

* Defining the language stack to be used based on requirements
* Creating a repository
* Defining a data-store
* Setting up continuous integration,
* Defining deployment
* deploying To development/staging/production
* Setting up monitoring and logging
* Communicate using the same protocol and format — for example, JSON over HTTP.
* Define APIs in a consistent manner
* Log request access using a standard log format
* Be monitored with the same tools
* All your services will expose and consume data via APIs; so documenting them is a necessity.

Swagger, a specification used to define RESTful APIs, and you will see some of the benefits of using an IDL

Rules for microservices

* Customer-facing applications cannot directly touch any data store.
* No service accesses another service’s data store.
* Invest in making spinning up new services trivial.
* Build services in a consistent way.
* Define API contracts in code.
* Every service has at least a development and a production instance.


pirâmide de testes automatizados, TDD (desenvolvimento orientado a testes), 
pareamento, refatoração, code smells, princípios de design como SOLID, DRY, OO etc;

## Comunities

https://microservices.io/patterns/microservices.html
https://www.sei.cmu.edu/

https://continuousdelivery.com/implementing/patterns/

http://nealford.com/

https://puppet.com/resources/?refinementList%5Btype%5D%5B0%5D=Report&page=1&configure%5BhitsPerPage%5D=18

https://www.programmableweb.com/news/how-to-design-great-apis-api-first-design-and-raml/how-to/2015/07/10

https://semver.org/lang/pt-BR/


https://en.wikipedia.org/wiki/Robustness_principle

interface definition language (IDL)./
https://www.openapis.org/

Use Swagger project for this.

THE CHALLENGE OF FETCHING MULTIPLE RESOURCES IN A SINGLE REQUEST

* GET /orders/order-id-1345?expand=consumer
* GraphQL (http://graphql.org)
* Netflix Falcor (http://netflix.github.io/falcor/)

RPC

https://www.grpc.io/
https://en.wikipedia.org/wiki/Remote_procedure_call

Circut brack
https://netflixtechblog.com/fault-tolerance-in-a-high-volume-distributed-system-91ab4faae74a
https://github.com/Netflix/Hystrix
https://github.com/App-vNext/Polly

Messages
https://www.enterpriseintegrationpatterns.com/MessageChannel.html


-4

