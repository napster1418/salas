using System;
using System.Collections.Generic;
using System.Text;

namespace AZ.NotificacionMicroservice.Exceptions
{
    public class CustomException : ApplicationException
    {
        public virtual string CustomMessage { get; }
    }
}
