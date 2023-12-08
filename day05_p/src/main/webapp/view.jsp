<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="person.PersonDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>
	
	
	<%
		ArrayList<PersonDTO> personList = (ArrayList<PersonDTO>) application.getAttribute("personList");
	
		PersonDTO data = null;
		String name = request.getParameter("name");
		
		for(PersonDTO dto : personList){
			if(dto.getName().equals(name)){
				data = dto;
				break;
			}
			
		}
		request.setAttribute("dto", data);
		request.getRequestDispatcher("view-show.jsp").forward(request, response);
	
	%>
	
</body>
</html>