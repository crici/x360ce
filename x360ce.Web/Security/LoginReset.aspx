﻿<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true"
	CodeBehind="LoginReset.aspx.cs" Inherits="x360ce.Web.Security.LoginReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderPlaceHolder" runat="server">
	<link type="text/css" rel="stylesheet" href="Common/JsClasses/System.Web.UI.Interface.css" />
	<link type="text/css" rel="stylesheet" href="Social/Styles/Facebook.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContentPlaceHolder" runat="server">
	<center style="height: 100%;">
		<table cellpadding="0" cellspacing="0" class="MainTable">
			<tr>
				<td>
					<img alt="Find Twins Banner" src="Social/Images/FindTwinsBanner.gif" style="width: 240px;
						height: 48px;" />
					<div class="MainDiv">
						<asp:Label ID="ErrorLabel" runat="server" Text="" Visible="false" />
						<asp:Label ID="ResetKeyLabel" runat="server" Visible="false" />
						<asp:Panel runat="server" ID="SuccessPanel" Visible="false">
							<center>
								<div class="Login_Title">
									Password changed!</div>
								<div class="Login_Body">
									<div runat="server" id="RedirectionPanel" visible="false">
										Redirecting to homepage...

										<script type="text/javascript">
											window.setTimeout(function() {
												document.location = '<%=Page.ResolveClientUrl("~/Social") %>';
											}, 4000);
										</script>

									</div>
								</div>
							</center>
						</asp:Panel>
						<div runat="server" id="ChangePasswordPanel" visible="false">
							<center>
								<div class="Login_Title">
									Change Your Password</div>
								<div class="Login_Body">
									<table border="0" cellspacing="2" cellpadding="0">
										<tr>
											<td>
												<table border="0" cellpadding="0">
													<tr>
														<td align="right" style="white-space: nowrap;">
															<asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>
														</td>
														<td>
															<asp:TextBox ID="NewPassword" CssClass="SWUI_Prg Login_TextBox" runat="server" TextMode="Password"></asp:TextBox>
														</td>
														<td>
															<asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
																ErrorMessage="New Password is required." ToolTip="New Password is required."
																ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
														</td>
													</tr>
													<tr>
														<td align="right" style="white-space: nowrap;">
															<asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
														</td>
														<td>
															<asp:TextBox ID="ConfirmNewPassword" CssClass="SWUI_Prg Login_TextBox" runat="server"
																TextMode="Password"></asp:TextBox>
														</td>
														<td>
															<asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
																ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required."
																ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
														</td>
													</tr>
													<tr>
														<td align="center" colspan="3">
															<asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
																ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
																ValidationGroup="ChangePassword1"></asp:CompareValidator>
														</td>
													</tr>
													<tr>
														<td align="center" colspan="3" style="color: Red;">
															<asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
														</td>
													</tr>
													<tr>
														<td align="right">
															<asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword"
																Text="Change" CssClass="SWUI_Prg Login_Button" ValidationGroup="ChangePassword1"
																OnClick="ChangePasswordPushButton_Click" />
														</td>
														<td>
															<asp:Button ID="CancelPushButton" runat="server" CssClass="SWUI_Prg Login_Button"
																CausesValidation="False" CommandName="Cancel" Text="Cancel" />
														</td>
														<td>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
							</center>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</center>
</asp:Content>