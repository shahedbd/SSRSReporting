using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SSRSReportingMVC.Models
{
    [Table("UserDetailsInfo")]
    public class UserDetailsInfo
    {
        [Key]
        public long ID { get; set; }
        public string IdentityID { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public long NID { get; set; }
        public string Country { get; set; }
        public string CreationUser { get; set; }
        public DateTime CreationDateTime { get; set; }
        public string LastUpdateUser { get; set; }
        public DateTime LastUpdateDateTime { get; set; }
        public int Status { get; set; }
    }
}