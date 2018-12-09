using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SSRSReportingMVC.Startup))]
namespace SSRSReportingMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
