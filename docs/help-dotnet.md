# .NET Helper

## Inatalation

https://dot.net/v1/dotnet-install.sh

## libgdiplus

Os aplicativos .NET que usam o assembly System. sorteio. Common exigem que o libgdiplus seja instalado.

```bash
brew update
brew install mono-libgdiplus
```

## dotnet-install

To install mutiple version side by side, you can install from installer.
https://dotnet.microsoft.com/en-us/download/dotnet

https://docs.microsoft.com/pt-br/dotnet/core/install/macos  

## tools

* Visual Studio 2022
* Visual Studio Code and .NET CLI

* [Microsoft Docs](https://docs.microsoft.com/en-us/)
* [Patterns an Praticies](https://docs.microsoft.com/en-us/azure/architecture/)
* [.NET Videos](https://dotnet.microsoft.com/learn/videos)


* [dotnet-counters](https://docs.microsoft.com/pt-br/dotnet/core/
diagnostics/dotnet-counters) permitem monitorar e coletar várias métricas 
emitidas pelo tempo de execução do .net e pelas bibliotecas principais, bem 
como métricas personalizadas que você pode escrever.
* [dotnet-gcdump](https://docs.microsoft.com/pt-br/dotnet/core/diagnostics/
dotnet-gcdump) permite coletar despejos de heap de GC de processos ao vivo 
para analisar o heap gerenciado de um aplicativo.
* [dotnet-trace](https://docs.microsoft.com/pt-br/dotnet/core/diagnostics/
dotnet-trace) permite que você colete rastreamentos de aplicativos para 
analisar o desempenho.

* [dotnet-httprepl]

     dotnet tool install -g Microsoft.dotnet-httprepl


## commands

Create a console project

     dotnet new Console --output <foldername>
     dotnet new webapi -f net6.0

Create a solution

     dotnet new sln
     dotnet sln add <.csproj>

Add a package
  
     dotnet add package Humanizer --version 2.7.9

List installed packages

     dotnet list package --outdated

Install tools

     dotnet tool install --global dotnet-trace

 Run applications

     dotnet run 
     dotnet run --configuration Release

Restaura as dependências e as ferramentas de um projeto.

     dotnet restore

## dependencies

* [NuGet.org](nuget.org)


## debuging

https://docs.microsoft.com/pt-br/dotnet/core/tutorials/debugging-with-visual-studio-code?pivots=dotnet-6-0

On VS Code
"console": "integratedTerminal",

## package verison

Options to set up version packages:

```xml
<!-- Accepts any version 6.1 and later. -->
<PackageReference Include="ExamplePackage" Version="6.1" />

<!-- Accepts any 6.x.y version. -->
<PackageReference Include="ExamplePackage" Version="6.*" />
<PackageReference Include="ExamplePackage" Version="[6,7)" />

<!-- Accepts any later version, but not including 4.1.3. Could be
     used to guarantee a dependency with a specific bug fix. -->
<PackageReference Include="ExamplePackage" Version="(4.1.3,)" />

<!-- Accepts any version earlier than 5.x, which might be used to prevent pulling in a later
     version of a dependency that changed its interface. However, we don't recommend this form because determining the earliest version can be difficult. -->
<PackageReference Include="ExamplePackage" Version="(,5.0)" />

<!-- Accepts any 1.x or 2.x version, but not 0.x or 3.x and later. -->
<PackageReference Include="ExamplePackage" Version="[1,3)" />

<!-- Accepts 1.3.2 up to 1.4.x, but not 1.5 and later. -->
<PackageReference Include="ExamplePackage" Version="[1.3.2,1.5)" />
```

## pakage utils

https://www.nuget.org/packages/Newtonsoft.Json/
https://www.nuget.org/packages/CsvHelper

## Logs

APIs:

* System.Console
* System.Diagnostic.Trace
* System.Diagnostic.Debug

## Web Servers

* Web Kestrel

## EditorConfig

https://docs.microsoft.com/pt-br/dotnet/fundamentals/code-analysis/code-style-rule-options
https://docs.microsoft.com/pt-br/visualstudio/ide/code-styles-and-code-cleanup?view=vs-2022#code-styles-in-editorconfig-files


## Csharp

### mModifers

https://docs.microsoft.com/pt-br/visualstudio/ide/code-styles-and-code-cleanup?view=vs-2022#code-styles-in-editorconfig-files
https://docs.microsoft.com/pt-br/dotnet/csharp/language-reference/keywords/accessibility-levels

### Struct vs Class

* **CONSIDERE** definir um struct em vez de uma classe se as instâncias do tipo são pequenas e geralmente de curta duração ou são normalmente inseridas em outros objetos.
* **EVITE** definir um struct, a menos que o tipo tenha todas as seguintes características:
     * Ele representa logicamente um único valor, semelhante aos tipos primitivos ( int , double , etc.).
     * Ele tem um tamanho de instância abaixo de 16 bytes.
     * É imutável.
     * Não será preciso fazer a caixa com frequência.

Em todos os outros casos, você deve definir seus tipos como classes.

## Referencias

https://docs.microsoft.com/pt-br/ef/core/miscellaneous/nullable-reference-types
https://docs.microsoft.com/en-us/ef/core/modeling/entity-properties?tabs=data-annotations%2Cwith-nrt#required-and-optional-properties

## Links

https://docs.microsoft.com/pt-br/shows/Beginners-Series-to-Web-APIs/?WT.mc_id=Educationaldotnet-c9-scottha
https://docs.microsoft.com/pt-br/shows/ASPNET-Core-101/?WT.mc_id=Educationaspnet-c9-niner

https://docs.microsoft.com/pt-br/aspnet/core/tutorials/first-web-api?view=aspnetcore-6.0&tabs=visual-studio
https://docs.microsoft.com/pt-br/aspnet/core/web-api/action-return-types?view=aspnetcore-6.0

https://docs.microsoft.com/pt-br/aspnet/core/web-api/?view=aspnetcore-6.0


C#

https://docs.microsoft.com/pt-br/shows/CSharp-101/?WT.mc_id=Educationalcsharp-c9-scottha
https://docs.microsoft.com/pt-br/shows/C-Advanced/?&WT.mc_id=EducationalAdvancedCsharp-c9-niner


Dicas

https://www.hanselman.com/blog/a-commandline-repl-for-restful-http-services
