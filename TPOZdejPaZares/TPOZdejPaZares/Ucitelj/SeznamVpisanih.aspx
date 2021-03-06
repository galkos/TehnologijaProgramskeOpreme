﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeznamVpisanih.aspx.cs" Inherits="TPOZdejPaZares.Ucitelj.SeznamVpisanih" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <br />   

    <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
            <h3>Vnesite podatke o predmetu</h3>
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="form-group">
                        <h4>Izberite študijsko leto:</h4>
                        <asp:DropDownList CssClass="btn btn-primary dropdown-toggle" ID="DDL_Years" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL_Years_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="form-group">
                        <h4>Izberite predmet za izbrano študijsko leto:</h4>
                        <asp:DropDownList CssClass="btn btn-primary btn-block dropdown-toggle" ID="DDL_SubjectList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDL_SubjectList_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </div>
            </div>
            <h4 runat="server" id="header41">Izberite izvedbo predmeta: </h4>

            <asp:GridView ID="GV_subjects" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" OnSelectedIndexChanged="GV_subjects_SelectedIndexChanged" DataKeyNames="idIzvedbaPredmeta">
                <Columns>
                    <asp:BoundField DataField="StudijskiProgram" HeaderText="Študijski program" />
                    <asp:BoundField DataField="Letnik" HeaderText="Letnik" />
                    <asp:BoundField DataField="SestavniDelPred" HeaderText="Vrsta predmeta/modul" />
                    <asp:BoundField DataField="KreditneTocke" HeaderText="Št. kreditov" />
                    <asp:BoundField DataField="Izvajalci" HeaderText="Izvajalci" />
                    <asp:CommandField SelectText="seznam vpisanih" ShowSelectButton="True" />
                    <asp:BoundField DataField="idIzvedbaPredmeta" Visible="false" />
                </Columns>
                <SelectedRowStyle BorderColor="#2C3E50" BorderStyle="Solid" />
            </asp:GridView>

            <br />
            <h3 runat="server" id="header31">
                <asp:Label ID="L_header31" runat="server"></asp:Label></h3>
            <asp:Label ID="L_Error" runat="server" CssClass="label label-danger"></asp:Label>
            <asp:GridView ID="GV_students" runat="server" AutoGenerateColumns="false" class="table table-striped" OnSelectedIndexChanged="GV_students_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Zaporedna" HeaderText="Št." />                    
                    <asp:BoundField DataField="VpisnaStevilka" HeaderText="Vpisna št." />
                    <asp:BoundField DataField="PriimekInIme" HeaderText="Priimek in ime" />
                    <asp:BoundField DataField="VrstaVpisa" HeaderText="Vrsta vpisa" />
                    <asp:CommandField SelectText="podrobnosti" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>

            <asp:Button ID="buttonPdf" runat="server" Text="Shrani kot PDF" type="submit" OnClick="buttonExportToPdf_click" CssClass="btn btn-info" Visible="true" />
            <asp:Button ID="buttonCsv" runat="server" Text="Shrani kot CSV" type="submit" OnClick="buttonExportToCsv_click" CssClass="btn btn-info" Visible="true" />
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="buttonPdf" />
            <asp:PostBackTrigger ControlID="buttonCsv" />
        </Triggers>
    </asp:UpdatePanel>   

</asp:Content>
