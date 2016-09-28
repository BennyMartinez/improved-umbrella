<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="PuntoDeVenta.Empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
         <asp:Panel runat="server" CssClass="col-md-offset-2 col-md-9">    
             <h1><b>Empleado</b></h1>        
             <asp:GridView ID="gvEmpleado" runat="server" CellSpacing="0" Width="100%" CssClass=" display table-bordered" ClientIDMode="Static">
                 <Columns>
                     <asp:TemplateField>
                         <HeaderTemplate><asp:LinkButton runat="server" ID="prueba" ClientIDMode="Static" data-toggle="modal" data-target="#myModal">Agregar</asp:LinkButton></HeaderTemplate>
                         <ItemTemplate></ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>             
         </asp:Panel>
         <asp:Panel runat="server">
             <div class="container">
              <!-- Modal -->
              <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-sm">    
                  <!-- Modal content-->
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Agregar Empleado</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <asp:Label runat="server">Nombre:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtNom"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Apellido Paterno:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtApePat"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Apellido Materno:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtApeMat"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Fecha Nacimiento:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtFechaNac" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Telefono:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtTelefono"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Celular:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtCelular"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Calle:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtCalle"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Numero de Casa:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtNumero"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Colonia:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtColonia"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Codigó Postal:</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtCP"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server">Municipio:</asp:Label>
                            <asp:DropDownList runat="server" CssClass="form-control" ID="txtMun">
                                <asp:ListItem>Selecciona un municipio...</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="modal-footer">
                      <asp:Button runat="server" Text="Agregar" CssClass="btn btn-success" /> 
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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

