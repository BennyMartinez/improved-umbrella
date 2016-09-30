<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="PuntoDeVenta.Empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
         <asp:Panel runat="server" CssClass="col-md-offset-2 col-md-9">    
             <h1><b>Empleado</b></h1>        
             <asp:GridView ID="gvEmpleado" runat="server" CellSpacing="0" Width="100%" CssClass=" display table-bordered" ClientIDMode="Static">
                 <Columns>
                     <asp:TemplateField>
                         <HeaderTemplate><asp:LinkButton runat="server" ID="lAgregar" ClientIDMode="Static" data-toggle="modal" data-target="#myModal" OnClick="lAgregar_Click"><i class="glyphicon glyphicon-plus"></i></asp:LinkButton></HeaderTemplate>
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

                      <h4 class="modal-title">Alta de Empleado</h4>
                    </div>
                    <div class="modal-body">
                            <div class="well login-box">
       
     
                     <div class="row" id="row_nombre">
                  <div class="col-md-4 ">  <asp:TextBox runat="server" ID="txtNombre" placeHolder="Nombre"   CssClass="form-control"></asp:TextBox></div>
                  <div class="col-md-4 ">   <asp:TextBox runat="server" ID="txtApat" placeHolder="Apellido Paterno" CssClass="form-control"></asp:TextBox></div>
                  <div class="col-md-4 ">   <asp:TextBox runat="server" ID="txtAmat" placeHolder="Apellido Materno" CssClass="form-control"></asp:TextBox></div>
                  <div class="col-md-4 ">   <asp:TextBox runat="server" ID="txtPW" placeHolder="Contraseña" CssClass="form-control" TextMode="Password"></asp:TextBox></div>
                         <div class="col-md-4 "><asp:DropDownList runat="server" ID="txtTipo" CssClass="form-control"><asp:ListItem>Tipo de empleado...</asp:ListItem></asp:DropDownList></div>

                            </div>
            <br />   
            <div class="row " id="row_tel">
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtTel" placeHolder="Telefono" CssClass="form-control" TextMode="Phone"></asp:TextBox></div>
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtCel" placeHolder="Celular"  CssClass="form-control" TextMode="Phone"></asp:TextBox></div>                
                </div>
   <br />          
            <div class="row " id="row_fecha">
                <div class="col-md-6"><asp:Label runat="server" Text="Fecha de Nacimiento"></asp:Label><asp:TextBox runat="server" ID="txtFechaNa" placeHolder="Fecha Nacimiento" CssClass="form-control" TextMode="Date"></asp:TextBox></div>
                <div class="col-md-6"><asp:TextBox runat="server" ID="txtCorreo" placeHolder="Correo Electronico"   CssClass="form-control" TextMode="Email"></asp:TextBox></div>
                </div>
        <br />
            <div class=" row " id="row_direccion">
                <div class="col-md-4">      <asp:TextBox runat="server" ID="txtCalle" placeHolder="Calle"     CssClass="form-control"></asp:TextBox></div>
                <div class="col-md-4">      <asp:TextBox runat="server" ID="txtNumero" placeHolder="Numero"   CssClass="form-control" TextMode="Number"></asp:TextBox></div>
                <div class="col-md-4">      <asp:TextBox runat="server" ID="txtColonia" placeHolder="Colonia" CssClass="form-control"></asp:TextBox></div>
     
            </div>

           <br />
            <div class="row " id="row_municipio">
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtCP" placeHolder="Codigo Postal" CssClass="form-control" TextMode="Number"></asp:TextBox></div>
                <div class="col-md-6">      <asp:DropDownList runat="server" ID="txtMun" CssClass="form-control"><asp:ListItem>Selecciona un municipio...</asp:ListItem></asp:DropDownList></div>
            </div>
          <br />

        </div>
                    </div>
                    <div class="modal-footer">
                      <asp:Button runat="server" CssClass="btn btn-success" Text="Agregar" ID="btnAgregar" OnClick="btnAgregar_Click"/>
                    </div>
                  </div>      
                </div>
              </div>
             </div>
         </asp:Panel>
       
    <script>
        $(document).ready(function () {
            $("#gvEmpleado").dataTable({

                "scrollX": true
            });
        });
    </script>
</asp:Content>

