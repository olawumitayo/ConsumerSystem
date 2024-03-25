<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsumerRegistration.aspx.cs" Inherits="DecagonConsumerPortal.ConsumerRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-col-lg-4 col-md-offset-4">
                               <h1>Consumer Registration</h1> 
                                  <asp:Label Text="" ForeColor="Green" ID="lblMessage" CssClass="label label-success" runat="server" />
                            </div>

                        </header>



                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Consumer FirstName" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage=" Required" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox runat="server" ID="txtFirstName" Enabled="true" CssClass="form-control input-sm" placeholder="Consumer FirstName" />
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Consumer LastName" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage=" Required" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox runat="server"  ID="txtLastName" Enabled="true" CssClass="form-control input-sm" placeholder="Consumer LastName" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Date of Birth" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" ErrorMessage=" Required" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox runat="server" Enabled="true" ID="txtDOB" TextMode="Date" CssClass="form-control input-sm" placeholder="Consumer FirstName" />
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Business Type" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" ID="txtBusinessType" CssClass="form-control input-sm" placeholder="Business" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="State" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="drpState" ErrorMessage=" Required" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:DropDownList runat="server" ID="drpState" CssClass="form-control input-sm">
                                             <asp:ListItem Value="">Select State</asp:ListItem>
                                            <asp:ListItem Text="Lagos" />
                                            <asp:ListItem Text="Ogun" />
                                             <asp:ListItem Text="Osun" />
                                            <asp:ListItem Text="Oyo" />
                                             <asp:ListItem Text="Ekiti" />
                                            <asp:ListItem Text="Enugu" />
                                             <asp:ListItem Text="Imo" />
                                            <asp:ListItem Text="Edo" />
                                             <asp:ListItem Text="Kano" />
                                            <asp:ListItem Text="Kaduna" />
                                             <asp:ListItem Text="Kwara" />
                                            <asp:ListItem Text="Abuja" />
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Address" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddress" ErrorMessage=" Required" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:TextBox runat="server" Enabled="true" ID="txtAddress" CssClass="form-control input-sm" placeholder="Consumer Address" />
                                    </div>
                                </div>
                            </div>

                             <div class="row">
                                <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Phone No" runat="server" />
                                  
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage=" Required" SetFocusOnError="True" ForeColor="Red" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
                                        <asp:TextBox runat="server" Enabled="true" ID="txtPhone" TextMode="Phone" CssClass="form-control input-sm" placeholder="Consumer Phoneno" />
                                    </div>
                                </div>
                                 <div class="col-md-4 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Gender"  runat="server" />
                                        <asp:RadioButtonList ID="rdGender" runat="server">
                                            <asp:ListItem Text="   Male" />
                                            <asp:ListItem Text="   Female" />
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rdGender" ErrorMessage=" Required" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-col-lg-8 col-md-offser-2">
                                    <asp:Button Text="Save" ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-primary" Width="170px" runat="server" />
                                    <asp:Button Text="Update" ID="btnUpdate" OnClick="btnUpdate_Click" CssClass="btn btn-primary" Width="170px" runat="server" />
                                    <asp:Button Text="Delete" ID="btnDelete" OnClick="btnDelete_Click" CssClass="btn btn-danger" Width="170px" runat="server" />
                                  
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-10 col-md-col-lg-offset-1 ">
                                    <div class="form-group">
                                        <div class="table-resposive">
                                            <asp:GridView ID="GridView1" Width="100%" AutoGenerateSelectButton="true" SelectedRowStyle-BackColor="Green" OnSelectedIndexChanged="gv_SelectedIndexChanged" runat="server"></asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>





</asp:Content>
