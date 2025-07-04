<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Employee"%>
<%@page import="dao.EmployeeDao"%>
<%@page import="java.util.*"%>


<%@include file="header.jsp" %>


<%
List<Employee> list= EmployeeDao.getAllEmployee();
request.setAttribute("list", list);

%>

<div class="container">



    <h1 class="text-dark text-center"> Employee Details</h1> 

    <table class="table table-striped">

        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Designation</th>
                <th>Salary</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
        <c:forEach items="${list}" var="e">
            <tr>
                <td>${e.getId()}</td>
                <td>${e.getName()}</td>
                <td>${e.getEmail()}</td>
                <td>${e.getDesignation()}</td>
                <td>${e.getSalary()}</td>
                <td>
                    <a href="editemployeeform.jsp?id=${e.id}" class="btn btn-primary">Edit</a>

                    <a href="deleteemployee.jsp?id=${e.id}" class="btn btn-danger"
                       onclick="return confirm('Are you sure');">Delete</a>
                </td>

            </tr>

        </c:forEach>

        </tbody>


    </table>

</div>





<%@include file="footer.jsp" %>