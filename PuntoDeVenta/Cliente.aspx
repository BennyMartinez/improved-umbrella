<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="PuntoDeVenta.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link rel="stylesheet" href="css/jquery.dataTables.min.css" /> 
    <form runat="server">
         <asp:Panel runat="server" CssClass="col-md-offset-2">            
             <asp:GridView ID="gvEmpleado" runat="server" CellSpacing="0" Width="100%" CssClass=" display table-bordered">
                 <Columns>
                     <asp:TemplateField>
                         <HeaderTemplate><asp:LinkButton runat="server">Agregar</asp:LinkButton></HeaderTemplate>
                         <ItemTemplate><asp:LinkButton runat="server">Modificar</asp:LinkButton>&nbsp<asp:LinkButton runat="server">Eliminar</asp:LinkButton></ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
         </asp:Panel>
    </form>   
    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $("[id*=gvEmpleado]").dataTable({

                "scrollX": true
            });
        });
    </script>
</asp:Content>
