
# Mono

```
apt-cache search mono

sudo apt-get install mono-complete
```
the with mono, write your csharp

```
mcs helloworld.cs
or
csc helloworld.cs

mono helloworld.exe
```

When using libraries:
```
mcs hello.cs -r:System.Windows.Forms.dll

mono hello.exe

or

mcs /reference:System.Drawing.dll Main.cs

sudo apt install nuget
sudo nuget update -self

nuget install Google.Apis.Calendar.v3 -OutputDirectory packages



```


# Dotnet

```
apt-cache search dotnet

// get dotnet

sudo apt-get update

apt-cache search dotnet

sudo apt-get install dotnet-sdk-3.1

```

```
dotnet new console -o calQuickstart

dotnet new nugetconfig

dotnet add package Google.Apis.Calendar.v3

dotnet run CalendarQuickstart.cs 

```


`dotnet new nugetconfig`