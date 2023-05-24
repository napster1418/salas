using System;
using System.Collections.Generic;
using System.Composition;
using System.Text;
using AZ.NotificacionMicroservice.Repository;

namespace AZ.NotificacionMicroservice.Infraestructure
{    
    public abstract class BaseRepository 
    {
        #region IoC
        [Import]
        public IConnectionFactory _connectionFactory { get; set; }
        
        [ImportingConstructor]
        public BaseRepository(IConnectionFactory connectionFactory)
        {
            _connectionFactory = connectionFactory;
        }
        #endregion
    }
}
