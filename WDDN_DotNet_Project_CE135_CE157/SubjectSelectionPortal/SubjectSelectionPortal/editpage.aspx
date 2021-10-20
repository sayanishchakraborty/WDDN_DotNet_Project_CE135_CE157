<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editpage.aspx.cs" Inherits="SubjectSelectionPortal.editpage" %>

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

    <link href="Style/editpage.css" rel="stylesheet" />

    <title>Edit | Subject Selection Portal</title>

</head>
<body>
    <form id="form1" runat="server">
       
        <div class="sec2">
                <div class="container py-4">
                    <div class="row">
                        <div class="col-lg-6 mx-auto">
                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="head text-center text-white py-1">
                                        <h2><u> Edit Your Response </u></h2>
                                    </div>           

                                    <div class="form text-left">

                                        <asp:TextBox ID="id" runat="server" placeholder="Enter Student ID" ToolTip="Enter College ID" ValidationGroup="checkid"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorid" runat="server" ControlToValidate="id" Forecolor="Red" Height="30px" ValidationGroup="checkid"><b> * StudentID is Required</b></asp:RequiredFieldValidator>
                                        <br />

                                        <div class="text-right">
                                        <asp:Button ID="Searchid" runat="server" Text="Search ID" Font-Bold="True" ValidationGroup="checkid" OnClick="Searchid_Click"/>
                                        <br />
                                        </div>


                                        <b>
                                            <asp:Label ID="idnotfound" runat="server" Forecolor="#FF5200" Font-Size="20px" Style=" border: none; border-bottom: 2px dashed #FF5200" Visible="False">Student Details Doesn't Exist</asp:Label>
                                        </b>
                                        <br />
                                        

                                        <div id="detail" class="detailslabel text-white" runat="server">

                                            <asp:Label ID="Label1" runat="server" Text="Your Information :" CssClass="label" Font-Bold="True" Font-Underline="True"></asp:Label>
                                        <br />
                                        <br />

                                            <b> Name : </b>
                                            <asp:Label ID="fnamelabel" runat="server" Forecolor="#FFD32A"></asp:Label>
                                            &nbsp;
                                            <asp:Label ID="lnamelabel" runat="server" ForeColor="#FFD32A"></asp:Label>
                                            <br />

                                            <b> Email Address : </b>
                                            <asp:Label ID="emaillabel" runat="server" Forecolor="#FFD32A"></asp:Label>
                                            <br />

                                            <b> Contact NO. : </b>
                                            <asp:Label ID="contactlabel" runat="server" Forecolor="#FFD32A"></asp:Label>
                                            <br />

                                            <b> Address : </b>
                                            <asp:TextBox ID="addresslabel" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                            <br />
                                            <br />

                                            <b> Semester : </b>
                                            <asp:Label ID="semesterlabel" runat="server" Forecolor="#FFD32A"></asp:Label>
                                            <br />

                                            <b> Department : </b>
                                            <asp:Label ID="deptlabel" runat="server" Forecolor="#FFD32A"></asp:Label>
                                            <br />

                                            <b> Subject Chose : </b>
                                            <asp:Label ID="subjectlabel" runat="server" Forecolor="#FFD32A"></asp:Label>
                                            <br />
                                            
                                            <b> Views : </b>
                                            <asp:TextBox ID="commentlabel" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                            <br />

                                        </div>
                                        <br />

                                        
                                        <asp:Label ID="Label4" runat="server" Text="Edit Information :" CssClass="label" Font-Bold="True" Font-Underline="True"></asp:Label>
                                        <br />
                                        
                                        <asp:TextBox ID="firstname" runat="server" placeholder="First Name" ToolTip="Enter First Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorfirstname" runat="server" ErrorMessage="First Name is Required" ControlToValidate="firstname" Forecolor="Red" Height="30px"><b> * </b></asp:RequiredFieldValidator>

                                        <asp:TextBox ID="lastname" runat="server" placeholder="Last Name" ToolTip="Enter Last Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorlastname" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="lastname" Forecolor="Red" Height="30px"><b> * </b></asp:RequiredFieldValidator>
                                        <br />

                                        <asp:TextBox ID="email" runat="server" placeholder="Email Address" ToolTip="Enter Your Email Address"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" ErrorMessage="Please Enter Valid Email Address" ControlToValidate="email" ForeColor="Red" Height="30px" Display="Dynamic" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" ><b> * </b></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" ErrorMessage="Email Address is Required" ControlToValidate="email" Forecolor="Red" Height="30px" Display="Dynamic"><b> * </b></asp:RequiredFieldValidator>
                                        
                                        <br />

                                        <asp:TextBox ID="contact" runat="server" placeholder="Contact NO." TextMode="SingleLine" ToolTip="Enter Your Contact Information"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorcontact" runat="server" ErrorMessage="Contact Info. is Required" ControlToValidate="contact" Forecolor="Red" Height="30px" Display="Dynamic"><b> * </b></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorcontact" runat="server" ErrorMessage="Please Enter Valid Contact NO." ControlToValidate="contact" ForeColor="Red" Height="30px" Display="Dynamic" ValidationExpression="^(\1+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\-]*$"><b> * </b></asp:RegularExpressionValidator>
                                        <br />
                                        
                                        <textarea id="address" cols="20" rows="2" placeholder="Enter Your Address" maxlength="100" name="address"></textarea>
                                        <br />

                                        <asp:TextBox ID="semester" runat="server" placeholder="Semester" TextMode="Number" ToolTip="Enter Current Semester"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorsemester" runat="server" ErrorMessage="Semester is Required" ControlToValidate="semester" Forecolor="Red" Height="30px"><b> * </b></asp:RequiredFieldValidator>
                                        <br />

                                        <asp:Label ID="Label2" runat="server" Text="Department :" CssClass="label" Font-Bold="True" Font-Underline="True"></asp:Label>
                                        <br />

                                        <div class="divdept">
                                            
                                            <asp:RadioButton ID="ce" runat="server" Font-Bold="True" Font-Size="19px" Text="CE" GroupName="dept" CssClass="radio" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged"/>
                                            
                                            <asp:RadioButton ID="it" runat="server" Font-Bold="True" Font-Size="19px" Text="IT" GroupName="dept" CssClass="radio" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged"/>
                                            
                                            <asp:RadioButton ID="ec" runat="server" Font-Bold="True" Font-Size="19px" Text="EC" GroupName="dept" CssClass="radio" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged"/>
                                            
                                            <asp:RadioButton ID="ch" runat="server" Font-Bold="True" Font-Size="19px" Text="CH" GroupName="dept" CssClass="radio" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged"/>
                                            <br />
                                            <asp:RadioButton ID="mh" runat="server" Font-Bold="True" Font-Size="19px" Text="MH" GroupName="dept" CssClass="radio" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged"/>
                                            
                                            <asp:RadioButton ID="cl" runat="server" Font-Bold="True" Font-Size="19px" Text="CL" GroupName="dept" CssClass="radio" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged"/>
                                            
                                            <asp:RadioButton ID="ic" runat="server" Font-Bold="True" Font-Size="19px" Text="IC" GroupName="dept" CssClass="radio" AutoPostBack="True" OnCheckedChanged="RadioButton_CheckedChanged"/>
                                            
                                        </div>
                                        <br />

                                        <asp:Label ID="Label3" runat="server" Text="Choose Subject :" CssClass="label" Font-Bold="True" Font-Underline="True"></asp:Label>
                                        <br />

                                        <asp:DropDownList ID="SubjectList" runat="server" Font-Bold="True" Style="cursor: pointer" CssClass="subjectlist" ToolTip="Choose Your Preferred Subject"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorsubjectlist" runat="server" ErrorMessage="Choose Preferred Subject" ControlToValidate="SubjectList" InitialValue="--Choose Subject--" Forecolor="Red" Height="30px"><b> * </b></asp:RequiredFieldValidator>
                                        <br />

                                        <textarea id="comment" cols="20" rows="2" placeholder="Add Your Views" maxlength="100" style="margin-top: 5vh; margin-left: -3px; margin-bottom: -13px;" name="comments"></textarea>
                                        <br />

                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="&lt;u&gt;Please Solve The Errors&lt;/u&gt;" Forecolor="#FFD32A" Font-Bold="True" CssClass="valigrp"/>
                                        <br />
                                

                                        <asp:Button ID="Submit" runat="server" Text="SUBMIT" Font-Bold="True" OnClick="Submit_Click"/>
                                        <asp:Button ID="Reset" runat="server" Text="RESET" Font-Bold="True" OnClick="Reset_Click" ValidationGroup="reset"/>

                                        

                                        <div class="hyperlink text-white">
                                            <b> Return To Form : </b>
                                            <asp:HyperLink ID="HyperLinkit" runat="server" Forecolor="#FFD32A" CssClass="hlink" NavigateUrl="~/default.aspx"><b>CLICK HERE</b></asp:HyperLink>
                                            <br />
                                            <br />

                                            <b> Check List of Students Filled The Form : </b>
                                            <asp:HyperLink ID="HyperLinkview" runat="server" Forecolor="#FFD32A" CssClass="hlink" NavigateUrl="~/studentlist.aspx"><b>CLICK HERE</b></asp:HyperLink>
                                            <br />
                                        </div>

                                        </div>
                                    </div>
                                </div>                
                            </div>                
                        </div>                
                    </div>                
                </div>                
                            

    </form>
</body>
</html>
