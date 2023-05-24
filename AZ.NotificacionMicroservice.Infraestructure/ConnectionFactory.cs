using System.Data;
using System.Data.Common;
using AZ.NotificacionMicroservice.Repository;
using Microsoft.Extensions.Configuration;
using System.Composition;
using Util;

namespace AZ.NotificacionMicroservice.Infraestructure
{
    [Export(typeof(IConnectionFactory))]
    public class ConnectionFactory : IConnectionFactory
    {              
        public IDbConnection GetConnection
        {
            get
            {               
                DbProviderFactory dbProvider = DbProviderFactories.GetFactory(TrackerConfig.databaseProvider);
                DbConnection cn = dbProvider.CreateConnection();
                cn.ConnectionString = TrackerConfig.connectionString ;
                return cn;
            }
        }        
    }
}
