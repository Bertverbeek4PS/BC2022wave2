page 50100 "Split button Page"
{
    UsageCategory = Tasks;
    Caption = 'Split Button';
    ApplicationArea = Basic;

    actions
    {
        area(Promoted)
        {
            group(Group1)
            {
                ShowAs = SplitButton; //New property

                actionref(MySplitButtonPromotedActionRef; Action1) //This is the first one on the ribbon
                {
                }

                actionref(MyOtherSplitButtonPromotedActionRef; Action2)
                {
                }
            }
            group(Group2)
            {
                actionref(AnotherPromoteActionRef; Action4)
                {
                }
            }
        }

        area(Processing)
        {
            action(Action1)
            {
                Visible = true;
                //Promoted = true; //Old
                //PromotedCategory = 
                //PromotedOnly
                trigger OnAction()
                begin
                    Message('Hello action 1!');
                end;
            }
            action(Action2)
            {
                Visible = true;
                trigger OnAction()
                begin
                    Message('Hello action 2!');
                end;
            }
            action(Action3)
            {
                Visible = true;
                trigger OnAction()
                begin
                    Message('Hello action 3!');
                end;
            }
            action(Action4)
            {
                Visible = true;
                trigger OnAction()
                begin
                    Message('Hello action 4!');
                end;
            }
        }
    }
}