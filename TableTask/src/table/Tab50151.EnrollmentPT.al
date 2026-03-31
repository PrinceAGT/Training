// table 50151 EnrollmentPT
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1;"Student No"; Code[20])
//         {
//             DataClassification = ToBeClassified;

//         }
//         field(2; "Course code"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//              TableRelation = CoursePT."Course code";
//         }
//         field(3; "Enrollment Date"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//     }

//     keys
//     {
//         key(Key1; "Student No", "Course code")
//         {
//             Clustered = true;
//         }
//     }
// }