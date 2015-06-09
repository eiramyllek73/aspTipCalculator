<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Tip.aspx.cs" Inherits="ValidationSample.Tip" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h4>Enter Bill Details:</h4>
    <div class="form-group">
        <label for="txtAmount" class="control-label">Bill Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Please enter a bill amount" 
            CssClass="alert alert-danger" 
            ControlToValidate="txtAmount" 
            Display="Dynamic">
        </asp:RequiredFieldValidator>

        <asp:RangeValidator 
            ID="RangeValidator1" runat="server" 
            ErrorMessage="Please enter a numeric value greater than 0" 
            MinimumValue="0.01" MaximumValue="999999999" 
            CssClass="alert alert-danger" 
            ControlToValidate="txtAmount" 
            Type="Double" Display="Dynamic">
        </asp:RangeValidator>
    </div> <!-- form-group -->

    <div class="form-group">
        <label for="ddlPercent" class="control-label">Tip %:</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Value=".1" Text="10%"></asp:ListItem>
            <asp:ListItem Value=".15" Text="15%" Selected="True"></asp:ListItem>
            <asp:ListItem Value=".20" Text="20%"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" OnClick="btnCalculate_Click" BackColor="#9900CC" BorderColor="#9900CC" BorderStyle="None" BorderWidth="2px" ForeColor="White" />
    </div>

    <h4>Bill Totals:</h4>
    <div>
        Tip Amount:  <asp:Label ID="lblTip" runat="server"></asp:Label>
    </div>
    <div>
        Total:  <asp:Label ID="lblTotal" runat="server"></asp:Label>
    </div>

</asp:Content>
