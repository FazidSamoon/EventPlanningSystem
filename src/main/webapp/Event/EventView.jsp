
<%@ page import="com.oeps.onlineeventplanningsystem.model.Event" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create an event</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- <script src="../path/to/flowbite/dist/datepicker.js"></script> -->
</head>
<body>
<%@ include file="../components/header.jsp" %>


<br>
<div class="container h-100">

<table class="min-w-full border-collapse block md:table">
<%-- //List<Event> eventList = (List<Event>) request.getAttribute("eventList");--%>
        <% for(Event eventN : (List<Event>)
        request.getAttribute("eventM")){ %>
    <tr>
        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"> <%= eventN.getEventName() %></td>
        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><%=eventN.getEventDate() %></td>
        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><%=eventN.getEventLocation() %></td>

        <td>
            <a href="/EditEvent/<%= eventN.getEventId() %> ">
            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-2 border border-blue-500 rounded">Edit</button>
            </a>
            <a href="">
            <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 border border-red-500 rounded">Delete</button>
            </a>
        </td>
    </tr>
<% } %>
</table>
</div>

    <%@ include file="../components/footer.jsp" %>
</body>