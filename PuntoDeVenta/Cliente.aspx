<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="PuntoDeVenta.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
   <asp:Panel runat="server" CssClass="col-md-offset-2 col-md-9">            
     <link href="css/Cliente.css" rel="stylesheet" />

                 <asp:GridView ID="gvCliente" runat="server" CellSpacing="0" Width="100%" CssClass=" display table-bordered" ClientIDMode="Static">
                 <Columns>
                     <asp:TemplateField>
                         <HeaderTemplate><asp:LinkButton runat="server" ID="btnAgregar" ClientIDMode="Static" data-toggle="modal" data-target="#myModal">Agregar</asp:LinkButton></HeaderTemplate>
                         <ItemTemplate></ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>             
         </asp:Panel>
         <asp:Panel runat="server">
             <div class="container">
              <!-- Modal -->
              <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
    
                  <!-- Modal content-->
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Alta de empleado</h4>
                    </div>
                    <div class="modal-body">
                            <div class="well login-box">
       
     
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
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-success" data-dismiss="modal">Agregar</button>
                    </div>
                  </div>      
                </div>
              </div>
             </div>
         </asp:Panel>
       
    <script>
        $(document).ready(function () {
            $("#gvCliente").dataTable({

                "scrollX": true
            });
        });
    </script>
</asp:Content>
