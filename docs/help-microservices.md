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