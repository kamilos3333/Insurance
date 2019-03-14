<%
    try
    {
        session.removeAttribute("susername");
        session.removeAttribute("sid");
        session.removeAttribute("srole");
        session.setAttribute("msg", "Successfullt logged out");
        response.sendRedirect("index.jsp");
    }catch(Exception ex)
    {
        
    }

%>
