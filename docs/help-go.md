

LSP mode


Basic Tools

Use gopls
https://github.com/golang/tools/tree/master/gopls


https://github.com/go-delve/delve
go install github.com/go-delve/delve/cmd/dlv@latest


go install honnef.co/go/tools/cmd/staticcheck@latest

https://staticcheck.io/docs/getting-started/


Most popular postgres drivers and some libraries;
https://github.com/jackc/pgx 
https://github.com/lib/pq
https://github.com/jmoiron/sqlx
For testing db https://github.com/DATA-DOG/go-sqlmock
Golang Migrate (flyway alternative) - https://github.com/golang-migrate/migrate

### Starting Docs

* Golang Tour - https://tour.golang.org/welcome/1
* Effective Golang - https://golang.org/doc/effective_go.html
* Go by Example - https://gobyexample.com
* Just for Func - https://www.youtube.com/watch?v=H_4eRD8aegk&list=PL64wiCrrxh4Jisi7OcCJIUpguV_f5jGnZ
*Go testing techniques - https://talks.golang.org/2014/testing.slide#1
Go naming - https://talks.golang.org/2014/names.slide#1
Go organizing - https://talks.golang.org/2014/organizeio.slide#1
Patterns and Practices
Awesome Golang - https://github.com/avelino/awesome-go
Go Patterns - https://github.com/tmrts/go-patterns
Courses and Video Tutorials
Tod Mcload course (udemy) (some parts for beginners) - https://www.udemy.com/course/learn-how-to-code/
Stephen Grider (udemy) - https://www.udemy.com/go-the-complete-developers-guide/
Web Development Tod Mcload - https://www.udemy.com/go-programming-language/
Grpc and Protobuf Course from Stephene Mareek - Same course, Udemy https://www.udemy.com/grpc-golang/ or Safari https://learning.oreilly.com/videos/grpc-golang-master/9781838555467
Ultimate Go Programming - https://learning.oreilly.com/videos/ultimate-go-programming/9780134757476/9780134757476-ugpg_00_00_00_00
Exercises with Language
Exercism - https://exercism.io/tracks/go
Gophercises - https://gophercises.com
Editor & IDE
Goland (jetbrains) (strongly recommend)
VSCode (very good)
VimGo
Command Line Developer Tools
Command line go tools - http://dominik.honnef.co/posts/2014/12/an_incomplete_list_of_go_tools/
Linter and static analyzer - https://github.com/golangci/golangci-lint
Bloggers
Dave Cheney - https://dave.cheney.net/category/golang
Resources for new Go programmers - https://dave.cheney.net/resources-for-new-go-programmers
Useful Libraries
 Testing
Testify - https://github.com/stretchr/testify
Ginkgo & Gomega (bdd style testing) - https://onsi.github.io/ginkgo/
Gomock - https://github.com/golang/mock https://blog.codecentric.de/en/2017/08/gomock-tutorial/
Configuration
Envconfig - https://github.com/kelseyhightower/envconfig
Viper - https://github.com/spf13/viper
Logger
Logrus - https://github.com/sirupsen/logrus
zap - https://github.com/uber-go/zap
Frameworks
Chi Framework - https://github.com/go-chi/chi (it's my favorite because works with go's http handler)
Gin-gonic - https://github.com/gin-gonic/gin
Echo - https://github.com/labstack/echo
Dependency Injection - Google Wire - https://github.com/google/wire
Linters - https://github.com/golangci/golangci-lint
Important Topics
Pointers
Slices
Goroutines
Channels
Contexts
Duck Typing (important testing) - https://medium.com/@matryer/golang-advent-calendar-day-one-duck-typing-a513aaed544d
Table Testing (like parameterized tests) - https://dave.cheney.net/2013/06/09/writing-table-driven-tests-in-go
Build Tags - https://pliutau.com/separate_unit_integration_tests/
Go Generator - https://github.com/netologist/dao-pattern/blob/master/repositories/order.go
Project Layout - https://github.com/golang-standards/project-layout
Pipeline pattern for channels
Fan-in & Fan-out patterns for channels
Go Modules
Generics
