<%-- 
    Document   : navbar
    Created on : 27/04/2018, 7:06:03 PM
    Author     : J-Mo
--%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.jsp"><i class="fas fa-bookmark"></i> Textbooks with Friends</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">All Listings</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="index.jsp?filter=unreserved">Unreserved Listings</a>
        </li>
        <%
            if (currentUser != null) {
                // Display additional nav links
        %>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp?filter=myListings">My Listings</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="form.jsp?form=add_book">Add Book</a>
            </li>
        <% } %>
    </ul>
    <ul class="navbar-nav ml-auto">
        <%
            if (currentUser != null) {
                // Display their username and a logout button
        %>
            <li class="nav-item">
                <a class="nav-link" href="#"><%= currentUser.getUsername() %></a>
            </li>
            <li class="nav-item active">
                <form action="<%= request.getContextPath() %>/action/session" method="delete">
                    <input type="hidden" name="action" value="delete"/>
                    <button type="submit" name="submit" class="btn btn-danger">Logout</button>
                </form>
            </li>
        <%  } else { %>
            <!--Display login and register buttons-->
            <a class="btn btn-dark" href="form.jsp?form=login">Login</a>
            <a class="btn btn-dark" href="form.jsp?form=register">Register</a>
        <%  } %>
    </ul>
</nav>
<br>