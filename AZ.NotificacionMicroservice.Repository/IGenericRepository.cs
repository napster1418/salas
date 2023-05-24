﻿using System;
using System.Collections.Generic;
using System.Text;

namespace AZ.NotificacionMicroservice.Repository
{
    public interface IGenericRepository<T> where T: class
    {   
        bool Update(T item);
        bool Delete(long id);
        bool Delete(string id);
   }
}
