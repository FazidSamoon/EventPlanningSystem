
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
<a href="/createEvent">
    <button
            class="flex items-center mt-4 px-4 py-3 bg-blue-600 text-white text-sm uppercase font-medium rounded hover:bg-blue-500 focus:outline-none focus:bg-blue-500">
        <span>Create event</span>
        <svg class="h-5 w-5 mx-2" fill="none" stroke-linecap="round" stroke-linejoin="round"
             stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
            <path d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
        </svg>
    </button>
</a>
<div class="container h-100">


<%--    <%--%>
<%--        if (session.getAttribute("userSession") != null) {--%>
<%--    %>--%>
<table class="min-w-full border-collapse block md:table">


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
            <a href="/DeleteEvent/<%= eventN.getEventId() %> ">
            <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 border border-red-500 rounded">Delete</button>
            </a>
        </td>
    </tr>
<% } %>
</table>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
</div>

    <%@ include file="../components/footer.jsp" %>
</body>
</html>