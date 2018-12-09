using Microsoft.AspNet.Identity;
using Microsoft.Reporting.WebForms;
using PagedList;
using SSRSReportingMVC.LIB;
using SSRSReportingMVC.Models;
using SSRSReportingMVC.Models.ReportDataPrep;
using SSRSReportingMVC.Models.XSD;
using System;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace SSRSReportingMVC.Controllers
{
    public class UserDetailsInfoesController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: UserDetailsInfoes
        [Authorize]
        public ActionResult Index(int? page)
        {
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            var result = (from udi in db.UserDetailsInfoes select udi).OrderBy(s => s.ID);
            return View(result.ToPagedList(pageNumber, pageSize));
        }

        // GET: UserDetailsInfoes/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UserDetailsInfo userDetailsInfo = db.UserDetailsInfoes.Find(id);
            if (userDetailsInfo == null)
            {
                return HttpNotFound();
            }
            return View(userDetailsInfo);
        }

        // GET: UserDetailsInfoes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: UserDetailsInfoes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,IdentityID,Email,FirstName,LastName,NID,Country,CreationUser,CreationDateTime,LastUpdateUser,LastUpdateDateTime,Status")] UserDetailsInfo userDetailsInfo)
        {
            if (ModelState.IsValid)
            {

                string currentUserId = User.Identity.GetUserId();
                ApplicationUser currentUser = null;

                if (currentUserId != null)
                {
                    currentUser = db.Users.FirstOrDefault(x => x.Id == currentUserId);

                    userDetailsInfo.IdentityID = currentUser.Id;
                    userDetailsInfo.Email = currentUser.Email;
                    userDetailsInfo.CreationUser = currentUser.UserName;
                }
                userDetailsInfo.CreationDateTime = DateTime.Now;

                db.UserDetailsInfoes.Add(userDetailsInfo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(userDetailsInfo);
        }

        // GET: UserDetailsInfoes/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UserDetailsInfo userDetailsInfo = db.UserDetailsInfoes.Find(id);
            if (userDetailsInfo == null)
            {
                return HttpNotFound();
            }
            return View(userDetailsInfo);
        }

        // POST: UserDetailsInfoes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,IdentityID,Email,FirstName,LastName,NID,Country,CreationUser,CreationDateTime,LastUpdateUser,LastUpdateDateTime,Status")] UserDetailsInfo userDetailsInfo)
        {
            if (ModelState.IsValid)
            {
                db.Entry(userDetailsInfo).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(userDetailsInfo);
        }

        // GET: UserDetailsInfoes/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            UserDetailsInfo userDetailsInfo = db.UserDetailsInfoes.Find(id);
            if (userDetailsInfo == null)
            {
                return HttpNotFound();
            }
            return View(userDetailsInfo);
        }

        // POST: UserDetailsInfoes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            UserDetailsInfo userDetailsInfo = db.UserDetailsInfoes.Find(id);
            db.UserDetailsInfoes.Remove(userDetailsInfo);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }


        public ActionResult PreviewUserDetailsInfoReport()
        {
            UserDetailsInfoReport();
            return View();
        }


        private void UserDetailsInfoReport()
        {
            DataSetUserDetailsInfo _DataSetUserDetailsInfo = new DataSetUserDetailsInfo();
            ReportViewer reportViewer = new ReportViewer();
            reportViewer.ProcessingMode = ProcessingMode.Local;
            reportViewer.SizeToReportContent = true;
            reportViewer.Width = Unit.Percentage(1280);
            reportViewer.Height = Unit.Percentage(1024);

            GetDataFromServer.GetAllTableDataByTableName("UserDetailsInfo").Fill(_DataSetUserDetailsInfo, _DataSetUserDetailsInfo.UserDetailsInfo.TableName);
            reportViewer.LocalReport.ReportPath = Request.MapPath(Request.ApplicationPath) + @"Views\SSRSReport\UserDetailsInfo.rdlc";
            reportViewer.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", _DataSetUserDetailsInfo.Tables[0]));

            reportViewer.LocalReport.SetParameters(SSRSReportCommon.GetParametersLocal());

            ViewBag.RVUserDetailsInfo = reportViewer;
        }

    }
}
