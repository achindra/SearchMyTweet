<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SearchMyTweet._Default" Async="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Social Media Insights</h1>
        <p class="lead">Know what&#39;s working on social media with the insights from our Social Media Analytics and Reporting Service</p>
        <p><a href="http://www.marketerboard.com" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
       
        <div class="col-md-4">
           <h2>Getting started</h2>
            <p>Twitter Search</p>
            <p>
               <asp:TextBox ID="txtSearch" runat="server" Width="500px">Congress BJP :) -filter:retweets</asp:TextBox>
               <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />               
            </p>
        </div>
       </div>
   <div class="row">
       <div>
          <span style="width:auto" runat="server" id="txtResult"></span>          
       </div>
    </div>

</asp:Content>
