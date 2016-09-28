<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="PuntoDeVenta.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <link rel="stylesheet" type="text/css" href="css/Cliente.css"/>
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
    <script>
        $(document).ready(function () {
            $("[id*=gvEmpleado]").dataTable({
                "scrollX": true
            });
        });

    </script>

    <div class="row  well login-box">
       
     
                     <div class="row" id="row_nombre">
                  <div class="col-md-4 ">  <asp:TextBox runat="server" ID="txtNombreCliente" placeHolder="Nombre"   CssClass="form-control"></asp:TextBox></div>
                  <div class="col-md-4 ">   <asp:TextBox runat="server" ID="txtApat" placeHolder="Apellido Paterno" CssClass="form-control"></asp:TextBox></div>
                  <div class="col-md-4 ">   <asp:TextBox runat="server" ID="txtAmat" placeHolder="Apellido Materno" CssClass="form-control"></asp:TextBox></div>
                            </div>
            <br />   
            <div class="row " id="row_tel">
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtTel" placeHolder="Telefono" CssClass="form-control" TextMode="Phone"></asp:TextBox></div>
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtCel" placeHolder="Celular"  CssClass="form-control" TextMode="Phone"></asp:TextBox></div>
                </div>
   <br />          
            <div class="row " id="row_fecha">
                <div class="col-md-6"><asp:Label runat="server" Text="Fecha de Nacimiento"></asp:Label><asp:TextBox runat="server" ID="txtFechaNa" placeHolder="Fecha Nacimiento" CssClass="form-control" TextMode="Date"></asp:TextBox></div>
                <div class="col-md-6"><asp:Label runat="server" Text="Fecha de Ingreso"></asp:Label><asp:TextBox runat="server" ID="txtFechaIn" placeHolder="Fecha Ingreso "   CssClass="form-control" TextMode="Date"></asp:TextBox></div>
                </div>
        <br />
            <div class=" row " id="row_direccion">
                <div class="col-md-4">      <asp:TextBox runat="server" ID="txtCalle" placeHolder="Calle"     CssClass="form-control"></asp:TextBox></div>
                <div class="col-md-4">      <asp:TextBox runat="server" ID="txtNumero" placeHolder="Numero"   CssClass="form-control" TextMode="Number"></asp:TextBox></div>
                <div class="col-md-4">      <asp:TextBox runat="server" ID="txtColonia" placeHolder="Colonia" CssClass="form-control"></asp:TextBox></div>
     
            </div>

           <br />
            <div class="row " id="row_municipio">
                <div class="col-md-6">      <asp:TextBox runat="server" ID="TextBox1" placeHolder="Codigo Postal" CssClass="form-control" TextMode="Number"></asp:TextBox></div>
                <div class="col-md-6">      <asp:TextBox runat="server" ID="TextBox2" placeHolder="ID Municipio"  CssClass="form-control" TextMode="Number"></asp:TextBox></div>
            </div>
          <br />

        </div>
        
          <div class="col-md-4"></div>

    

</asp:Content>
