using Challenge.Data.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Challenge.Data.Data
{
    public class PrincipalContext : DbContext
    {
        public PrincipalContext(DbContextOptions<PrincipalContext> options) : base(options)
        {

        }

        public DbSet<User> User { get; set; }
    }

}
