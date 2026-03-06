pageextension 50200 CustomerCardExtPT extends "Customer Card"
{
    layout
    {
        modify(Name)
        {
            Editable = true;
        }
        modify("Credit Limit (LCY)")
        {
            Editable = true;
        }
        modify("Phone No.")
        {
            Editable = true;
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}

    trigger OnAfterGetRecord()
    begin
        SetEditability();
    end;

    trigger OnAfterGetCurrRecord()
    begin
        SetEditability();
    end;

    local procedure SetEditability()
    begin
        if Rec.Blocked = Rec.Blocked::All then
            AllowEdit := false
        else
            AllowEdit := true;
    end;
