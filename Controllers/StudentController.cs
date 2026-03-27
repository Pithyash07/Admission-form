using Admission_form.project.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using MySql.Data.MySqlClient;

namespace Admission_form.project.Controllers
{
    public class StudentController : Controller
    {
        private readonly IConfiguration _configuration;
        
        public StudentController(IConfiguration configuration)
        {
            _configuration = configuration; 
        }
        public IActionResult Create()
        {
            return View();
        }

        public IActionResult Submit(StudentDetails s)
        {
            int studentid = 0;
            string connstr = _configuration.GetConnectionString("Local");

            using (MySqlConnection conn = new MySqlConnection(connstr))
            {
                conn.Open();
                string query = " insert into studentdetail(fullname, DOB , gender, category, phone, email, pname, pphone, paddress, caddress, 10rollno, 10percentage, 12rollno, 12percentage, course) values (@FullName, @DateOfBirth, @Gender, @Category, @Phone, @Email, @ParentGuardianName, @ParentGuardianPhone, @PermanentAddress, @CurrentAddress, @Class10RollNo, @Class10Percentage, @Class12RollNo, @Class12Percentage, @Course)";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@FullName", s.FullName);
                cmd.Parameters.AddWithValue("@DateOfBirth", s.DateOfBirth);
                cmd.Parameters.AddWithValue("@Gender", s.Gender);
                cmd.Parameters.AddWithValue("@Category", s.Category);
                cmd.Parameters.AddWithValue("@Phone", s.Phone);
                cmd.Parameters.AddWithValue("@Email", s.Email);
                cmd.Parameters.AddWithValue("@ParentGuardianName", s.ParentGuardianName);
                cmd.Parameters.AddWithValue("@ParentGuardianPhone", s.ParentGuardianPhone);
                cmd.Parameters.AddWithValue("@PermanentAddress", s.PermanentAddress);
                cmd.Parameters.AddWithValue("@CurrentAddress", s.CurrentAddress);
                cmd.Parameters.AddWithValue("@Class10RollNo", s.Class10RollNo);
                cmd.Parameters.AddWithValue("@Class10Percentage", s.Class10Percentage);
                cmd.Parameters.AddWithValue("@Class12RollNo", s.Class12RollNo);
                cmd.Parameters.AddWithValue("@Class12Percentage", s.Class12Percentage);
                cmd.Parameters.AddWithValue("@Course", s.Course);

                cmd.ExecuteNonQuery();
                studentid = (int)cmd.LastInsertedId;

            }
                return View(s);
        }
    }
}