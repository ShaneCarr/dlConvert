<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>
  
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <script src="~/lib/jquery/dist/jquery.js" type="text/javascript"></script>
    <link href="~/lib/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet">
    <script src="~/lib/bootstrap-switch/dist/js/bootstrap-switch.js" type="text/javascript"></script>
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <ul runat="server" id="groupsToConvert">
<asp:FormView runat="server" ID="form">

         </asp:FormView>

        
    </ul>
    <style type="text/css">
        .listContainer {
            border: 2px solid #ccc;
            width: 340px;
            height: 225px;
            overflow-y: scroll;
            margin-top: 20px;
            padding-left: 10px;
        }

        .oddRow {
            margin-top: 5px;
            background-color: #ffffff;
        }

        .evenRow {
            margin-top: 5px;
            background-color: #9FFF9D;
        }

        }

    </style>
    <h2>Convert Distribution List to Modern Group</h2>
    <asp:Panel runat="server" ID="container">
     <asp:CheckBoxList ID="CheckBoxList1" runat="server" >
         
    </asp:CheckBoxList>
    </asp:Panel>
     <asp:Panel runat="server" ID="containerSelectAll">

    </asp:Panel>
      
        <input type="submit" runat="server"/>

        <script type="text/javascript">
        $('#MainContent_selectall').click(function () { 
        if ($(this).is(':checked')) {
            $("#MainContent_CheckBoxList1 :input").prop('checked', true);
        }

        else {
            $("#MainContent_CheckBoxList1 :input").attr('checked', false);
            $("#MainContent_CheckBoxList1 :input").prop('checked', false);
        }
    });
    </script>

</asp:Content>
