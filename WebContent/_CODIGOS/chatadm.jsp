<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Chat Bot</title>
    <c:import url="_CODIGOS/header.jsp"/>
     <c:import url="_CODIGOS/head.jsp"/>
      </head>
</head>
<body>

<h1 style="text-align: center;">Chat de Atendimento<br></h1>
<form action="Passagem" method="post">
    <table style="margin: auto">
        <tr>
            <td>Apelido</td>
            <td>
                <input type="text" name="nome" value="Atendimento" readonly="true"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit" value="Enviar Dados"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>