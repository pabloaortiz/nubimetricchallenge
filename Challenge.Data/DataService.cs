using System;

namespace Challenge.Data
{
    public class DataService
    {
        private readonly Data.PrincipalContext _principalContext;

        public DataService(Data.PrincipalContext principalContext)
        {
            _principalContext = principalContext;
        }

        private Logic.Users _users;
        public Logic.Users Users
        {
            get {
                if (_users == null)
                {
                    _users = new Logic.Users(_principalContext);
                }
                return _users;
            }
        }
    }
}
