<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgentRegistration.aspx.cs" Inherits="DecagonConsumerPortal.AgentRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="container">
      <div class="modal fade" id="updateModal" data-backdrop="false" role="dialog">
          <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title">Add New Record</h4>
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>
               <div class="modal-body">
                     <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-col-lg-4 col-md-offset-2">
                               <h1>Agent Registration</h1> 
                            </div>

                        </header>



                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Agent FirstName" runat="server" />
                                        <asp:TextBox runat="server" ID="txtFirstName" Enabled="true" CssClass="form-control input-sm" placeholder="Agent FirstName" />
                                    </div>
                                </div>
                                 <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Agent LastName" runat="server" />
                                        <asp:TextBox runat="server"  ID="txtLastName" Enabled="true" CssClass="form-control input-sm" placeholder="Agent LastName" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Date of Birth" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" ID="txtDOB" TextMode="Date" CssClass="form-control input-sm" placeholder="Agent FirstName" />
                                    </div>
                                </div>
                                 <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Business Type" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" ID="txtBusinessType" CssClass="form-control input-sm" placeholder="Gender" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="State" runat="server" />
                                        <asp:DropDownList runat="server" ID="drpState" CssClass="form-control input-sm">
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
                                 <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Address" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" ID="txtAddress" CssClass="form-control input-sm" placeholder="Agent Address" />
                                    </div>
                                </div>
                            </div>

                             <div class="row">
                                <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Phone No" runat="server" />
                                        <asp:TextBox runat="server" Enabled="true" ID="txtPhone" TextMode="Phone" CssClass="form-control input-sm" placeholder="Agent Phoneno" />
                                    </div>
                                </div>
                                 <div class="col-md-6 col-md-col-lg-offset-1">
                                    <div class="form-group">
                                        <asp:label Text="Gender" ID="rdGender" runat="server" />
                                        <asp:RadioButtonList runat="server">
                                            <asp:ListItem Text="   Male" />
                                            <asp:ListItem Text="   Female" />
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>

                            

                        </div>
                    </section>
                </div>
            </div>
               </div>
               <div class="modal-footer">
                
                        <div class="col-md-col-lg-8 col-md-offser-2">
                                    <asp:Button Text="Save" ID="btnSave"  CssClass="btn btn-primary" Width="170px" runat="server" />
                                    <asp:Button Text="Update" ID="btnUpdate"  CssClass="btn btn-primary" Width="170px" runat="server" />
                                    <asp:Button Text="Delete" ID="btnDelete"  CssClass="btn btn-danger" Width="170px" runat="server" />
                                    <asp:Label Text="" ForeColor="Green" ID="lblMessage" CssClass="lable label-success" runat="server" />
                                </div>
               </div>
              </div>
          </div>
      </div>
  </div>
    <asp:Button Text="Open Agent Modal" ID="modal" CssClass="btn btn-primary" OnClick="modal_Click" runat="server" />
</asp:Content>
