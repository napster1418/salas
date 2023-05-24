using System.Data;

namespace AZ.NotificacionMicroservice.Repository
{
    public interface IConnectionFactory
    {
        IDbConnection GetConnection { get; }
    }
}
