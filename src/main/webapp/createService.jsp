<!DOCTYPE html>
<html>
    <head>
        <title>Create Service</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-[#4a76a8]">

        <%@ include file="components/header.jsp" %>



        <section class="flex justify-center items-center h-83vh mt-10 mb-10">
            
            <div class="max-w-2xl w-full bg-blue-900 rounded p-6 space-y-4">
                <div class="mb-4">
                    
                    <h2 class="text-xxl font-bold text-white">Create Service</h2>
                </div>
                <form action="addService" method="get">
                    <div class="flex flex-row">
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 mr-1"
                            type="text" placeholder="ServiceName" id="serviceName" name="serviceName" required>
                        
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 ml-1"
                            type="text" placeholder="Service Created By" id="serviceCreatedBy" name="serviceCreatedBy" required>
                    </div>
                    <div class="flex flex-row">
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 mr-1"
                            type="text" placeholder="Service Description" id="serviceDescription" name="serviceDescription" required>
                            <select
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 ml-1"
                            id="serviceCategory" name="serviceCategory" required>
                            <option value="" selected disabled hidden>Select Service Type</option>
                            <option value="Social event">Social event</option>
                            <option value="Wedding">Wedding</option>
                            <option value="Birthday">Birthday</option>
                            <option value="Funeral">Funeral</option>
                        </select>
                    </div>
                    <div class="flex flex-row">
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 mr-1"
                            type="text" placeholder="Picture Url" id="pictureUrl" name="pictureUrl" required>
                        <input
                            class="w-1/2 p-4 text-sm bg-gray-50 focus:outline-none border border-gray-200 rounded text-gray-600 mb-2 ml-1"
                            type="text" placeholder="Price" id="servicePrice" name="servicePrice" required>
                    </div>
                    <div>
                        <button
                            class="w-full py-4 bg-blue-600 hover:bg-blue-700 rounded text-sm font-bold text-gray-50 transition duration-200"
                            type="submit">Create Service</button>
                    </div>
                </form>
                
            </div>
        </section>


        <%@ include file="components/footer.jsp" %>
        
    </body>
</html>