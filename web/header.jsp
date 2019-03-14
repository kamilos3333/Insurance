<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubezpieczalnia</title>
        <link rel="stylesheet" href="styl.css">
        <link href="https://fonts.googleapis.com/css?family=Francois+One" rel="stylesheet">
        
        
    </head>
    <body> 
        
        
        <div class="container">

            <div class="header">
               
                <div class="date">Dzisiaj jest: <%
              Date dNow = new Date( );
              SimpleDateFormat ft = 
              new SimpleDateFormat ("dd.MM.yyyy EEEE");
               out.print(ft.format(dNow));
      %> 
                </div>
                
              
        
        <% 
           
        try
        {
            String username=session.getAttribute("susername").toString();
            String userid=session.getAttribute("sid").toString();
            String urole=session.getAttribute("srole").toString();
            
            
            
            out.print("<div class='loginform'> Witaj " +username+ " ");
            
            if(urole.equals("user")) {
                out.print("<a href='welcome.jsp'>Moje konto</a>");
            }
            else{
                out.print("<a href='adminP.jsp'>Moje konto</a>");
            }
            
            out.print(" ");
            out.print("<a href='logout.jsp'>Wyloguj</a>");
       
        
        %>
                
<!--                <div class="loginform" <li><a href="logowanie.jsp">Zaloguj się </a></li> -->
                   <% 
                    }catch(Exception ex)
        {
            out.print("<div class='loginform'> <a href='logowanie.jsp'>Zaloguj się</a>");
            response.sendRedirect("index.jsp");
        }
                   %>
                </div>
                </div>
                
                
                <div class="logo1">
                    
                    <div class="logo2"  />
                    <div class="logo"  />
                    <img src="logo.png" /> 

                       <br /> ubezpieczalnia.pl 
                       <div style="clear:both;  "></div>
                    </div>
                </div>
                    
                </div>
                <div class="menu">
			<ol>
				<li><a href="index.jsp">Strona główna</a></li>
				<li><a href="carfrom.jsp">Samochód</a>
				</li>
				<li><a href="dom.jsp">Dom</a>
				</li>
				<li><a href="errorPage.jsp">Życie i zdrowie</a>
				</li>
				<li><a href="errorPage.jsp">Podróże</a>
				</li>
				<li><a href="errorPage.jsp">O projekcie</a></li>
			</ol>
		
		</div>
		
                
                <div id="theme"></div>
                
    </body>
</html>