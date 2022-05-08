
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


<br><div class="container">
<!-- component -->
<%--<table class="min-w-full border-collapse block md:table">--%>
<%--    <thead class="block md:table-header-group">--%>
<%--    <tr class="border border-grey-500 md:border-none block md:table-row absolute -top-full md:top-auto -left-full md:left-auto  md:relative ">--%>
<%--        <th class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">Event Name</th>--%>
<%--        <th class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">Date</th>--%>
<%--        <th class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">Location</th>--%>
<%--        <th class="bg-gray-600 p-2 text-white font-bold md:border md:border-grey-500 text-left block md:table-cell">Actions</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody class="block md:table-row-group">--%>
<%--    <tr class="bg-gray-300 border border-grey-500 md:border-none block md:table-row">--%>
<%--        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><span class="inline-block w-1/3 md:hidden font-bold">Event Name</span>${Event.getEventname}</td>--%>
<%--        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><span class="inline-block w-1/3 md:hidden font-bold">Date</span>${Even}</td>--%>
<%--        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><span class="inline-block w-1/3 md:hidden font-bold">Location</span>${}</td>--%>

<%--        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell">--%>
<%--            <span class="inline-block w-1/3 md:hidden font-bold">Actions</span>--%>
<%--            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-2 border border-blue-500 rounded">Edit</button>--%>
<%--            <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 border border-red-500 rounded">Delete</button>--%>
<%--        </td>--%>
<%--    </tr>--%>

<%--    </tbody>--%>
<%--</table>--%>
<%--</div>--%>

<table class="min-w-full border-collapse block md:table">
<% List<Event> eventList = (List<Event>) request.getAttribute("eventList");
    for(Event event : eventList){ %>
    <tr>
        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><span class="inline-block w-1/3 md:hidden font-bold">Event Name</span>${event.getEventname}</td>
        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><span class="inline-block w-1/3 md:hidden font-bold">Date</span>${event.getDate()}</td>
        <td class="p-2 md:border md:border-grey-500 text-left block md:table-cell"><span class="inline-block w-1/3 md:hidden font-bold">Location</span>${event.getLocation()}</td>

        <td>
            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-1 px-2 border border-blue-500 rounded">Edit</button>
            <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-1 px-2 border border-red-500 rounded">Delete</button>
        </td>
    </tr>
<% } %>
</table>

    <%@ include file="../components/footer.jsp" %>
</body>