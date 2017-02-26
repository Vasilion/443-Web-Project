<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="sign_up.aspx.cs" Inherits="sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <link href="Styles/style.css" rel="stylesheet" />


    <form id="frm" runat="server" class="form-horizontal" action='' method="POST" style="width: 100%; display: block;">

        <div style="margin: auto; display: block; width: 60%;">
            
            <div id="legend">
                <legend class="">Register</legend>
            </div>

            <div class="container">
            <div class="form-group">
                <div class="row" style="margin: auto;">
                    <div class="col-sm-4 col-md-4 col-lg-4">
                        <label class="control-label" for="Events">Events</label>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Best of The Best - $10</asp:ListItem>
                            <asp:ListItem>The Classics - $5</asp:ListItem>
                            <asp:ListItem>Art Show - No Fee</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </div>
            </div>
            <br />


                
                <div class="row">
                    <!-- First Name -->
                    <div class="col-sm-4 col-md-4 col-lg-4">
                        <label class="control-label" for="First Name">First Name</label>
                        <div class="controls">
                            <asp:TextBox runat="server" autocapitalize="sentences" CssClass="form-control" ID="txtFirstName" OnTextChanged="txtFirstName_TextChanged" AutoPostBack="True" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                            <p class="help-block">Enter your first name.</p>
                        </div>
                     </div>

                
                    <!-- Last Name -->
                    <div class="col-sm-4 col-md-4 col-lg-4">
                        <label class="control-label" for="Last Name">Last Name</label>
                        <div class="controls">
                            <asp:textbox runat="server" autocapitalize="sentences" cssclass="form-control" id="txtLastName" ontextchanged="txtLastName_TextChanged" autopostback="True" />
                            <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" errormessage="RequiredFieldValidator" controltovalidate="txtLastName"></asp:requiredfieldvalidator>
                            <p class="help-block">Enter your last name.</p>
                        </div>
                    </div>
               </div>
            
            

            <div class="row">
                <!-- Address -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Address">Address</label>
                    <div class="controls">
                        <asp:TextBox runat="server" autocapitalize="sentences" CssClass="form-control" ID="txtAddress" OnTextChanged="txtAddress_TextChanged" AutoPostBack="True" Rows="2" TextMode="MultiLine" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        <p class="help-block">Enter your street address.</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- City -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="City">City</label>
                    <div class="controls">
                        <asp:TextBox runat="server" autocapitalize="sentences" CssClass="form-control" ID="txtCity" OnTextChanged="txtCity_TextChanged" AutoPostBack="True" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                        <p class="help-block">Enter the name of the city you reside in.</p>
                    </div>
                </div>
            

            
                <!-- State -->
                <div class="col-sm-2 col-md-2 col-lg-2">
                    <label class="control-label" for="State">State</label>
                    <div class="controls">
                        <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server" DataSourceID="XmlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/States.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlState"></asp:RequiredFieldValidator>
                        <p class="help-block">Enter the name of your state of residency.</p>
                    </div>
                </div>
            

            
                <!-- Zip Code -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Zip Code">Zip Code</label>
                    <div class="controls">
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtZip" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtZip" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                        <p class="help-block">Enter your zip code.</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Email -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Email">Email</label>
                    <div class="controls">
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <p class="help-block">Enter your email address.</p>
                    </div>
                </div>
            

            
                <!-- Phone -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Phone">Phone</label>
                    <div class="controls">
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPhone" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                        <p class="help-block">Enter your phone number.</p>
                    </div>
                </div>
            </div>


            <div class="row">
                <!-- DOB -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Month">Date Of Birth:</label>
                </div>
            </div>

            <div class="row">
                <!-- Month -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Month">Month</label>
                    <div class="controls">
                        <asp:DropDownList ID="ddlMonth" CssClass="form-control" runat="server" DataSourceID="XmlDataSource2" DataTextField="name" DataValueField="name"></asp:DropDownList>
                        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/Months.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlMonth"></asp:RequiredFieldValidator>
                        <p class="help-block">Month of birth.</p>
                    </div>
                </div>
            

            
                <!-- Day -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Day">Day</label>
                    <div class="controls">
                        <asp:DropDownList ID="ddlDay" CssClass="form-control" runat="server" DataSourceID="XmlDataSource3" DataTextField="num" DataValueField="num"></asp:DropDownList>
                        <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/App_Data/Days.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlDay"></asp:RequiredFieldValidator>
                        <p class="help-block">Day of birth.</p>
                    </div>
                </div>
            

            
                <!-- Year -->
                <div class="col-sm-4 col-md-4 col-lg-4">
                    <label class="control-label" for="Year">Year</label>
                    <div class="controls">
                        <asp:DropDownList ID="ddlYear" CssClass="form-control" runat="server" DataSourceID="XmlDataSource4" DataTextField="num" DataValueField="num"></asp:DropDownList>
                        <asp:XmlDataSource ID="XmlDataSource4" runat="server" DataFile="~/App_Data/Years.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlYear"></asp:RequiredFieldValidator>
                        <p class="help-block">Year of birth.</p>
                    </div>
                </div>
            </div>
            

            </div>
            </div>



        </form>

    

</asp:Content>
