<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="PuntoDeVenta.Empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <asp:Panel runat="server" CssClass="col-md-offset-2 col-md-9">            
             <asp:GridView ID="gvEmpleado" runat="server" CellSpacing="0" Width="100%" CssClass=" display table-bordered">
                 <Columns>
                     <asp:TemplateField>
                         <HeaderTemplate><asp:LinkButton runat="server">Agregar</asp:LinkButton></HeaderTemplate>
                         <ItemTemplate><asp:LinkButton runat="server">Modificar</asp:LinkButton>&nbsp<asp:LinkButton runat="server">Eliminar</asp:LinkButton></ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
         </asp:Panel>
    <script>
        $(document).ready(function () {
            $("[id*=gvEmpleado]").dataTable({

                "scrollX": true
            });
        });
    </script>
</asp:Content>

