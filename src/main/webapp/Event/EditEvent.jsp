<%@ page import="com.oeps.onlineeventplanningsystem.model.Event" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta id="" name="viewport" content= id="nameth=device id=""-nameth, initial-scale=1.0">
    <title>Create an event</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <style >
        body {
            background: url(https://images.unsplash.com/photo-1513151233558-d860c5398176?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb) no-repeat;
            /*padding-top:100px;*/
            background-size:cover;
        }
    </style>

</head>
<body>

<div class="bg-red">
    <%--    header--%>
    <%@ include file="../components/header.jsp" %>
</div>
<br>
    <% Event eventRec = (Event) request.getAttribute("eventE"); %>

<div class="container-fluid py-4 my-4  rounded bg-blue-900 text-white w-50">
    <div class="row justify-content-md-center">
        <div class="col-md-8 ">

            <form action="saveEvent" method="post" >
                <p class="h2 text-center" > Update event </p>

                <div class="form-group">
                    <label for="eventName">Event </label>
                    <%--    header value=" 5 <%= eventRec.getEventName() %>   --%>
                    <input type="Text" class="form-control" value="<%=eventRec.getEventName()%>"  name="eventName" id="eventName"  >
                </div>
                <div class="form-group">
                    <label for="eventDescription">Event Description</label>
                    <textarea class="form-control" id="eventDescription" value="<%=eventRec.getEventDescription()%>" name="eventDescription" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="eventDate">Date</label>
                    <input type="date" class="form-control" id="eventDate" value="<%=eventRec.getEventDate()%>" name="eventDate" placeholder="Enter Date">
                </div>
                <div class="form-group">
                    <label for="eventLocation">Location</label>
                    <input type="Text" class="form-control" id="eventLocation" value="<%=eventRec.getEventLocation()%>" name="eventLocation" placeholder="select location">
                </div>
                <button type="submit" class="btn btn-success text-white bg-green-600" >Submit</button>

            </form>
        </div>
    </div>
</div>
</div>


<!-- Code block ends -->
<%@ include file="../components/footer.jsp" %>
</body>
</html>