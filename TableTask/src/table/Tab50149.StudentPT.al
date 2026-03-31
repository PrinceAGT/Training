// table 50149 StudentPT
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1;"Student No"; Code[20])
//         {
//             DataClassification = ToBeClassified; 
//             TableRelation = EnrollmentPT."Student No";
//         }
//         field(2; "Student Name"; Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(3; "Status"; Boolean)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(4; "DOB"; Date)
//         {
//             DataClassification = ToBeClassified;
//             trigger OnValidate()
//             begin
//                 Age := Date2DMY(Today, 3) - Date2DMY("DOB", 3);
//             end;
//         }
//         field(5; "Age"; Integer)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(6; "Course code"; Code[20])
//         {
//            TableRelation = CoursePT."Course code";
//         }
//         field(7; "Total Course"; Integer)
//         {
//             FieldClass = FlowField;
//             CalcFormula = count(EnrollmentPT where ("Student No"= field("Student No"),
//                             "Enrollment Date" = field("Date Filter")));
//         }
//         field(9; "Date Filter"; Date)
//         {
//             FieldClass = FlowFilter;
//         }
//     }

//     keys
//     {
//         key(Key1; "Student No")
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//         // Add changes to field groups here
//     }

//     var
//         myInt: Integer;

//     trigger OnInsert()
//     begin
//         Status := true;
//     end;

//     trigger OnModify()
//     begin

//     end;

//     trigger OnDelete()
//     begin

//     end;

//     trigger OnRename()
//     begin

//     end;

// }