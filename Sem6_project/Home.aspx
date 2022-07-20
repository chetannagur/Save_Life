<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Sem6_project.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.js" type="text/javascript"></script>
    <script src="assets/js/custom.js" type="text/javascript"></script>
     <style  type="text/css">

         #img1
         {
              
             height:400px;
         }
         #img2
         {
             width:900px;
             height:400px;
         }
         #img3
         {
              width:900px;
             height:400px;
         }
         .cimg
         {
             width:70px;
             height:70px;
         }
           .d1
        {
            width:20%;
            height:200px;
            border:outset;
            padding:10px;
            margin:30px;
            color:red;
            background-color:InfoBackground;
            float:left;
        }
        #d2
        {
            margin:20px;

        }

         .img2 
         {
             width: 100%;
             height: 100%;
         }
         
     </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
    <div class="row">
        <div class ="col-md-8 col-sm-8 col-xs-12">
            <div id="carousel-example" class="carousel slide slide-bdr" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="item active">
                        <img id="img1" class="img-fluid" src="assets/img/1.jpg" />

                    </div>
                    <div class="item">
                        <img id="img2" class="img-fluid" src="assets/img/2.jpg" />

                    </div>
                    <div class="item">
                        <img id="img3" class="img-fluid" src="assets/img/3.jpg" />

                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example" data-slide-to="1"></li>
                    <li data-target="#carousel-example" data-slide-to="2"></li>
                </ol>

                <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="panel panel-primary ">
                <div class="panel-heading">
                    See what our clebs Point of view about blood donation...
                </div>
                <div class="panel-body chat-widget-main">
                    <div class="chat-widget-left">
                        The blood you donate gives someone another chance at life.
                    </div>
                    <div class="chat-widget-name-left">
                        <img id="c1" class="media-object img-circle img-left-chat cimg" src="assets/img/will.png" />
                        <h4>Will Smith</h4>
                    </div>
                    <hr />
                    <br />
                    <div class="chat-widget-right">
                        A life may depend on a gesture from you, a bottle of Blood.
                    </div>
                    <br />
                    <div class="chat-widget-name-right">
                        <img class="media-object img-circle img-right-chat cimg" src="assets/img/sachin.jpg" />
                        <br />
                        <h4>Sachin Tendulkar</h4>
                    </div>
                    <hr />
                    <br />
                    <div class="chat-widget-left">
                        The Blood Donor of today may be 
                        recipient of tomorrow.
                    </div>
                    <div class="chat-widget-name-left">
                        <img class="media-object img-circle img-left-chat cimg" src="assets/img/PM_Modi_2015.jpg" /><br />
                        <h4>Narendra Modi</h4>
                    </div>
                    <hr />
                    <div class="chat-widget-right">
                        Tears of a mother cannot save her Child.
                         But your Blood can.
                    </div>
                    <div class="chat-widget-name-right">
                        <img class="media-object img-circle img-right-chat cimg" src="assets/img/amit.png" /><br />
                        <h4>Amitabh Bachchan</h4>
                    </div>
                    <hr />
                    <div class="chat-widget-left">
                        A life may depend on a gesture from you, a bottle of Blood.
                    </div>
                    <div class="chat-widget-name-left">
                        <img class="media-object img-circle img-left-chat cimg" src="assets/img/akshay.jpg" /><br />
                        <h4>Akshay Kumar</h4>
                    </div>
                </div>

            </div>
        </div>

    </div>



        
     <div id="d2">


        <div class="d1">
            <a href="SearchDonor.aspx">
            <img src="assets/img/1d.PNG" class="img2" />
                </a>
        </div>
        <div class="d1">
            <a href="Request.aspx">
            <img src="assets/img/rq.PNG" class="img2" />
                </a>
                </div>
        <div class="d1">
            <a href="ViewStock.aspx">
            <img src="assets/img/d2.PNG" class="img2" />
                </a>
                </div>
        <div class="d1">
            <a href="RequestBlood.aspx">
            <img src="assets/img/d4.PNG" class="img2" />
                </a>
        </div>
         <br />
        
	
    </div>
    <br />
    <br />
    <br />
<br />
<br />
<br />
<br />
<br />
    <br />
    <div 
    
      style="visibility: visible;  height: 25px; text-align: center; width: 100%; font-weight: 700; color: #0000FF; background-color: #FF3300;">
        © 2019-20 Online Blood Bank Management . Developed by Chetan Nagur
         
	</div>
 
 
</asp:Content>
