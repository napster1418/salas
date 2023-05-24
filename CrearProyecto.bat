 
 dotnet new sln --name GTH.AZ.Notificacion			 
 
 dotnet new classlib -lang C# -o AZ.NotificacionMicroservice.Infraestructure  -f net5.0
 dotnet sln .\GTH.AZ.Notificacion.sln add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj -s "01. Layer Infraestructure"
 
 dotnet new classlib -lang C# -o AZ.NotificacionMicroservice.Repository  -f net5.0
 dotnet sln .\GTH.AZ.Notificacion.sln add .\AZ.NotificacionMicroservice.Repository\AZ.NotificacionMicroservice.Repository.csproj -s "01. Layer Infraestructure"
 
 dotnet new classlib -lang C# -o AZ.NotificacionMicroservice.Domain  -f net5.0
 dotnet sln .\GTH.AZ.Notificacion.sln add .\AZ.NotificacionMicroservice.Domain\AZ.NotificacionMicroservice.Domain.csproj -s "02. Layer Domain"
 
 dotnet new classlib -lang C# -o AZ.NotificacionMicroservice.Entities  -f net5.0
 dotnet sln .\GTH.AZ.Notificacion.sln add .\AZ.NotificacionMicroservice.Entities\AZ.NotificacionMicroservice.Entities.csproj -s "02. Layer Domain"	
 
 mkdir "AZ.NotificacionMicroservice.Entities/Enums"
 mkdir "AZ.NotificacionMicroservice.Entities/Filter"
 mkdir "AZ.NotificacionMicroservice.Entities/Model"
 mkdir "AZ.NotificacionMicroservice.Entities/Request"
 mkdir "AZ.NotificacionMicroservice.Entities/Response"
 
 dotnet new classlib -lang C# -o AZ.NotificacionMicroservice.Exceptions  -f net5.0
 dotnet sln .\GTH.AZ.Notificacion.sln add .\AZ.NotificacionMicroservice.Exceptions\AZ.NotificacionMicroservice.Exceptions.csproj -s "02. Layer Domain"
  
 dotnet new classlib -lang C# -o AZ.NotificacionMicroservice.Service  -f net5.0
 dotnet sln .\GTH.AZ.Notificacion.sln add .\AZ.NotificacionMicroservice.Service\AZ.NotificacionMicroservice.Service.csproj -s "03. Layer Api"	
 
 dotnet new classlib -lang C# -o Util  -f net5.0
 dotnet sln .\GTH.AZ.Notificacion.sln add .\Util\Util.csproj -s "04. Util"
 
 dotnet new webapi --name AZ.NotificacionMicroservice.Api
 dotnet sln .\GTH.AZ.Notificacion.sln add .\AZ.NotificacionMicroservice.Api	-s "03. Layer Api"
 


 dotnet add .\Util\Util.csproj package System.Composition -v 1.4.0
 dotnet add .\Util\Util.csproj package Microsoft.Extensions.Configuration -v 3.1.3

 dotnet add .\AZ.NotificacionMicroservice.Repository\AZ.NotificacionMicroservice.Repository.csproj reference .\AZ.NotificacionMicroservice.Entities\AZ.NotificacionMicroservice.Entities.csproj


 dotnet add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj package Dapper -v 2.0.123
 dotnet add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj package System.Composition -v 1.4.0
 dotnet add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj package Microsoft.Extensions.Configuration -v 3.1.3
 dotnet add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj package System.Data.SqlClient -v 4.8.3
  
 dotnet add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj reference .\AZ.NotificacionMicroservice.Entities\AZ.NotificacionMicroservice.Entities.csproj
 dotnet add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj reference .\AZ.NotificacionMicroservice.Repository\AZ.NotificacionMicroservice.Repository.csproj
 dotnet add .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj reference .\Util\Util.csproj
 
 
 dotnet add .\AZ.NotificacionMicroservice.Domain\AZ.NotificacionMicroservice.Domain.csproj package System.Composition -v 1.4.0

 dotnet add .\AZ.NotificacionMicroservice.Domain\AZ.NotificacionMicroservice.Domain.csproj reference .\AZ.NotificacionMicroservice.Entities\AZ.NotificacionMicroservice.Entities.csproj
 dotnet add .\AZ.NotificacionMicroservice.Domain\AZ.NotificacionMicroservice.Domain.csproj reference .\AZ.NotificacionMicroservice.Exceptions\AZ.NotificacionMicroservice.Exceptions.csproj
 dotnet add .\AZ.NotificacionMicroservice.Domain\AZ.NotificacionMicroservice.Domain.csproj reference .\AZ.NotificacionMicroservice.Repository\AZ.NotificacionMicroservice.Repository.csproj
 dotnet add .\AZ.NotificacionMicroservice.Domain\AZ.NotificacionMicroservice.Domain.csproj reference .\Util\Util.csproj
 
 
 dotnet add .\AZ.NotificacionMicroservice.Service\AZ.NotificacionMicroservice.Service.csproj reference .\AZ.NotificacionMicroservice.Domain\AZ.NotificacionMicroservice.Domain.csproj
 dotnet add .\AZ.NotificacionMicroservice.Service\AZ.NotificacionMicroservice.Service.csproj reference .\AZ.NotificacionMicroservice.Entities\AZ.NotificacionMicroservice.Entities.csproj
 dotnet add .\AZ.NotificacionMicroservice.Service\AZ.NotificacionMicroservice.Service.csproj reference .\AZ.NotificacionMicroservice.Exceptions\AZ.NotificacionMicroservice.Exceptions.csproj
 

 dotnet add .\AZ.NotificacionMicroservice.Api\AZ.NotificacionMicroservice.Api.csproj reference .\AZ.NotificacionMicroservice.Entities\AZ.NotificacionMicroservice.Entities.csproj
 dotnet add .\AZ.NotificacionMicroservice.Api\AZ.NotificacionMicroservice.Api.csproj reference .\AZ.NotificacionMicroservice.Infraestructure\AZ.NotificacionMicroservice.Infraestructure.csproj	
 dotnet add .\AZ.NotificacionMicroservice.Api\AZ.NotificacionMicroservice.Api.csproj reference .\AZ.NotificacionMicroservice.Service\AZ.NotificacionMicroservice.Service.csproj	
 dotnet add .\AZ.NotificacionMicroservice.Api\AZ.NotificacionMicroservice.Api.csproj reference .\Util\Util.csproj	
 
 
 dotnet add .\AZ.NotificacionMicroservice.Api\AZ.NotificacionMicroservice.Api.csproj package Microsoft.VisualStudio.Web.CodeGeneration.Design -v 3.1.2
 dotnet add .\AZ.NotificacionMicroservice.Api\AZ.NotificacionMicroservice.Api.csproj package Swashbuckle.AspNetCore -v 5.4.1
 
 
 
 
 
 
 
 
 
 

 
 
 