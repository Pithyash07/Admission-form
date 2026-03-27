using Microsoft.VisualBasic;


namespace Admission_form.project.Models
{
    public class StudentDetails
    {
        public int id {  get; set; }
        public string FullName { get; set; }
        public string DateOfBirth { get; set; }
        public string Gender { get; set; }
        public string Category { get; set; } 
        public long Phone { get; set; }
        public string Email { get; set; }
        public string ParentGuardianName { get; set; }
        public long ParentGuardianPhone{ get; set; }
        public string PermanentAddress { get; set; }
        public string CurrentAddress { get; set; }
        public int Class10RollNo { get; set; }
        public int Class10Percentage { get; set; }
        public int Class12RollNo { get; set; }
        public int Class12Percentage { get; set; }
        public string Course { get; set; }
    }
    
}
