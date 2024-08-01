<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SalesForecasting.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sales Forecasting</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 90%;
            max-width: 800px;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #007bff;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        .form-actions {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .form-actions button {
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
        }

        .form-actions button:hover {
            background-color: #0056b3;
        }

        .gridview {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            padding: 12px;
            border: 1px solid #dee2e6;
            text-align: left;
        }

        .gridview th {
            background-color: #f8f9fa;
            color: #495057;
        }

        .message {
            margin-top: 20px;
            padding: 15px;
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Sales Forecasting Tool</h2>

            <div class="form-group">
                <label for="txtYear">Enter Year:</label>
                <asp:TextBox ID="txtYear" runat="server" CssClass="input-field"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="btnQuerySales" runat="server" Text="Query Sales" CssClass="button" OnClick="btnQuerySales_Click" />
            </div>

            <asp:GridView ID="gvSalesData" runat="server" CssClass="gridview"></asp:GridView>

            <div class="form-group">
                <label for="txtPercentageIncrease">Percentage Increase:</label>
                <asp:TextBox ID="txtPercentageIncrease" runat="server" CssClass="input-field"></asp:TextBox>
            </div>

            <div class="form-actions">
                <asp:Button ID="btnApplyIncrease" runat="server" Text="Apply Increase" CssClass="button" OnClick="btnApplyIncrease_Click" />
                <asp:Button ID="btnExportToCSV" runat="server" Text="Export to CSV" CssClass="button" OnClick="btnExportToCSV_Click" />
            </div>

            <asp:Label ID="lblIncreasedSales" runat="server" Text="" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
