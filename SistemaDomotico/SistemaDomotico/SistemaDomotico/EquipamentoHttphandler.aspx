<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EquipamentoHttphandler.aspx.cs" Inherits="SistemaDomotico.demoHttphandler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <div id=" content">
    </div>

    <script>
        function obterFicheiroJson() {
            var xhr;
            var url = "demoHttphandler.aspx"
            var div = "content";
            if(window.XMLHttpRequest) {
                //IE7+, Firefox, Chrome, Opera, Safari
                xhr= new XMLHttpRequest();
            } else { //IE5, IE6
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            } if (xhr) {
                xhr.open("GET", url, true);
                xhr.onreadystatechange = function () {
                    if ((this.readyState === 4) && (this.status === 200)) {
                        var resultado = xhr.responseText;
                        document.getElementById(div).innerHTML = resultado + "<hr/>" + processarJson(resultado);
                    }
                }; xhr.send();
            }
        }
        function processarJson(json) {
            function descrever(objeto) {
                var resultado = ""; 
                for (propriedade in objeto) {
                    resultado += propriedade + ": " + objeto[propriedade] + "<br/>";
                } returnresultado; }
            var objetos = JSON.parse(json);//eval('(' + json+ ')');
            var resultado = "";
            for (var i = 0, quantos = objetos.length; i < quantos; i++) {
                resultado += descrever(objetos[i]);
            }}
        obterFicheiroJson();

    </script>
</body>





</html>
