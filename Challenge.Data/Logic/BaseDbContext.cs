using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.Data.Logic
{
    public class BaseDbContext
    {
        protected Data.PrincipalContext _context;

        public BaseDbContext(Data.PrincipalContext context)
        {
            _context = context;
        }
    }
}
