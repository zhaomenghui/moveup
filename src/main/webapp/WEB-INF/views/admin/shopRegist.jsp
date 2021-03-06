<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="align" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/favicon.ico" type="image/ico"/>

    <title>JapanMoveUpWest</title>

    <!-- Bootstrap -->
    <link href="/static/admin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/static/admin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/static/admin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/static/admin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- bootstrap-progressbar -->
    <link href="/static/admin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/static/admin/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="/static/admin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-fileinput -->
    <link href="/static/admin/vendors/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="/static/admin/build/css/custom.min.css" rel="stylesheet">
    <!-- select2 -->
    <link  href="/static/admin/vendors/select2/dist/css/select2.min.css" rel="stylesheet">

    <%--<script src="/static/admin/vendors/jquery-2.0.3/jquery-2.0.3.min.js"></script>--%>

    <style>
        .validatorError {
            color: red;
        }
        .select2-container--default .select2-selection--multiple {
            border-radius:0;
            border: 1px solid #ccc;;
            width: 100%;
            height: 100px;
        }
        .file-caption .form-control .kv-fileinput-caption .icon-visible{
            display: none;
        }
        .input-group-btn .input-group-append{
            text-align: right;
        }
        .btn .btn-primary .btn-file{
            float: right;
            border-radius: 3px;
        }
        .form-group .btn{
            margin-bottom: 0px;
        }
        .btn-file{
            float: right;
        }
        .input-group .form-control, .input-group-addon, .input-group-btn{

        }
    </style>

</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">

        <!-- sidebar menu -->
        <jsp:include page="sidebar.jsp"/>
        <!-- /sidebar menu -->

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown"
                               aria-expanded="false">
                                <img src="images/img.jpg" alt="">?????? ??????
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>????????????</h3>
                    </div>
                    <%--<div class="title_right">--%>
                        <%--<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">--%>
                            <%--<div class="input-group">--%>
                                <%--<input type="text" class="form-control" placeholder="Search for...">--%>
                                <%--<span class="input-group-btn">--%>
                                     <%--<button class="btn btn-default" type="button">Go!</button>--%>
                                <%--</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>??????????????????
                                    <small>????????????</small>
                                </h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <br />
                               <form:form modelAttribute="shopRegistForm" id="userForm" enctype="multipart/form-data"
                                          class="form-horizontal form-label-left" onload="test()">
                                   <form:input type="hidden" path="picUrl"  id = "picUrl" value="${form.picUrl}"/>
                                   <form:input type="hidden" path="picUrl1" id = "picUrl1" value="${form.picUrl1}"/>
                                   <form:input type="hidden" path="picUrl2" id = "picUrl2" value="${form.picUrl2}"/>
                                   <form:input type="hidden" path="picUrl3" id = "picUrl3" value="${form.picUrl3}"/>
                                   <form:input type="hidden" path="picUrl4" id = "picUrl4" value="${form.picUrl4}"/>
                                   <form:input type="hidden" path="picUrl5" id = "picUrl5" value="${form.picUrl5}"/>
                                   <%--<form:input type="hidden" path="picUrl6" id = "picUrl6" value="${form.picUrl6}"/>--%>
                                   <form:input type="hidden" path="picUrl7" id = "picUrl7" value="${form.picUrl7}"/>
                                   <form:input type="hidden" path="picUrl8" id = "picUrl8" value="${form.picUrl8}"/>
                                   <form:input type="hidden" path="picUrl9" id = "picUrl9" value="${form.picUrl9}"/>
                                   <form:input type="hidden" path="picUrl10" id = "picUrl0" value="${form.picUrl10}"/>
                                   <form:input type="hidden" path="picUrl11" id = "picUrl11" value="${form.picUrl11}"/>
                                   <form:input type="hidden" path="picUrl12" id = "picUrl12" value="${form.picUrl12}"/>
                                    <div class="item form-group" id="shopRadio" style="display: none">
                                        <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">???????????????
                                        </label>
                                        <div class="radio" id="radio" onchange="search()">
                                            <label>
                                                <form:radiobutton path="adminShop"  value="1" checked="checked"
                                                                  id="optionsAdminShopRadios1" name="AS" /> ?????????????????????
                                            </label>

                                            <label>
                                                <form:radiobutton path="adminShop" value="2"   id="optionsAdminShopRadios2"
                                                                  name="AS"/> ?????????UUID??????
                                            </label>
                                        </div>
                                    </div>
                                   <div class="item form-group" style="display: none" id="searchId" >
                                       <label class="control-label col-md-3 col-sm-1 col-xs-12" for="">?????????UUID???
                                       </label>
                                       <div class="col-md-2 col-sm-1 col-xs-12">
                                           <form:input path="searchId"  name="" type="text" class="form-control col-md-7 col-xs-12"></form:input>
                                       </div>
                                   </div>
                                   <div class="item form-group"  id="mail" style="display: none">
                                       <label class="control-label col-md-3 col-sm-1 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-2 col-sm-1 col-xs-12">
                                           <form:input path="mail"  name="" type="text" class="form-control col-md-7 col-xs-12"></form:input>
                                       </div>
                                   </div>
                                   <%--<div class="item form-group"  id="privilege" style="display: none">--%>
                                       <%--<label class="control-label col-md-3 col-sm-1 col-xs-12" for="">?????????--%>
                                       <%--</label>--%>
                                       <%--<div class="col-md-2 col-sm-1 col-xs-12">--%>
                                           <%--<form:select path="privilege" id="privilege" class="form-control" >--%>
                                               <%--<form:option value="0">????????????</form:option>--%>
                                               <%--<form:option value="1">????????????</form:option>--%>
                                               <%--<form:option value="2">????????????</form:option>--%>
                                           <%--</form:select>--%>
                                       <%--</div>--%>
                                   <%--</div>--%>
                                   <div class="ln_solid" id="solid" style="display: none"></div>
                                   <div class="item form-group">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">???????????????
                                       </label>
                                       <div class="col-md-2 col-sm-1 col-xs-12 form-group has-feedback">
                                           <form:select path="shopType" id="shopType" class="form-control"  onchange="supplement()">
                                               <form:option value="0">--</form:option>
                                               <form:option value="1">?????????</form:option>
                                               <form:option value="12">??????????????????</form:option>
                                               <form:option value="3">????????????????????????</form:option>
                                               <form:option value="4">??????</form:option>
                                               <form:option value="5">???????????????</form:option>
                                               <form:option value="6">??????</form:option>
                                               <form:option value="9">??????</form:option>
                                               <%--<form:option value="7">????????????</form:option>--%>
                                               <form:option value="10">??????</form:option>
                                               <form:option value="11">?????????????????????</form:option>
                                               <%--<form:option value="2">???????????????</form:option>--%>
                                               <%--<form:option value="8">??????????????????????????????</form:option>--%>
                                           </form:select>
                                       </div>
                                       <div id="genre" style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????<span
                                                   class="required">*</span>
                                           </label>
                                           <div class="col-md-2 col-sm-1 col-xs-12 form-group has-feedback">
                                               <form:select path="firstMenu" id="firstMenu" class="form-control" onchange="genre()" >
                                                   <form:option value="0">--</form:option>
                                                   <form:options items="${firstMenuList}" itemLabel="desc" itemValue="content" ></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="" >
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <div id="subGenre" style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">??????????????????<span
                                                   class="required">*</span>
                                           </label>
                                           <div class="col-md-6 col-sm-1 col-xs-12 form-group has-feedback" >
                                               <form:select path="secondMenu" id="secondMenu" class="form-control" multiple="multiple"
                                                            style="border-radius: 0;height: 80px; width:100%;">
                                                   <%--<form:option value="0">--</form:option>--%>
                                                   <form:options items="${secondMenuList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                       <div id="ceremony" style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">??????????????????
                                           </label>
                                           <div class="col-md-2 col-sm-1 col-xs-12 form-group has-feedback">
                                               <form:select path="ceremony" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options items="${firstMenuList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                       <div id="place" style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">???????????????
                                           </label>
                                           <div class="col-md-2 col-sm-1 col-xs-12 form-group has-feedback">
                                               <form:select path="place" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options items="${sceneList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="shopName" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????? <span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="name" id="name" class="form-control col-md-7 col-xs-12"
                                                       name="name" required="required" type="text"/>
                                       </div>
                                   </div>

                                   <div class="item form-group" id="title" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????? <span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="title" id="title" class="form-control col-md-7 col-xs-12"
                                                       name="title" required="required" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="excerpt" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????? <span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:textarea path="excerpt" id="excerpt"
                                                       class="form-control col-md-7 col-xs-12" name=""
                                                       required="required" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc1" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????????<span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc1" id="desc1editor" class="form-control col-md-7 col-xs-12"
                                                          name="" required="required"  cssStyle="height: 200px;" type = "hidden"/>
                                           <div class="x_content">
                                               <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor">
                                                       <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                       </ul>
                                                       </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                           <li>
                                                               <a data-edit="fontSize 5">
                                                                   <p style="font-size:17px">Huge</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 3">
                                                                   <p style="font-size:14px">Normal</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 1">
                                                                   <p style="font-size:11px">Small</p>
                                                               </a>
                                                           </li>
                                                       </ul>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)" id="btn-bold"><i class="fa fa-bold" ></i></a>
                                                       <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                                       <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                                       <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                                       <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                                       <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                                       <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                                       <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                                       <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                                       <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                                       <div class="dropdown-menu input-append">
                                                           <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                           <button class="btn" type="button">Add</button>
                                                       </div>
                                                       <a class="btn" data-edit="tel" title="Telephone"><i class="fa fa-phone"></i></a>
                                                       <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                                   </div>

                                                       <%--<div class="btn-group">--%>
                                                       <%--<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>--%>
                                                       <%--<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />--%>
                                                       <%--</div>--%>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                                       <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                                   </div>
                                               </div>
                                               <div id="editor" class="editor-wrapper placeholderText" contenteditable="true"></div>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="tel" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????? <span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="tel" id="tel" class="form-control col-md-7 col-xs-12"
                                                       name="" required="required" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="address" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????? <span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="address" id="address"
                                                       class="form-control col-md-7 col-xs-12" name=""
                                                       required="required" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc40" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????<span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc40" id="desc40" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc39" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????????<span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc39" id="desc39" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                       <div class="col-md-3 col-sm-6 col-xs-12"></div>
                                       <div class="radio  col-md-12 col-sm-3 col-xs-12" onchange="restDay()">
                                           <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                                           <div class="col-md-5 col-sm-2 col-xs-12">
                                               <label>
                                                   <form:radiobutton path="restRadio" checked="" value="1"
                                                                     id="RD" name="rest"/> ??????
                                               </label>

                                               <label>
                                                   <form:radiobutton path="restRadio" value="2" id="RW"
                                                                     name="rest"/> ??????
                                               </label>
                                           </div>
                                           <div class="col-md-1 col-sm-2 col-xs-12">
                                               <a id="addItem" class="btn btn-round btn-warning " style="display: none;"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
                                           </div>

                                           <div class="item form-group col-md-12 col-sm-6 col-xs-12" style="display:none" id="restD">
                                               <label class="control-label col-md-4 col-sm-6 col-xs-12"><span
                                                       class="required"></span></label>
                                               <form:select path="restDates" id="restDate" class="form-control col-md-3 col-xs-12"
                                                            name="" required="" multiple="multiple" style="border-radius: 0;height: 80px; width:30%;display:none" >
                                                   <option value="1">1</option>
                                                   <option value="2">2</option>
                                                   <option value="3">3</option>
                                                   <option value="4">4</option>
                                                   <option value="5">5</option>
                                                   <option value="6">6</option>
                                                   <option value="7">7</option>
                                                   <option value="8">8</option>
                                                   <option value="9">9</option>
                                                   <option value="10">10</option>
                                                   <option value="11">11</option>
                                                   <option value="12">12</option>
                                                   <option value="13">13</option>
                                                   <option value="14">14</option>
                                                   <option value="15">15</option>
                                                   <option value="16">16</option>
                                                   <option value="17">17</option>
                                                   <option value="18">18</option>
                                                   <option value="19">19</option>
                                                   <option value="20">20</option>
                                                   <option value="21">21</option>
                                                   <option value="22">22</option>
                                                   <option value="23">23</option>
                                                   <option value="24">24</option>
                                                   <option value="25">25</option>
                                                   <option value="26">26</option>
                                                   <option value="27">27</option>
                                                   <option value="28">28</option>
                                                   <option value="29">29</option>
                                                   <option value="30">30</option>
                                                   <option value="31">31</option>
                                               </form:select>
                                           </div>

                                           <div class="item form-group col-md-12 col-sm-6 col-xs-12 " style="margin-top: 15px;display: none;" id="wk">
                                               <div class=" col-md-12 col-sm-6 col-xs-12 ">
                                                   <label class="control-label col-md-3 col-sm-6 col-xs-12"><span
                                                           class="required"></span></label>
                                                   <div class="col-md-2 col-sm-2 col-xs-12 form-group " id="restWeeks" name="restWeeks" >
                                                       <select path="restWeek" id="restWeek" class="form-control col-md-3 col-xs-12"
                                                               name="stock[0].week" required=""  style="border-radius: 0;height: 34px;" >
                                                           <option value="0">--</option>
                                                           <option value="1">???1???</option>
                                                           <option value="2">???2???</option>
                                                           <option value="3">???3???</option>
                                                           <option value="4">???4???</option>
                                                       </select>
                                                   </div>
                                                   <label class="control-label col-md-1 col-sm-6 col-xs-12"><span
                                                           class="required"></span></label>
                                                   <div class="col-md-2 col-sm-2 col-xs-12 form-group " id="restWeekDays" name="restWeekDays">
                                                       <select path="restWeekDay" id="restWeekDay" class="form-control col-md-1 col-xs-12"
                                                               name="stock[0].week" required=""  style="border-radius: 0;height: 34px; ">
                                                           <option value="0">--</option>
                                                           <option value="1">?????????</option>
                                                           <option value="2">?????????</option>
                                                           <option value="3">?????????</option>
                                                           <option value="4">?????????</option>
                                                           <option value="5">?????????</option>
                                                           <option value="6">?????????</option>
                                                           <option value="7">?????????</option>
                                                       </select>
                                                   </div>
                                               </div>
                                               <div id="item" style="display: none"></div>
                                           </div>
                                       </div>

                                   </div>
                                   <%--<div class="item form-group"id="File6" style="display: none">--%>
                                       <%--<label class="control-label col-md-3 col-sm-3 col-xs-12" for="">360flic <span--%>
                                               <%--class="required">*</span>--%>
                                       <%--</label>--%>
                                       <%--<div class="col-md-6 col-sm-6 col-xs-12">--%>
                                           <%--<form:input path="picUrl6" id="picUrl6"--%>
                                                       <%--class="form-control col-md-7 col-xs-12" name="picUrl6"/>--%>
                                       <%--</div>--%>
                                   <%--</div>--%>

                                   <div class="item form-group">
                                       <div class="col-md-3 col-sm-6 col-xs-12"></div>
                                       <div class="col-md-6 col-sm-6 col-xs-12" id="File0" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class="control-label col-md-6 col-sm-3 col-xs-12" style="text-align: left" for="">??????????????????????????? <span
                                                       class="">*</span>
                                               </label>
                                               <label class="control-label col-md-6 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">

                                               <form:input path="picFile" id="picFile"
                                                           class="form-control col-md-7 col-xs-12" name="picFile"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="">
                                       <div class="col-md-3 col-sm-6 col-xs-12"></div>
                                       <div class="col-md-2 col-sm-6 col-xs-12" id="File" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12" style="text-align: left;padding:0 5px;" for="">??????????????? <span
                                                       class="required">*</span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 750 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                                   <%--<div class="col-md-12 col-sm-3 col-xs-12">?????????: 750 X 500</div>--%>
                                               <form:input path="picFile1" id="picFile1"
                                                           class="form-control col-md-7 col-xs-12" name="picFile1"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                       <div class="col-md-2 col-sm-6 col-xs-12" id="File1" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12" style="text-align: left;padding:0 5px;" for="">????????????1 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile2" id="picFile2"
                                                           class="form-control col-md-7 col-xs-12" name="picFile2"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                       <div class="col-md-2 col-sm-6 col-xs-12" id="File2" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12" style="text-align: left;padding:0 5px;" for="">????????????2 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile3" id="picFile3"
                                                           class="form-control col-md-7 col-xs-12" name="picFile3"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="">
                                       <div class="col-md-3 col-sm-6 col-xs-12"></div>
                                       <div class="col-md-2 col-sm-6 col-xs-12" id="File3" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????3 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile4" id="picFile4"
                                                           class="form-control col-md-7 col-xs-12" name="picFile4"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                       <div  class="col-md-2 col-sm-6 col-xs-12" id="File4" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12" >
                                               <label class=" col-md-5 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????4 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile5" id="picFile5"
                                                           class="form-control col-md-7 col-xs-12" name="picFile5"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                       <div  class="col-md-2 col-sm-6 col-xs-12"  id="File5" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????5 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile7" id="picFile7"
                                                           class="form-control col-md-7 col-xs-12" name="picFile7"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="">
                                       <div class="col-md-3 col-sm-6 col-xs-12"></div>
                                       <div class="col-md-2 col-sm-6 col-xs-12" id="File8" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????6 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile8" id="picFile8"
                                                           class="form-control col-md-7 col-xs-12" name="picFile8"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                       <div  class="col-md-2 col-sm-6 col-xs-12" id="File9" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????7 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile9" id="picFile9"
                                                           class="form-control col-md-7 col-xs-12" name="picFile9"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                       <div  class="col-md-2 col-sm-6 col-xs-12" id="File10" style="display: none">
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <label class=" col-md-5 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????8 <span
                                                       class="required"></span>
                                               </label>
                                               <label class=" col-md-7 col-sm-3 col-xs-12">?????????: 500 X 500</label>
                                           </div>
                                           <div class="col-md-12 col-sm-6 col-xs-12">
                                               <form:input path="picFile10" id="picFile10"
                                                           class="form-control col-md-7 col-xs-12" name="picFile10"
                                                           required="" type="file"/>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="video" style="display: none">
                                       <div class="radio  col-md-12 col-sm-3 col-xs-12" onchange="videoChose()">
                                           <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                                           <div class="col-md-5 col-sm-2 col-xs-12">
                                               <label>
                                                   <form:radiobutton path="" checked="" value="1"
                                                                     id="videoLeft" name="video"/> ??????
                                               </label>

                                               <label>
                                                   <form:radiobutton path="" value="2" id="videoRight"
                                                                     name="video"/> ??????
                                               </label>
                                           </div>
                                       </div>
                                       <div class="col-md-12 col-sm-6 col-xs-12">
                                           <div class="col-md-3 col-sm-6 col-xs-12"></div>
                                           <div class="col-md-6 col-sm-6 col-xs-12" id="vRight" style="display: none">
                                               <div class="col-md-12 col-sm-6 col-xs-12" >
                                                   <label class=" col-md-6 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????9 <span
                                                           class="required"></span>
                                                   </label>
                                                   <label class=" col-md-6 col-sm-3 col-xs-12" style="text-align: right">?????????: 350 X 230</label>
                                               </div>
                                               <div class="col-md-12 col-sm-6 col-xs-12">
                                                   <form:input path="picFile11" id="picFile11"
                                                               class="form-control col-md-7 col-xs-12" name="picFile11"
                                                               required="" type="file"/>
                                               </div>
                                           </div>
                                           <div class="col-md-6 col-sm-6 col-xs-12" id="vLeft" style="display: none">
                                               <p ><form:input path="videoUrl" id="videoUrl" type="text"
                                                           class="form-control col-md-7 col-xs-12" name=""/></p>
                                               <p style="margin-top: 40px;" >YOUTUBE URL ????????????????????????</p>
                                               <p >?????????????????????????????? : ?rel=0&mute=1;autoplay=1</p>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="File6" style="display: none">
                                       <div class="radio  col-md-12 col-sm-3 col-xs-12" onchange="flicChose()">
                                           <label class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                                           <div class="col-md-5 col-sm-2 col-xs-12">
                                               <label>
                                                   <form:radiobutton path="" checked="" value="1"
                                                                     id="flicLeft" name="flic"/> 360flic
                                               </label>

                                               <label>
                                                   <form:radiobutton path="" value="2" id="flicRight"
                                                                     name="flic"/> ??????
                                               </label>
                                           </div>
                                       </div>
                                       <div class="col-md-12 col-sm-6 col-xs-12">
                                           <div class="col-md-3 col-sm-6 col-xs-12"></div>
                                           <div class="col-md-6 col-sm-6 col-xs-12" id="360Right" style="display: none">
                                               <div class="col-md-12 col-sm-6 col-xs-12" >
                                                   <label class=" col-md-6 col-sm-3 col-xs-12"  style="text-align: left;padding:0 5px;" for="">????????????10 <span
                                                           class="required"></span>
                                                   </label>
                                                   <label class=" col-md-6 col-sm-3 col-xs-12" style="text-align: right">?????????: 350 X 230</label>
                                               </div>
                                               <div class="col-md-12 col-sm-6 col-xs-12">
                                                   <form:input path="picFile12" id="picFile12"
                                                               class="form-control col-md-7 col-xs-12" name="picFile12"
                                                               required="" type="file"/>
                                               </div>
                                           </div>
                                           <div class="col-md-6 col-sm-6 col-xs-12" id="360Left" style="display: none">
                                               <p ><form:input path="picUrl6" id="picUrl6" type="text"
                                                               class="form-control col-md-7 col-xs-12" name=""/></p>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc2" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc2" id="desc2" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc3" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc3" id="desc3" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc4" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc4" id="desc4" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc5" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="desc5">??????????????????
                                       </label>
                                       <%--<div class="col-md-6 col-sm-6 col-xs-12">--%>
                                           <%--<form:input path="desc5" id="desc5" class="form-control col-md-7 col-xs-12"--%>
                                                       <%--name="" required="" type="text"/>--%>
                                       <%--</div>--%>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc5" id="desc5editor" class="form-control col-md-7 col-xs-12"
                                                       name="" required="required"  cssStyle="height: 80px;" type = "hidden"/>
                                           <div class="x_content">
                                               <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor3">
                                                       <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                       </ul>
                                                       </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                           <li>
                                                               <a data-edit="fontSize 5">
                                                                   <p style="font-size:17px">Huge</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 3">
                                                                   <p style="font-size:14px">Normal</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 1">
                                                                   <p style="font-size:11px">Small</p>
                                                               </a>
                                                           </li>
                                                       </ul>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)" id="btn-bold"><i class="fa fa-bold" ></i></a>
                                                       <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                                       <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                                       <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                                       <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                                       <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                                       <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                                       <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                                       <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                                       <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                                       <div class="dropdown-menu input-append">
                                                           <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                           <button class="btn" type="button">Add</button>
                                                       </div>
                                                       <a class="btn" data-edit="tel" title="Telephone"><i class="fa fa-phone"></i></a>
                                                       <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                                   </div>
                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                                       <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                                   </div>
                                               </div>
                                               <div id="editor3" class="editor-wrapper placeholderText" contenteditable="true"></div>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc6" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc6" id="desc6" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc7" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc7" id="desc7" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc8" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc8" id="desc8" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc9" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc9" id="desc9" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc10" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc10" id="desc10" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc11" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc11" id="desc11" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc12" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc12" id="desc12" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc13" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc13" id="desc13" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc14" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc14" id="desc14" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc16" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????????????????
                                       </label>
                                       <%--<div class="col-md-6 col-sm-6 col-xs-12">--%>
                                           <%--<form:input path="desc16" id="desc16" class="form-control col-md-7 col-xs-12"--%>
                                                       <%--name="" required="" type="text"/>--%>
                                       <%--</div>--%>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc16" id="desc16editor" value="${shopForm.desc16}" class="form-control col-md-7 col-xs-12"
                                                       name="desc16" required="required" type = "hidden" cssStyle="height: 200px;"/>
                                           <div class="x_content">
                                               <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor5">
                                                       <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                       </ul>
                                                       </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                           <li>
                                                               <a data-edit="fontSize 5">
                                                                   <p style="font-size:17px">Huge</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 3">
                                                                   <p style="font-size:14px">Normal</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 1">
                                                                   <p style="font-size:11px">Small</p>
                                                               </a>
                                                           </li>
                                                       </ul>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)" id="btn-bold"><i class="fa fa-bold" ></i></a>
                                                       <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                                       <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                                       <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                                       <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                                       <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                                       <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                                       <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                                       <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                                       <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                                       <div class="dropdown-menu input-append">
                                                           <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                           <button class="btn" type="button">Add</button>
                                                       </div>
                                                       <a class="btn" data-edit="tel" title="Telephone"><i class="fa fa-phone"></i></a>
                                                       <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                                   </div>

                                                       <%--<div class="btn-group">--%>
                                                       <%--<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>--%>
                                                       <%--<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />--%>
                                                       <%--</div>--%>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                                       <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                                   </div>
                                               </div>

                                               <div id="editor5" class="editor-wrapper placeholderText" contenteditable="true"></div>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc17" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <%--<div class="col-md-6 col-sm-6 col-xs-12">--%>
                                           <%--<form:input path="desc17" id="desc17" class="form-control col-md-7 col-xs-12"--%>
                                                       <%--name="" required="" type="text"/>--%>
                                       <%--</div>--%>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc17" id="desc17editor" value="${shopForm.desc17}" class="form-control col-md-7 col-xs-12"
                                                       name="desc17" required="required" type = "hidden" cssStyle="height: 200px;"/>
                                           <div class="x_content">
                                               <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor6">
                                                       <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                       </ul>
                                                       </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                           <li>
                                                               <a data-edit="fontSize 5">
                                                                   <p style="font-size:17px">Huge</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 3">
                                                                   <p style="font-size:14px">Normal</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 1">
                                                                   <p style="font-size:11px">Small</p>
                                                               </a>
                                                           </li>
                                                       </ul>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)" id="btn-bold"><i class="fa fa-bold" ></i></a>
                                                       <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                                       <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                                       <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                                       <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                                       <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                                       <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                                       <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                                       <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                                       <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                                       <div class="dropdown-menu input-append">
                                                           <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                           <button class="btn" type="button">Add</button>
                                                       </div>
                                                       <a class="btn" data-edit="tel" title="Telephone"><i class="fa fa-phone"></i></a>
                                                       <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                                   </div>

                                                       <%--<div class="btn-group">--%>
                                                       <%--<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>--%>
                                                       <%--<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />--%>
                                                       <%--</div>--%>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                                       <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                                   </div>
                                               </div>

                                               <div id="editor6" class="editor-wrapper placeholderText" contenteditable="true"></div>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc18" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc18" id="desc18" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc19" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc19" id="desc19" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc20" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc20" id="desc20" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc21" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc21" id="desc21" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc22" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc22" id="desc22" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc23" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc23" id="desc23" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc24" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc24" id="desc24" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc25" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc25" id="desc25" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc26" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc26" id="desc26" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc27" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc27" id="desc27" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc28" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc28" id="desc28" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc34" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc34" id="desc34" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc15" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc15" id="desc15" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc35" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc35" id="desc35" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc36" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????????????????????
                                       </label>
                                       <%--<div class="col-md-6 col-sm-6 col-xs-12">--%>
                                           <%--<form:input path="desc36" id="desc36" class="form-control col-md-7 col-xs-12"--%>
                                                       <%--name="" required="" type="text"/>--%>
                                       <%--</div>--%>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc36" id="desc36editor" value="${shopForm.desc36}" class="form-control col-md-7 col-xs-12"
                                                       name="desc36" required="required" type = "hidden" cssStyle="height: 200px;"/>
                                           <div class="x_content">
                                               <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor4">
                                                       <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                       </ul>
                                                       </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                           <li>
                                                               <a data-edit="fontSize 5">
                                                                   <p style="font-size:17px">Huge</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 3">
                                                                   <p style="font-size:14px">Normal</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 1">
                                                                   <p style="font-size:11px">Small</p>
                                                               </a>
                                                           </li>
                                                       </ul>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)" id="btn-bold"><i class="fa fa-bold" ></i></a>
                                                       <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                                       <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                                       <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                                       <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                                       <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                                       <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                                       <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                                       <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                                       <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                                       <div class="dropdown-menu input-append">
                                                           <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                           <button class="btn" type="button">Add</button>
                                                       </div>
                                                       <a class="btn" data-edit="tel" title="Telephone"><i class="fa fa-phone"></i></a>
                                                       <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                                   </div>

                                                       <%--<div class="btn-group">--%>
                                                       <%--<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>--%>
                                                       <%--<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />--%>
                                                       <%--</div>--%>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                                       <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                                   </div>
                                               </div>

                                               <div id="editor4" class="editor-wrapper placeholderText" contenteditable="true"></div>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc37" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????????????????????????????????
                                       </label>
                                           <%--<div class="col-md-6 col-sm-6 col-xs-12">--%>
                                           <%--<form:input path="desc37" id="desc37" class="form-control col-md-7 col-xs-12"--%>
                                           <%--name="" required="" type="text"/>--%>
                                           <%--</div>--%>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc37" id="desc37editor" class="form-control col-md-7 col-xs-12"
                                                       name="" required="required"  cssStyle="height: 200px;" type = "hidden"/>
                                           <div class="x_content">
                                               <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor2">
                                                       <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="fa fa-font"></i><b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                       </ul>
                                                       </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                                       <ul class="dropdown-menu">
                                                           <li>
                                                               <a data-edit="fontSize 5">
                                                                   <p style="font-size:17px">Huge</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 3">
                                                                   <p style="font-size:14px">Normal</p>
                                                               </a>
                                                           </li>
                                                           <li>
                                                               <a data-edit="fontSize 1">
                                                                   <p style="font-size:11px">Small</p>
                                                               </a>
                                                           </li>
                                                       </ul>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)" id="btn-bold"><i class="fa fa-bold" ></i></a>
                                                       <a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="fa fa-italic"></i></a>
                                                       <a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="fa fa-strikethrough"></i></a>
                                                       <a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="fa fa-underline"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="fa fa-list-ul"></i></a>
                                                       <a class="btn" data-edit="insertorderedlist" title="Number list"><i class="fa fa-list-ol"></i></a>
                                                       <a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="fa fa-dedent"></i></a>
                                                       <a class="btn" data-edit="indent" title="Indent (Tab)"><i class="fa fa-indent"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="fa fa-align-left"></i></a>
                                                       <a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="fa fa-align-center"></i></a>
                                                       <a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="fa fa-align-right"></i></a>
                                                       <a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="fa fa-align-justify"></i></a>
                                                   </div>

                                                   <div class="btn-group">
                                                       <a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="fa fa-link"></i></a>
                                                       <div class="dropdown-menu input-append">
                                                           <input class="span2" placeholder="URL" type="text" data-edit="createLink" />
                                                           <button class="btn" type="button">Add</button>
                                                       </div>
                                                       <a class="btn" data-edit="tel" title="Telephone"><i class="fa fa-phone"></i></a>
                                                       <a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="fa fa-cut"></i></a>
                                                   </div>

                                                       <%--<div class="btn-group">--%>
                                                       <%--<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>--%>
                                                       <%--<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />--%>
                                                       <%--</div>--%>

                                                   <div class="btn-group">
                                                       <a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="fa fa-undo"></i></a>
                                                       <a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
                                                   </div>
                                               </div>
                                               <div id="editor2" class="editor-wrapper placeholderText" contenteditable="true"></div>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc29" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc29" id="desc29" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc30" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc30" id="desc30" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc31" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc31" id="desc31" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc41" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">????????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc41" id="desc41" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc42" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc42" id="desc42" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc43" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????????????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc43" id="desc43" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc32" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">?????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc32" id="desc32" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc33" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">???????????????????????????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc33" id="desc33" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="desc38" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="">??????
                                       </label>
                                       <div class="col-md-6 col-sm-6 col-xs-12">
                                           <form:input path="desc38" id="desc38" class="form-control col-md-7 col-xs-12"
                                                       name="" required="" type="text"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="coordinate" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12" ></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">??????X<span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-2 col-sm-1 col-xs-12" style="width: 220px;">
                                           <form:input required="required" path="coordinate1" type="text" id="coordinate1" name="coordinate1"
                                                        class="form-control co2-md-1 col -sm-6 col-xs-12"/>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">??????Y <span
                                               class="required">*</span></label>
                                       <div class="col-md-2 col-sm-1 col-xs-12" style="width: 220px;">
                                           <form:input required="required" path="coordinate2" type="text" id="coordinate2" name="coordinate2"
                                                       class="form-control co2-md-1 col -sm-6 col-xs-12"/>
                                       </div>
                                       <label hidden="hidden" class="control-label col-md-1 col-sm-1 col-xs-12" for="">now5 </label>
                                       <div hidden="hidden" class="col-md-1 col-sm-1 col-xs-12">
                                           <form:input path="now5" type="text" name="" class="form-control co2-md-1 col -sm-6 col-xs-12"/>
                                            <div class="radio">
                                               <label>
                                                   <form:radiobutton path="now5"  value="0"
                                                                     id="optionsRadios1" name="sortScore"/> ??????
                                               </label>

                                               <label>
                                                   <form:radiobutton path="now5" value="1" id="optionsRadios2"
                                                                     checked="checked" name="sortScore"/> ??????
                                               </label>
                                             </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <div id="area"  style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????
                                           </label>
                                           <div class="col-md-2 col-sm-1 col-xs-12 form-group has-feedback">
                                               <form:select  path="area" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options   items="${areaList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                       <div class="col-md-1 col-sm-1 col-xs-12"></div>
                                       <div id="seat" style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">??????</label>
                                           <div class="col-md-1 col-sm-1 col-xs-12" >
                                               <form:select path="seat" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options   items="${seatTagList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                       <div  id="contactTime" style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????????????????</label>
                                           <div class="col-md-1 col-sm-1 col-xs-12" >
                                               <form:select path="contactTime" class="form-control">
                                                   <form:option value="0">--:--</form:option>
                                                   <form:options   items="${shopOpenTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="walkTime" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????
                                       </label>
                                       <div class="col-md-2 col-sm-1 col-xs-12 form-group has-feedback">
                                           <form:select path="station" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <form:options   items="${stationList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-2 col-sm-1 col-xs-12" for="">????????????????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12">
                                           <form:input path="walkTime" type="text" name="" class="form-control co2-md-1 col -sm-6 col-xs-12"/>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="dayBudget" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="dayPriceLow" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${dayPriceList}" var="str">
                                                   <form:option value="${str.desc}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${dayPriceList}" itemLabel="desc" itemValue="desc"></form:options>--%>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" style="text-align: center" for="">???
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="dayPriceHigh" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${dayPriceList}" var="str">
                                                   <form:option value="${str.desc}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${dayPriceList}" itemLabel="desc" itemValue="desc"></form:options>--%>
                                           </form:select>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="nightBudget" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="nightPriceLow" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${nightPriceList}" var="str">
                                                   <form:option value="${str.desc}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${nightPriceList}" itemLabel="desc" itemValue="desc"></form:options>--%>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12"  style="text-align: center" for="">???
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="nightPriceHigh" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${nightPriceList}" var="str">
                                                   <form:option value="${str.desc}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${nightPriceList}" itemLabel="desc" itemValue="desc"></form:options>--%>
                                           </form:select>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="budget" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">??????
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="priceLow" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${dayPriceList}" var="str">
                                                   <form:option value="${str.desc}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${dayPriceList}" itemLabel="desc" itemValue="desc"></form:options>--%>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" style="text-align: center" for="">???
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="priceHigh" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${dayPriceList}" var="str">
                                                   <form:option value="${str.desc}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${dayPriceList}" itemLabel="desc" itemValue="desc"></form:options>--%>
                                           </form:select>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="averagePriceBudget" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????????????????<span
                                               class="required">*</span>
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="averagePriceLow" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <form:options   items="${dayPriceList}" itemLabel="desc" itemValue="desc"></form:options>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" style="text-align: center" for="">???
                                       </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="averagePriceHigh" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <form:options   items="${dayPriceList}" itemLabel="desc" itemValue="desc"></form:options>
                                           </form:select>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="" >
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <div id="averageBudget"  style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????
                                           </label>
                                           <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                               <form:select path="averagePrice" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <c:forEach items="${dayPriceList}" var="str">
                                                       <form:option value="${str.desc}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                                   </c:forEach>
                                                   <%--<form:options   items="${dayPriceList}" itemLabel="desc" itemValue="desc"></form:options>--%>
                                               </form:select>
                                           </div>
                                       </div>

                                   </div>
                                   <div class="item form-group" id="foodPrice" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????</label>
                                       <div class="col-md-1 col-sm-1 col-xs-12" >
                                           <form:select path="foodPrice" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${nightPriceList}" var="str">
                                                   <form:option value="${str.content}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${nightPriceList}" itemLabel="desc" itemValue="content"></form:options>--%>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????</label>
                                       <div class="col-md-1 col-sm-1 col-xs-12" >
                                           <form:select path="drinkPrice" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${nightPriceList}" var="str">
                                                   <form:option value="${str.content}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${nightPriceList}" itemLabel="desc" itemValue="content"></form:options>--%>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????</label>
                                       <div class="col-md-1 col-sm-1 col-xs-12" >
                                           <form:select path="corkagePrice" class="form-control">
                                               <form:option value="0">--</form:option>
                                               <c:forEach items="${nightPriceList}" var="str">
                                                   <form:option value="${str.content}"><fmt:formatNumber value="${str.desc}" pattern="#,###" />???</form:option>
                                               </c:forEach>
                                               <%--<form:options   items="${nightPriceList}" itemLabel="desc" itemValue="content"></form:options>--%>
                                           </form:select>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="dayShopOpenTime" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group date">
                                           <form:select path="dayOpenTime" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopOpenTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>

                                               <%--<div class="form-group">--%>
                                                   <%--<div class='input-group date' id='dayOpen'>--%>
                                                       <%--<form:input id="dayOpenTime" path="dayOpenTime"--%>
                                                                   <%--type='text' class="form-control"--%>
                                                                   <%--value=""/>--%>
                                                       <%--<span class="input-group-addon">--%>
                                                        <%--<span class="glyphicon glyphicon-calendar"></span>--%>
                                                    <%--</span>--%>
                                                   <%--</div>--%>
                                               <%--</div>--%>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="dayCloseTime" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopCloseTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-2 col-sm-1 col-xs-12"
                                              for="">??????????????????L.O. </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="dayLastOrder" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopCloseTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="nightShopOpenTime" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="nightOpenTime" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopOpenTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group">
                                           <form:select path="nightCloseTime" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopCloseTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-2 col-sm-1 col-xs-12"
                                              for="">??????????????????L.O. </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="nightLastOrder" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopCloseTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="shopOpenTime" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">???????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="openTime" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopOpenTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">???????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="closeTime" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopCloseTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????????????? </label>
                                       <div class="col-md-1 col-sm-1 col-xs-12 form-group ">
                                           <form:select path="lastOrder" class="form-control">
                                               <form:option value="0">--:--</form:option>
                                               <form:options   items="${shopCloseTimeList}" itemLabel="desc" itemValue="content"></form:options>
                                           </form:select>
                                       </div>
                                       <div id="headCount" style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????</label>
                                           <div class="col-md-1 col-sm-1 col-xs-12" >
                                               <form:select path="headCount" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options   items="${headCountTagList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                   </div>
                                   <div  class="item form-group" >
                                       <div id="massageTime" style="display: none">
                                           <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">??????????????????</label>
                                           <div class="col-md-1 col-sm-1 col-xs-12" >
                                               <form:select path="massageTime" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options   items="${massageTimeTagList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="" >
                                       <div id="roomType" style="display: none">
                                           <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">???????????????</label>
                                           <div class="col-md-1 col-sm-1 col-xs-12" >
                                               <form:select path="roomType" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options   items="${roomTypeTagList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                       <div id="roomNum"  style="display: none">
                                           <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">?????????</label>
                                           <div class="col-md-1 col-sm-1 col-xs-12" >
                                               <form:select path="roomNum" class="form-control">
                                                   <form:option value="0">--</form:option>
                                                   <form:options   items="${roomNumTagList}" itemLabel="desc" itemValue="content"></form:options>
                                               </form:select>
                                           </div>
                                       </div>
                                   </div>
                                   <%--<div class="item form-group">--%>
                                       <%--<div class="col-md-2 col-sm-1 col-xs-12"></div>--%>
                                       <%--<label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????</label>--%>
                                   <%--</div>--%>
                                   <%--<div class="item form-group">--%>
                                       <%--<div class="col-md-2 col-sm-1 col-xs-12"></div>--%>
                                       <%--<label class="control-label col-md-1 col-sm-1 col-xs-12" for="">${weekDayMap['weekDayTagList']}--%>
                                       <%--</label>--%>
                                       <%--<div class="col-md-6 col-sm-1 col-xs-12" align="center">--%>
                                           <%--<form:checkboxes id="characterList" path="weekDayList" items="${weekDayMap}"></form:checkboxes>--%>
                                       <%--</div>--%>
                                   <%--</div>--%>
                                   <div class="item form-group" id="genre2" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????<span
                                               class="required"></span>
                                       </label>
                                       <div class="col-md-6 col-sm-1 col-xs-12 checkbox-list" style="line-height:  27px;padding-top: 6px;">
                                           <form:checkboxes id="firstMenu" path="genreList" items="${firstMenuMap}" cssStyle=" text-align: center;"></form:checkboxes>
                                       </div>
                                   </div>
                                   <div  class="item form-group" id="object" style="display: none">
                                       <label class="control-label col-md-3 col-sm-1 col-xs-12" for="">??????
                                       </label>
                                       <div class="col-md-6 col-sm-1 col-xs-12 checkbox-list" style="line-height:  27px;padding-top: 6px;">
                                           <form:checkboxes id="object" path="objectList" items="${sceneMap}" cssStyle=" text-align: center;"></form:checkboxes>
                                       </div>
                                   </div>
                                   <div class="item form-group" id="scene" style="display: none">
                                       <label class="control-label col-md-3 col-sm-1 col-xs-12" for="">???????????????
                                       </label>
                                       <div class="col-md-6 col-sm-1 col-xs-12 checkbox-list" style="line-height:  27px;padding-top: 6px;">
                                           <form:checkboxes id="scene" path="sceneList" items="${sceneMap}" cssStyle=" text-align: center;"></form:checkboxes>
                                       </div>
                                    </div>
                                   <div class="item form-group" id="detailSearch" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????</label>
                                       <div class="col-md-6 col-sm-1 col-xs-12 checkbox-list" style="line-height:  27px;padding-top: 6px;">
                                           <form:checkboxes id="characterList" path="characterList" items="${characterMap}" cssStyle=" text-align: center;"></form:checkboxes>
                                       </div>
                                   </div>

                                   <div class="item form-group" id="brand" style="display: none">
                                       <div class="col-md-2 col-sm-1 col-xs-12"></div>
                                       <label class="control-label col-md-1 col-sm-1 col-xs-12" for="">????????????</label>
                                       <div class="col-md-6 col-sm-1 col-xs-12 checkbox-list" style="line-height:  27px;padding-top: 6px;" >
                                           <form:checkboxes id="brandList" path="brandList" items="${brandMap}" cssStyle=" text-align: center;"></form:checkboxes>
                                       </div>
                                   </div>
                                   <div class="item form-group"  id="publishDate" style="display: none">
                                       <label class="control-label col-md-3 col-sm-3 col-xs-12" for="publishStart">??????????????? </label>
                                       <div class="col-md-2 col-sm-6 col-xs-12">
                                           <form:input path="publishStart" type="date" id="publishStart" name="publishStart"
                                                       class="form-control col-md-7 col-xs-12"/>
                                       </div>
                                       <label class="control-label col-md-1 col-sm-3 col-xs-12" for="publishEnd">??????????????? </label>
                                       <div class="col-md-2 col-sm-6 col-xs-12">
                                           <form:input path="publishEnd" type="date" id="publishEnd" name="publishEnd"
                                                       class="form-control col-md-7 col-xs-12"/>
                                       </div>
                                   </div>

                                   <div class="ln_solid"></div>
                                   <div class="form-group">
                                        <div class="col-md-6 col-md-offset-3">
                                            <a class="btn btn-primary" href="/admin/shop/list/" style="width: 100px;">???????????????</a>

                                            <button id="send" type="submit" class="btn btn-success" style="width: 100px;">??????</button>
                                        </div>
                                   </div>
                            </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Japan Move Up West Admin
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<div id="shopLoading" style="display: none" class="loading">
    <div class="loading-text">Processing...</div>
</div>
<!-- jQuery -->
<script src="/static/admin/vendors/jquery/dist/jquery.min.js"></script>
<!-- jquery validator -->
<script src="/static/admin/vendors/jquery-validation-1.17.0/dist/jquery.validate.min.js"></script>
<script src="/static/admin/vendors/jquery-validation-1.17.0/dist/localization/messages_ja.min.js"></script>
<!-- Bootstrap -->
<script src="/static/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/static/admin/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/static/admin/vendors/nprogress/nprogress.js"></script>
<!-- Chart.js -->
<script src="/static/admin/vendors/Chart.js/dist/Chart.min.js"></script>
<!-- gauge.js -->
<script src="/static/admin/vendors/gauge.js/dist/gauge.min.js"></script>
<!-- bootstrap-progressbar -->
<script src="/static/admin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="/static/admin/vendors/iCheck/icheck.min.js"></script>
<!-- Skycons -->
<script src="/static/admin/vendors/skycons/skycons.js"></script>
<!-- Flot -->
<script src="/static/admin/vendors/Flot/jquery.flot.js"></script>
<script src="/static/admin/vendors/Flot/jquery.flot.pie.js"></script>
<script src="/static/admin/vendors/Flot/jquery.flot.time.js"></script>
<script src="/static/admin/vendors/Flot/jquery.flot.stack.js"></script>
<script src="/static/admin/vendors/Flot/jquery.flot.resize.js"></script>
<!-- Flot plugins -->
<script src="/static/admin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
<script src="/static/admin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
<script src="/static/admin/vendors/flot.curvedlines/curvedLines.js"></script>
<!-- DateJS -->
<script src="/static/admin/vendors/DateJS/build/date.js"></script>
<!-- JQVMap -->
<script src="/static/admin/vendors/jqvmap/dist/jquery.vmap.js"></script>
<script src="/static/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="/static/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="/static/admin/vendors/moment/min/moment.min.js"></script>
<script src="/static/admin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-fileinput -->
<script src="/static/admin/vendors/bootstrap-fileinput/js/fileinput.js"></script>
<script src="/static/admin/vendors/bootstrap-fileinput/js/locales/ja.js"></script>
<!-- Custom Theme Scripts -->
<script src="/static/admin/build/js/custom.min.js"></script>
<!--shop Scripts -->
<script src="/static/admin/build/js/shopRegist.js"></script>
<!--select2 -->
<script src="/static/admin/vendors/select2/dist/js/select2.min.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="/static/admin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="/static/admin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="/static/admin/vendors/google-code-prettify/src/prettify.js"></script>
<script src="/static/admin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<script src="/static/admin/vendors/switchery/dist/switchery.min.js"></script>
<script src="/static/admin/vendors/parsleyjs/dist/parsley.min.js"></script>
<script src="/static/admin/vendors/starrr/dist/starrr.js"></script>
<script src="/static/admin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>

<script src="/static/admin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="/static/admin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
<!-- bootstrap-datetimepicker -->
<script src="/static/admin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min2.js"></script>
<script src="/static/admin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.ja.js"></script>

<script type="text/javascript">

    $(document).ready(function(){
        var item = "<div class='form-group col-md-12 col-sm-6 col-xs-12' style=''>"
            +"<label class='control-label col-md-3 col-sm-2 col-xs-12' > </label>"
            +"<div class='col-md-2 col-sm-2 col-xs-12 form-group '>"
            // +"<div class='col-md-3 col-sm-2 col-xs-12  '>"
            +"<select id='week' name='stock[0].week' class='form-control col-md-2 col-sm-2 col-xs-12' >"
            +"<option value='0'>--</option>"
            +"<option value='1'>???1???</option>"
            +"<option value='2'>???2???</option>"
            +"<option value='3'>???3???</option>"
            +"<option value='4'>???4???</option>"
            +"</select>"
            +"</div>"
            +"<label class='control-label col-md-1 col-sm-2 col-xs-12' > </label>"
            +"<div class='col-md-2 col-sm-2 col-xs-12  '>"
            +"<select id='weekDay' name='stock[0].weekDay' class='form-control col-md-2 col-sm-2 col-xs-12' >"
            +"<option value='0'>--</option>"
            +"<option value='1'>?????????</option>"
            +"<option value='2'>?????????</option>"
            +"<option value='3'>?????????</option>"
            +"<option value='4'>?????????</option>"
            +"<option value='5'>?????????</option>"
            +"<option value='6'>?????????</option>"
            +"<option value='7'>?????????</option>"
            +"</select>"
            +"</div>"
            +"<label class='control-label col-md-1 col-sm-2 col-xs-12' > </label>"
            +"</div>"
            +"<hr/>"

        var n = 1;

        $("#addItem").click(function(){
            $("#item").append(item);

            var objWeek = $("#week");
            objWeek.each(function(i){
                this.id = "week"+n;
                this.name =  "stock["+n+"].week";
            });

            var objWeekDay = $("#weekDay");
            objWeekDay.each(function(i){
                this.id = "weekDay"+n;
                this.name =  "stock["+n+"].weekDay";
            });

            var objNONE = $("#unknown");
            objNONE.each(function(i){
                this.id = "unknown"+n;
                this.name = "stock["+n+"].unknown";
            });
            n = n+1;
        });

    });

</script>


<script>

    $('#picFile').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false, 'dropZoneTitle':'','showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopRegistForm.picUrl != null && shopRegistForm.picUrl != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopRegistForm.picUrl}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });

    $('#picFile1').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false,'dropZoneTitle':'', 'showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":750,"maxImageWidth":750,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl1 != null && shopForm.picUrl1 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl1}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile2').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false,'dropZoneTitle':'', 'showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl2 != null && shopForm.picUrl2 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl2}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile3').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false, 'dropZoneTitle':'','showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl3 != null && shopForm.picUrl3 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl3}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile4').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false, 'dropZoneTitle':'','showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl4 != null && shopForm.picUrl4 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl4}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile5').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false, 'dropZoneTitle':'','showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl5 != null && shopForm.picUrl5 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl5}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });

    $('#picFile7').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false, 'dropZoneTitle':'','showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl7 != null && shopForm.picUrl7 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl7}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile8').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false, 'dropZoneTitle':'','showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl8!= null && shopForm.picUrl8 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl8}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile9').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false,'dropZoneTitle':'', 'showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl9!= null && shopForm.picUrl9 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl9}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile10').fileinput({
        'language':'ja', 'showClose': true, 'showCaption':false,'showRemove':false, 'dropZoneTitle':'','showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":500,"maxImageWidth":500,"minImageHeight":500,"maxImageHeight":500
        <c:if test="${shopForm.picUrl10!= null && shopForm.picUrl10 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl10}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile11').fileinput({
        'language':'ja', 'showClose': true,'showCaption':false, 'showRemove':false, 'dropZoneTitle':'',    'showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":350,"maxImageWidth":350,"minImageHeight":230,"maxImageHeight":230
        <c:if test="${shopForm.picUrl11!= null && shopForm.picUrl11 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl11}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });
    $('#picFile12').fileinput({
        'language':'ja', 'showClose': true,'showCaption':false, 'showRemove':false, 'dropZoneTitle':'',    'showUpload': false, 'previewFileType': 'any', 'autoReplace': true,"minImageWidth":350,"maxImageWidth":350,"minImageHeight":230,"maxImageHeight":230
        <c:if test="${shopForm.picUrl12!= null && shopForm.picUrl12 != ''}">
        , 'uploadUrl': null, 'initialPreview': [
            "<img src='${shopForm.picUrl12}' class='file-preview-image kv-preview-data' stype='width:auto;height:auto;max-width:100%;max-height:100%;' alt='Desert' title='Desert'>"
        ]
        </c:if>
    });

    jQuery.validator.addMethod("stringMaxLength",function(value,element,param) {
        var length = value.length;
        for(var i=0; i< value.length; i++){
            if(value.charCodeAt(i) > 127){
                length++;
            }
        }
        return this.optional(element) || (length <= param);
    }, $.validator.format("{0}?????????????????????????????????????????????"));

    jQuery.validator.addMethod("telNo",function(value,element) {
        var tel = /^[\d-]*$/;
        return this.optional(element) || (tel.test(value));
    }, $.validator.format("???????????????????????????????????????????????????"));


    $("#restDate").select2({
        tags: true,
        maximumSelectionLength: 30  //
    });

    $("#secondMenu").select2({
        tags: true,
        maximumSelectionLength: 30  //
    });

    jQuery.validator.addMethod("afterPoint",function(value, element){
        var returnVal = false;
        var input=value;
        var ArrMen= input.split(".");
        if(ArrMen.length==2){
            if(ArrMen[1].length>9){
                returnVal = false;
                return false;
            }else{
                returnVal = true;
            }

            if(ArrMen[0].replace("-","").length>3){
                returnVal = false;
                return false;
            }else{
                returnVal = true;
            }
        }else if(ArrMen.length==1){
            input+=""
            if(input.replace("-","").length>3){
                returnVal = false;
                return false;
            }else{
                returnVal = true;
            }
        }
        return returnVal;
    },"?????????????????????????????????????????????");

    var $userForm = $("#userForm");
    $userForm.validate({
        submitHandler: function(form) {
            $("#desc1editor").val($('#editor').html());
            $("#desc37editor").val($('#editor2').html());
            $("#desc5editor").val($('#editor3').html());
            $("#desc36editor").val($('#editor4').html());
            $("#desc16editor").val($('#editor5').html());
            $("#desc17editor").val($('#editor6').html());
            $('#shopLoading').show();
            $(form).submit();
        },
        errorClass : "validatorError",
        rules : {
            radio :{
                required: true
            },
            searchId :{
                required: true,
                // digits: true
            },
            mail :{
                required: true,
                email: true
            },
            name :{
                required: true,
                maxlength: 30
            },
            title :{
                required: true,
                maxlength: 30
            },
            excerpt :{
                required: true,
                maxlength: 80
            },
            videoUrl :{
                url: true,
                maxlength: 255
            },
            tel :{
                required: true,
                maxlength: 13,
                telNo: true
            },
            address :{
                required: true,
                maxlength: 255
            },
            picFile:{
                required: true,
            },
            picFile1:{
                required: true,
            },
            walkTime :{
                digits: true
            },
            picUrl6 :{
                required: true,
                maxlength: 255
            },
            desc1 :{
                required: true,
                maxlength: 1024
            },
            desc2 :{
                maxlength: 255
            },
            desc3 :{
                maxlength: 255
            },
            desc4 :{
                maxlength: 255
            },
            desc5 :{
                maxlength: 255
            },
            desc6 :{
                maxlength: 255
            },
            desc7 :{
                maxlength: 255
            },
            desc8 :{
                maxlength: 255
            },
            desc9 :{
                maxlength: 255
            },
            desc10 :{
                maxlength: 255
            },
            desc11 :{
                maxlength: 255
            },
            desc12 :{
                maxlength: 255
            },
            desc13 :{
                maxlength: 255
            },
            desc14 :{
                maxlength: 255
            },
            desc15 :{
                maxlength: 255
            },
            desc16 :{
                maxlength: 255
            },
            desc17 :{
                maxlength: 255
            },
            desc18 :{
                maxlength: 255
            },
            desc19 :{
                maxlength: 255
            },
            desc20 :{
                maxlength: 255
            },
            desc21 :{
                maxlength: 255
            },
            desc22 :{
                maxlength: 255
            },
            desc23 :{
                maxlength: 255
            },
            desc24 :{
                maxlength: 255
            },
            desc25 :{
                maxlength: 255
            },
            desc26 :{
                maxlength: 255
            },
            desc27 :{
                maxlength: 255
            },
            desc28 :{
                maxlength: 255
            },
            desc29 :{
                maxlength: 255
            },
            desc30 :{
                maxlength: 255
            },
            desc31 :{
                maxlength: 255
            },
            desc32 :{
                maxlength: 255
            },
            desc33 :{
                maxlength: 255
            },
            desc34 :{
                maxlength: 255
            },
            desc35 :{
                maxlength: 255
            },
            desc36 :{
                maxlength: 255
            },
            desc37 :{
                maxlength: 255
            },
            desc38 :{
                maxlength: 255
            },
            desc39 :{
                required: true,
                maxlength: 255
            },
            desc40 :{
                required: true,
                maxlength: 255
            },
            coordinate1 :{
                required: true ,
                maxlength: 255
                // number:true ,
                // // range:[0.00001,90],
                // afterPoint:$('#coordinate1').val()
            },
            coordinate2 :{
                required: true ,
                maxlength: 255
                // number:true ,
                // // range:[0.00001,180],
                // afterPoint:$('#coordinate2').val()
            }
        }
    });

    $('#editor').html($("#desc1editor").val());
    $('#editor2').html($("#desc37editor").val());
    $('#editor3').html($("#desc5editor").val());
    $('#editor4').html($("#desc36editor").val());
    $('#editor5').html($("#desc16editor").val());
    $('#editor6').html($("#desc17editor").val());
    $('#dayOpen').datetimepicker({
        format: 'HH:mm',
    });


</script>
<script>
    function initToolbarBootstrapBindings() {
        var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
                'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
                'Times New Roman', 'Verdana'],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
        $.each(fonts, function (idx, fontName) {
            fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
        });
        // $('a[title]').tooltip({container:'body'});
        // $('.dropdown-menu input').click(function() {return false;})
        //     .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
        //     .keydown('esc', function () {this.value='';$(this).change();});
        //
        // $('[data-role=magic-overlay]').each(function () {
        //     var overlay = $(this), target = $(overlay.data('target'));
        //     overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
        // });
        // if ("onwebkitspeechchange" in document.createElement("input")) {
        //     var editorOffset = $('#editor').offset();
        //     $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
        // } else {
        //     $('#voiceBtn').hide();
        // }
    };

    // function showErrorAlert (reason, detail) {
    //     var msg='';
    //     if (reason==='unsupported-file-type') { msg = "Unsupported format " +detail; }
    //     else {
    //         console.log("error uploading file", reason, detail);
    //     }
    //     $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">??</button>'+
    //         '<strong>File upload error</strong> '+msg+' </div>').prependTo('#alerts');
    // };
    initToolbarBootstrapBindings();
    // $('#editor').wysiwyg({ fileUploadError: showErrorAlert} );
</script>
</body>
</html>