<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentlist.aspx.cs" Inherits="SubjectSelectionPortal.studentlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

    <!-- Font Style and Font Family-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet" />

    <link href="Style/studentliststyle.css" rel="stylesheet" />

    <title>Student List | Subject Selection Portal</title>

</head>
<body>
    <form id="form1" runat="server">

        <div class="sec2">
                <div class="container  py-4">
                    <div class="row">
                        <div class="mx-auto">

                                    <div class="head text-center text-white col-lg-6 py-1 mx-auto">
                                        <h2><u> Student Record </u></h2>
                                    </div>           

                                    <div class="form text-left">

                                        <asp:GridView ID="StudentListView" runat="server" AutoGenerateColumns="False" CssClass="table table-stripped text-center text-capitalize" GridLines="None" ForeColor="#FDF5AC" HorizontalAlign="Center">
                                            
                                            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />

                                            <HeaderStyle BackColor="#AA0000" Font-Bold="True" ForeColor="White" CssClass="header"/>

                                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                            
                                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                            <SortedDescendingHeaderStyle BackColor="#820000" />
                                        
                                            <Columns>

                                                <asp:TemplateField HeaderText="STUDENT ID" >
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Eval("Studentid") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="FIRST NAME" >
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Eval("Firstname") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="LAST NAME" >
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Eval("Lastname") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="CONTACT" >
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="EMAIL" >
                                                    <ItemTemplate>
                                                        <asp:Label runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>






                                        
                                        <div class="hyperlink text-white ">

                                            <b> Return To Form : </b>
                                            <asp:HyperLink ID="HyperLinkit" runat="server" Forecolor="#FFD32A" CssClass="hlink" NavigateUrl="~/default.aspx"><b>CLICK HERE</b></asp:HyperLink>
                                            <br />
                                            <br />

                                            <b> Went Something Wrong, To Edit: </b>
                                            <asp:HyperLink ID="HyperLinkedit" runat="server" Forecolor="#FFD32A" CssClass="hlink" NavigateUrl="~/editpage.aspx"><b>CLICK HERE</b></asp:HyperLink>
                                            <br />

                                        </div>

                                    </div>
                                
                                
                        </div>                
                    </div>                
                </div>                
            </div>                

    </form>
</body>
</html>
