<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Proveedor.aspx.cs" Inherits="PuntoDeVenta.Proveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

   <asp:Panel runat="server"> 
   <asp:GridView ID="gvProveedor" runat="server" CellSpacing="0" Width="100%" CssClass=" display table-bordered" ClientIDMode="Static">
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
                <div class="modal-dialog">
    
                  <!-- Modal content-->
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Alta de proveedor</h4>
                    </div>
                    <div class="modal-body">
                            <div class="well login-box">
       
                       <asp:Label runat="server" Text="Empresa"></asp:Label>
                      <div class="row" id="row_proveedor">
                          <div class="col-md-6 "> <asp:TextBox runat="server" ID="txtNomPro" placeHolder="Nombre Proveedor"   CssClass="form-control"></asp:TextBox></div>
                          <div class="col-md-6">  <asp:TextBox runat="server" ID="txtTePro" placeHolder="Telefono del Proveedor" CssClass="form-control" TextMode="Phone"></asp:TextBox></div>
                     </div>          
                            
         <br />
            
            <div class=" row " id="row_direccion">
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtCaPro" placeHolder="Calle de Proveedor"     CssClass="form-control"></asp:TextBox></div>
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtNuPro" placeHolder="Numero de Proveedor"   CssClass="form-control" TextMode="Number"></asp:TextBox></div>
            </div>
            <br />    
            <div class="row" id="row_direccion2">
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtCoPro" placeHolder="Colonia de Proveedor" CssClass="form-control"></asp:TextBox></div>
                <div class="col-md-6">      <asp:TextBox runat="server" ID="txtCP" placeHolder="CP de Proveedor"   CssClass="form-control" TextMode="Number"></asp:TextBox></div>
            </div>
         <br />
            <div class="row" id="row-municipio">
                <div class="col-md-6">  <asp:DropDownList  runat="server" ID="DropDownList1" placeHolder="ID Municipio" CssClass="form-control"></asp:DropDownList></div>
            </div>
<br />
            <asp:Label runat="server" Text="Contacto"></asp:Label>
           <div class="row" id="row_contacto">
                <div class="col-md-6 "> <asp:TextBox runat="server" ID="txtNomCon" placeHolder="Nombre Contacto"   CssClass="form-control"></asp:TextBox></div>
                <div class="col-md-6 "> <asp:TextBox runat="server" ID="txtApePa" placeHolder="Apellido Paterno" CssClass="form-control"></asp:TextBox></div>
           </div>
           <br />
           <div class="row" id="row_contacto2">
               <div class="col-md-6 "> <asp:TextBox runat="server" ID="txtApeMa" placeHolder="Apellido Materno" CssClass="form-control"></asp:TextBox></div>
               <div class="col-md-6 "> <asp:TextBox runat="server" ID="txtCarCon" placeHolder="Cargo del Contacto" CssClass="form-control"></asp:TextBox></div>
           </div>
            
          <br />

             <div class="row " id="row_celularcont">
                 <div class="col-md-6"> <asp:TextBox runat="server" ID="txtCePro" placeHolder="Celular del Contacto"  CssClass="form-control" TextMode="Phone"></asp:TextBox></div>   
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
            $("#gvProveedor").dataTable({

                "scrollX": true
            });
        });
    </script>






   </asp:Content>
