<%-- 
    Document   : dom
    Created on : 2018-01-07, 16:04:41
    Author     : Kamil
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubezpieczalnia</title>

    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div class="containerFORM">
            <div class="formContainer" > 
                <form action="processD.jsp" method="POST" name="Form" >
                    <center>    
                        <input type="hidden" name="tform" value="dom" />
                        </br>
                        <input type="hidden" name="tuser" value="${sid}" />
                        </br>
                        <table>
                            <tr>
                                <td> Wybierz rodzaj nieruchomości: </td>
                                <td> <select type="t_house" name="nieruchomosc"> </p>
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                        <option value="Mieszkanie">Mieszkanie</option>
                                        <option value="Dom">Dom</option>
                                        <option value="Dom w budowie">Dom w budowie</option></select> 
                                </td></tr>
                            <tr>
                                <td>Piętro: </td>
                                <td><select type="t_house" name="pietro">
                                        <option selected="" value="-1" disabled="">Wybierz</option>
                                        <option value="Parter">Parter</option>
                                        <option value="Posrednie">Pośrednie</option>
                                        <option value="Ostatnie">Ostatnie</option>
                                    </select> </td>
                            </tr>
                            <tr>
                                <td>Materiał budowlany: </td>
                                <td><select type="t_house" name="material">
                                        <option selected="" value="-1" disabled="">Wybierz</option>
                                        <option value="Murowany">Murowany</option>
                                        <option value="Drewniany">Drewniany</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td>Rok budowy: </td>
                                <td><select type="t_house" name="rok">
                                        <option selected="" value="-1" disabled="">Wybierz</option>
                                        <option value="2017 i późniejszy">2017 i późniejszy</option>
                                        <option value="1993 - 2016">1993 - 2016</option>
                                        <option value="1968 - 1992">1968 - 1992</option>
                                        <option value="1949 - 1967">1949 - 1967</option>
                                        <option value="1948 i wcześniejszy">1948 i wcześniejszy</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td>Kod pocztowy nieruchomości: </td>
                                <td><input type="t_house" name="kod" value="" size="5" maxlength="6"  required /></td>
                            </tr>
                            <tr>
                                <td>Powierzchnia użytkowa: </td>
                                <td><input type="t_house" name="pow" value="" required /> m² </td>
                            </tr>

                        </table>

                        <input type="submit" onclick="Validate()" value='Dalej'>    
                        
                        <script type="text/javascript">
                        
                    </script>
                        
                        </form>
                    </center>
            </div>
        </div>
<jsp:include page="footer.jsp" />
    </body>
</html>
