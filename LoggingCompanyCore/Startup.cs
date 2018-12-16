using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using LoggingCompanyCore.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace LoggingCompanyCore
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.Configure<CookiePolicyOptions>(options =>
            {
                // This lambda determines whether user consent for non-essential cookies is needed for a given request.
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });

            services.AddDbContext<ApplicationDbContext>(options =>
               options.UseSqlServer(
                   Configuration.GetConnectionString("DefaultConnection")));
            services.AddDefaultIdentity<IdentityUser>()
                .AddEntityFrameworkStores<ApplicationDbContext>();

            services.AddAuthentication().AddGoogle(googleOptions =>
            {
                //googleOptions.ClientId = Configuration["Google:client_id"];
                //googleOptions.ClientSecret = Configuration["Google:client_secret"];
                googleOptions.ClientId = "930344282461-9qbpjkj5titi7j54efq5c48sjcg80jkc.apps.googleusercontent.com";
                googleOptions.ClientSecret = "0lzbdBbLOd-AK0d8tGQpFKVd";
            }).AddFacebook(facebookOptions =>
            {
                facebookOptions.AppId = "2141321086183757";
                facebookOptions.AppSecret = "464fb8c45e821d834e824e083e6f75ca";
            }).AddTwitter(twitterOptions =>
            {
                twitterOptions.ConsumerKey = "XPFNlSrmWcRYZ0p9Sf5HUZSR2";
                twitterOptions.ConsumerSecret = "uGkGEYhWWYpOhSkwzTgKlZjQjNxAt1D7KADHwsKASy08XgGIGF";
            });

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseDatabaseErrorPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseCookiePolicy();

            app.UseAuthentication();

            app.UseMvc();
        }
    }
}
