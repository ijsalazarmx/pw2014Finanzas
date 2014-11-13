<%-- 
    Document   : index
    Created on : Nov 13, 2014, 1:01:06 PM
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAC</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/plugins/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
            <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SAC</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" onclick="noFuncional();"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                </li>
                <li class="dropdown">
                    <a href="#" onclick="noFuncional();"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                </li>
                <li class="dropdown">
                    <a href="#" onclick="noFuncional();"><i class="fa fa-user"></i> Username <b class="caret"></b></a>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                           <a href="index.html"><i class="fa fa-fw fa-usd"></i> Finanzas</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#cuentas">Catálogo de Cuentas <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="cuentas" class="collapse">
                                <li>
                                <a href="CatalogoCuentasView.html">Nuevo</a>
                            </li>
                            <li>
                                <a href="CatalogoVerView.html">Buscar</a>
                            </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#reportes">Reportes <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="reportes" class="collapse">
                            <li>
                                <a href="EstadoResultadosView.html">Estado de Resultados</a>
                            </li>
                            <li>
                                <a href="BalanceGeneralView.html">Balance General</a>
                            </li>
                            <li>
                                <a href="FlujoEfectivoView.html">Flujo de Efectivo</a>
                            </li>
                            </ul>
                        </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

        <div class="container-fluid">
<!--            //Meter campos-->
           <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">Nuevo</h1>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Agregar Cuenta</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <form onsubmit="noFuncional();">
                                                            <div class="form-group input-group">
                                                                <input class="form-control" type="text" placeholder="Consultar por No. cuenta o Nombre" maxlength="50" required="">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-default form-control" type="submit">
                                                                        <span class="glyphicon glyphicon-search"></span>
                                                                    </button>
                                                                </span>
                                                            </div> 
                                                        </form>                                                       
                                                        <div class="form-group">
                                                            <select id="tipo" class="form-control" onchange='cargarCategoria(this.value);'>
                                                                <option value='0'>Consultar por tipo</option>
                                                                <option value='1'>Activo</option>
                                                                <option value='2'>Pasivo</option>
                                                                <option value='3'>Resultados</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <select id="categoria" class="form-control" onchange='cargarSubCategoria();' disabled>
                                                                <option value='0'>Consultar por categoría</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <select id="subCategoria" class="form-control" onchange='cargarCuenta();' disabled>
                                                                <option value='0'>Consultar por subcategoría</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <select id="cuenta" class="form-control" onchange='seleccinado_select2(value);' disabled>
                                                                <option value='0'>Consultar por cuenta</option>
                                                            </select>
                                                        </div>
                                                        <div align="right">
                                                            <button type="submit" class="btn btn-primary" onclick="return noFuncional2();">Agregar</button>                                                     

                                                        </div>
                                                    </div>   
                                                </div>
                                            </div>
                                        </div>                                 
                                                                                
                                    </div>
                                </div>
                            </div>
                        </div>
            <!-- /.container-fluid -->
              <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><!--NO TOCAR-->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
            <!-- jQuery Version 1.11.0 -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/comboxFinanzas.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
</html>
