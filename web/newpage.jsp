<%-- 
    Document   : newpage
    Created on : 2018-01-05, 22:56:57
    Author     : Kamil
--%>

<%@page import="java.text.Format"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="Model.js"></script>
        <title>Ubezpieczalnia</title>   
    </head>
    <body>
        <jsp:include page="header.jsp" />

    <center>
        <div class="containerFORM" >    
            <div class="formContainer" >    
                <form name="formcar" action="processS.jsp" method="POST">

                    <table>
                        <input type="text" name="typ" value="samochod" disabled/>
                        </br>
                        <input type="text" name="users" value="${sid}" disabled/>
                        <tr>
                            <td>Rok produkcji</td>
                            <td> <select name="rok" id="year" onchange="setYear();" >
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                    <option value="2017">2017</option>  
                                    <option value="2016">2016</option> 
                                    <option value="2015">2015</option> 
                                </select></td>
                        </tr>

                        <tr>
                            <td>Marka</td>
                            <td><select name="brands" id="brands" onchange="setBrands();">
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                    <option value="">Wybierz rok</option>
                                </select>
                        </tr>  

                        <tr>
                            <td>Model</td>
                            <td><select name="model" id="model">
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                    <option value="">Wybierz marke</option>
                                </select>
                            </td>
                        </tr>

                        <tr>
                            <td>Kierownica</td>
                            <td><select id="kierownica" name="kierownica"> 
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                    <option value="z prawej strony">z prawej strony</option>
                                    <option value="z lewej strony">z lewej strony</option></td>
                            </select> 
                        </tr>
                        <tr>
                            <td>Data pierwszej rejestracji</td>
                            <td><input id="rej" type="date" value="" name="trej" required >
                        </tr>

                        <tr>
                            <td>Aktualny przebieg (w kilometrach, z dokładnością do 100 km)</td>
                            <td><input type="number" name="przebieg" value="" required />
                        </tr>

                        <tr>
                            <td>Zakładany roczny przebieg</td>
                            <td><select id="przebieg" name="rprzebieg">
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                    <option value="40 000 lub więcej">40 000 lub więcej</option>
                                    <option value="od 30 000 do 39 000">od 30 000 do 39 000</option>
                                    <option value="od 20 000 do 29 999">od 20 000 do 29 999</option>
                                    <option value="od 15 000 do 19 999">od 15 000 do 19 999</option>
                                    <option value="od 10 000 do 14 999">od 10 000 do 14 999</option>
                                    <<option value="od 5 000 do 9 999">od 5 000 do 9 999</option>
                                    <option value="poniżej 5 000">poniżej 5 000</option>
                                </select>
                        </tr>
                        <tr>
                            <td>Sposób użytkowania pojazdu</td>
                            <td><select id="uzytkowanie" name="uzyt">
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                    <option value="Wyłącznie prywatnie">Wyłącznie prywatnie</option>
                                    <option value="Wykorzystywany do prowadzenia działalności">Wykorzystywany do prowadzenia działalności</option>
                                    <option value="Nauka jazdy">Nauka jazdy</option>
                                    <option value="Przewóz osób">Przewóz osób</option>
                                    <option value="Usługi kurierskie i transportowe">Usługi kurierskie i transportowe</option>
                                    <option value="Pojazdy specjalistyczne">Pojazdy specjalistyczne</option>
                                    <option value="Wyścigi">Wyścigi</option>
                                    <option value="Wynajem">Wynajem</option>
                                    <option value="Inne">Inne</option>
                                </select>
                        </tr>

                        <tr>
                            <td> Miejsce parkowania pojazdu w nocy</td>
                            <td><select id="parkowanie" name="park">
                                    <option selected="" value="-1" disabled="">Wybierz</option>
                                    <option value="Ulica i inne miejsca niestrzeżone">Ulica i inne miejsca niestrzeżone</option>
                                    <option value="Miejsca strzeżone na zewnątrz budynków">Miejsca strzeżone na zewnątrz budynków</option>
                                    <option value="Zamknięty teren ogrodzony">Zamknięty teren ogrodzony</option>
                                    <option value="Garaż wspólny">Garaż wspólny</option>
                                    <option value="Garaż indywidualny">Garaż indywidualny</option>
                                </select>
                        </tr>

                        <tr>
                            <td> Gdzie parkujesz w godzinach nocnych (Podaj kod miasta)</td>
                            <td><input type="text" name="kodt" value="" size="5" maxlength="6" required />
                        </tr>

                        <tr>
                            <td> Czy pojazd jest sprowadzony?</td>
                            <td><input type="radio" name="sprow" 	       
                                       value="tak" > TAK 
                                <input type="radio" name="sprow" 
                                       value="nie"> NIE
                        </tr>

                        <%
                            Date dNow = new Date();
                            SimpleDateFormat ft
                                    = new SimpleDateFormat("yyyy-MM-dd");
                        %>

                        <tr>
                            <td> Od kiedy potrzebujesz ubezpieczenie</td>
                            <td><input id="ubz" name="ubz" type="date" value="" min='<% out.print(ft.format(dNow));%>' required >
                        </tr>

                    </table>


                    <input type="submit" name="prześlij">

                    <script type="text/javascript">
                        function Validate()
                        {
                            var a = document.getElementById("kierownica");
                            var b = document.getElementById("przebieg");
                            var c = document.getElementById("uzytkowanie");
                            var d = document.getElementById("parkowanie");
                            var strUser1 = a.options[a.selectedIndex].value;
                            var strUser2 = b.options[b.selectedIndex].value;
                            var strUser3 = c.options[c.selectedIndex].value;
                            var strUser4 = d.options[d.selectedIndex].value;

                            if (strUser1 == -1)
                            {
                                alert("Uzupełnij dane kierownica");
                            }
                            if (strUser2 == -1)
                            {
                                alert("Uzupełnij dane przebieg");
                            }
                            if (strUser3 == -1)
                            {
                                alert("Uzupełnij dane uzytkowanie");
                            }
                            if (strUser4 == -1)
                            {
                                alert("Uzupełnij dane parkowanie");
                            }
                        }
                    </script>


                </form>
                </center>
                <div style="clear:both;  "> </div>
            </div>
        </div>   
                        <jsp:include page="footer.jsp" />
        <body>








            </html>
