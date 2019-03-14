<%-- 
    Document   : rejestracja
    Created on : 2018-01-29, 21:43:01
    Author     : Kamil
--%>

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
        
        <form action="processR.jsp" method="POST">
<!--            User id: <input type="text" name="user_id" value="" />
            <br>-->
            Nazwa użytkownika: <input type="text" name="username" value="" />
            <br>
            Adres E-mail: <input type="email" name="email" value="" />
            <br>
            Adres zameldowania: <input type="text" name="adress" value="" />
            <br>
            Miasto: <input type="text" name="city" value="" />
            <br>
            Województwo: <select name="voivodeships">
                <option value="0">Województwo</option>
                <option value="dolnośląskie">dolnośląskie</option>
                <option value="kujawsko-pomorskie">kujawsko-pomorskie</option>
                <option value="lubelskie">lubelskie</option>
                <option value="lubuskie">lubuskie</option>
                <option value="łódzkie">łódzkie</option>
                <option value="małopolskie">małopolskie</option>
                <option value="mazowieckie">mazowieckie</option>
                <option value="opolskie">opolskie</option>
                <option value="podkarpackie">podkarpackie</option>
                <option value="podlaskie">podlaskie</option>
                <option value="pomorskie">pomorskie</option>
                <option value="śląskie">śląskie</option>
                <option value="świętokrzyskie">świętokrzyskie</option>
                <option value="warmińsko-mazurskie">warmińsko-mazurskie</option>
                <option value="wielkopolskie">wielkopolskie</option>
                <option value="zachodniopomorskie">zachodniopomorskie</option>
            </select>
            <br>
            Numer telefonu: <input type="text" name="telephone" value="" pattern="[0-9]{9}" title="Pole musi zawierać wyłącznie dziewięcio znakowe cyfry " required/>
            <br>
            Hasło: <input type="password" name="password" value="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Hasło powinnno składać się z minimum 8 znaków, jednej liczby oraz małej i dużej litery " required/>
            <br>
            Kod pocztowy: <input type="text" name="zip" value="" />
            <br>
            Imię i nazwisko: <input type="text" name="name_surname" value="" />
            <br>
            <input type="text" name="role" value="user" hidden />
            <br>
            <input type="submit" value="Grabar" />
        </form>
        <jsp:include page="footer.jsp" />
    </body>
</html>
