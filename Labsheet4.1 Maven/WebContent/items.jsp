<%@page import="com.PAF.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
//Insert item----------------------------------
if (request.getParameter("itemcode") != null)
{
	Item itemObj = new Item();
		String stsMsg = itemObj.insertItem(request.getParameter("itemCode"),
				request.getParameter("itemName"),
				request.getParameter("itemPrice"),
				request.getParameter("itemDesc"));
		
	session.setAttribute("statusMsg", stsMsg);
	//itemObj.connect(); //For testing the connect method
	//session.setAttribute("itemCome", request.getParameter("itemCome"));
	//session.setAttribute("itemName", request.getParameter("itemName"));
	//session.setAttribute("itemPrice", request.getParameter("itemPrice"));
	//session.setAttribute("itemDesc", request.getParameter("itemDesc"));
	}
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items Management</title>
</head>
<body>
	<h1>Items Management</h1>
	<form method="post" action="items.jsp">
		Item code: <input name="itemCode" type="text"><br>
		Item name: <input name="itemName" type="text"><br>
		Item price: <input name="itemPrice" type="text"><br>
		Item Description: <input name="itemDesc" type="text"><br>
		<input name="btnSubmit" type="submit" value="Save">
	</form>
	<%
		out.print(session.getAttribute("statusMsg"));
	%>
	<br>
	
	<%
	
	Item itemObj = new Item();
	out.print(itemObj.readItems());
	
	 //<table border="1">
	//	<tr>
	//		<th>Item Code</th><th>Item Name </th><th>Item Price</th><th>Item Description</th><th>Update</th><th>Remove</th>
	//	</tr>
	//	<tr>
	//	<td> <% out.println(session.getAttribute("itemCome")); </td>
	//		<td><%out.println(session.getAttribute("itemName")); </td>
	//		<td><%out.println(session.getAttribute("itemPrice")); </td>
	//		<td><%out.println(session.getAttribute("itemDesc")); </td>
	//		<td><input name="btnUpdate" type="button" value="Update"></td>
	//		<td><input name="btnRemove" type="button" value="Remove"></td>
	//	</tr>
	//</table>
	%>
</body>
</html>