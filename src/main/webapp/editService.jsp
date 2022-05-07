<%@ page import="com.oeps.onlineeventplanningsystem.model.Services" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Service</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-[#4a76a8]">

        <%@ include file="./components/header.jsp" %>



        <section class="flex justify-center items-center h-83vh mt-10 mb-10">
            
            <div class="max-w-2xl bg-blue-900 w-full rounded p-6 space-y-4">
                <div class="mb-4">
                    
                    <h2 class="text-xxl font-bold text-white">Create Service</h2>
                </div>


                <%
                    Services service = (Services) request.getAttribute("currentService");
                %>
                <form action="updateService/<%=service.getServiceId()%>" method="get">

                    <div class="flex flex-row">
                        <label for="serviceName">Service Name</label>
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 mr-1"
                            type="text" value="<%=service.getServiceName()%>" id="serviceName" name="serviceName" required>
                        
                        <label for="serviceCreatedBy">Service Created By</label>
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 ml-1"
                            type="text" value="<%=service.getServiceCreatedBy()%>" id="serviceCreatedBy" name="serviceCreatedBy" required>
                    </div>
                    <div class="flex flex-row">
                        <label for="serviceDescription">Service Description</label>
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 mr-1"
                            type="text" value="<%=service.getServiceDescription()%>" id="serviceDescription" name="serviceDescription" required>
                        
                        <label for="serviceCategory">Service Category</label>
                        <select
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 ml-1"
                            id="serviceCategory" name="serviceCategory" required>
                            <option value="" selected disabled hidden><%=service.getServiceCategory()%></option>
                            <option value="Social event">Social event</option>
                            <option value="Wedding">Wedding</option>
                            <option value="Birthday">Birthday</option>
                            <option value="Funeral">Funeral</option>
                        </select>
                    </div>
                    <div class="flex flex-row">
                        <label for="pictureUrl">Picture Url</label>
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 mr-1"
                            type="text" value="<%=service.getServiceImage()%>" id="pictureUrl" name="pictureUrl" required>
                        
                        <label for="servicePrice">Service Price</label>
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 ml-1"
                            type="text" value="<%=service.getServicePrice()%>" id="servicePrice" name="servicePrice" required>
                    </div>
                    <div class="flex row items-center justify-center mt-4">
                        <button
                            class="w-48 mr-3 py-4 bg-blue-600 hover:bg-blue-700 rounded text-sm font-bold text-gray-50 transition duration-200"
                            type="submit">Edit Details</button>

                        </div>
                        


                </form>
                
            </div>
        </section>


        <%@ include file="./components/footer.jsp" %>
        
    </body>
</html>