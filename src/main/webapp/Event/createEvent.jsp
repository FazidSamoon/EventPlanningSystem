<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create an event</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- <script src="../path/to/flowbite/dist/datepicker.js"></script> -->
    <script src="https://unpkg.com/flowbite@1.4.5/dist/datepicker.js"></script>
</head>
<body>
    <div class="bg-red">
        <%--    header--%>
        <%@ include file="../components/header.jsp" %>
    </div>
    <br>
    <br>
    <br>

    <!-- component -->
<!-- Code block starts -->
<dh-component>
    <div class="container mx-auto p-4 rounded-xl width-80" >
                <form id="EventDetails">
                    <div class="bg-white dark:bg-gray-800">
                        <div class="container mx-auto bg-white dark:bg-gray-800 rounded">
                            <div class="xl:w-full border-b border-gray-300 dark:border-gray-600 py-5 bg-white dark:bg-gray-800">
                                <div class="flex w-11/12 mx-auto xl:w-full xl:mx-0 items-center">
                                    <p class="text-lg text-gray-800 dark:text-gray-100 font-bold">Create new event</p>                             
                                </div>
                            </div>
                            <div class="mx-auto">
                                <div class="xl:w-9/12 w-11/12 mx-auto xl:mx-0">
                                    
                                    <div class="mt-16 flex flex-col xl:w-2/6 lg:w-1/2 md:w-1/2 w-full">
                                        <label for="eventName" class="pb-2 text-sm font-bold text-gray-800 dark:text-gray-100">Event name</label>
                                        <input tabindex="0" type="text" id="eventName" name="eventName" required class="border border-gray-300 dark:border-gray-700 pl-3 py-3 shadow-sm rounded text-sm focus:outline-none focus:border-indigo-700 bg-transparent placeholder-gray-500 text-gray-600 dark:text-gray-400" placeholder="Enter your event name" />
                                    </div>
                                    <div class="mt-8 flex flex-col xl:w-3/5 lg:w-1/2 md:w-1/2 w-full">
                                        <label for="Description" class="pb-2 text-sm font-bold text-gray-800 dark:text-gray-100">Description</label>
                                        <textarea id="Description" name="Description" required class="bg-transparent border border-gray-300 dark:border-gray-700 pl-3 py-3 shadow-sm rounded text-sm focus:outline-none focus:border-indigo-700 resize-none placeholder-gray-500 text-gray-600 dark:text-gray-400" placeholder="Let Us know more about the event" rows="5"></textarea>
                                        <p class="w-full text-right text-xs pt-1 text-gray-600 dark:text-gray-400">Character Limit: 200</p>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                        <div class="container mx-auto bg-white dark:bg-gray-800 mt-10 rounded px-4"> -->
                           
                            <div class="mx-auto pt-4">
                                <div class="container mx-auto">
                                    <form class="my-6 w-11/12 mx-auto xl:w-full xl:mx-0">
                                        <div class="xl:w-1/4 lg:w-1/2 md:w-1/2 flex flex-col mb-6">
                                                <!-- date picker -->
                                                <label for="eventDate" class="pb-2 text-sm font-bold text-gray-800 dark:text-gray-100">Select Date</label>
                                            <div class="relative">
                                                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                                                <svg class="w-5 h-5 text-gray-500 dark:text-gray-400" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path></svg>
                                                </div>
                                                <input datepicker type="text" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:inherit focus:border-blue-500 block w-full pl-10 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Select date">
                                            </div>
                                        </div>
                        

                                        <div class="xl:w-1/4 lg:w-1/2 md:w-1/2 flex flex-col mb-6">
                                            <label for="members" class="pb-2 text-sm font-bold text-gray-800 dark:text-gray-100">Expected numer of members</label>
                                            <input tabindex="0" type="text" id="members" name="members" required class="border border-gray-500 dark:border-gray-700 pl-3 py-3 shadow-sm bg-transparent rounded text-sm focus:outline-none focus:border-gray-600 placeholder-gray-500 text-gray-600 dark:text-gray-400" placeholder="" />
                                        </div>
                                        <div class="relative">
                                            <div class="mb-3 xl:w-96">
                                                <label for="location" class="pb-2 text-sm font-bold text-gray-800 dark:text-gray-100">Select location</label>
                                                <select class="form-select appearance-none
                                                  block
                                                  w-full
                                                  px-3
                                                  py-1.5
                                                  text-base
                                                  font-normal
                                                  text-gray-700
                                                  bg-inherit black bg-clip-padding bg-no-repeat
                                                  border border-solid border-gray-300
                                                  rounded
                                                  transition
                                                  ease-in-out
                                                  m-0
                                                  focus:text-sm font-bold text-gray-800 dark:text-gray-100 focus:bg-slate-800 focus:border-blue-600 focus:outline-none" aria-label="Default select example">
                                                    <option selected>colombo</option>
                                                    <option value="1">Gampaha</option>
                                                    <option value="2">Kandy</option>
                                                    <option value="3">Malabe</option>
                                                </select>
                                              </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="container mx-auto mt-10 rounded bg-gray-100 dark:bg-gray-700 w-11/12 xl:w-full">
                                                                  
                           
                        <div class="container mx-auto w-11/12 xl:w-full">
                            <div class="w-full py-4 sm:px-0 bg-white dark:bg-gray-800 flex justify-end">
                                <button role="button" aria-label="cancel form" class="bg-gray-200 focus:outline-none transition duration-150 ease-in-out hover:bg-gray-300 dark:bg-gray-700 rounded text-white dark:text-indigo-600 px-6 py-2 text-xs mr-4 focus:ring-2 focus:ring-offset-2 focus:ring-gray-700">Cancel</button>
                                <button role="button" aria-label="Save form" class="focus:ring-2 focus:ring-offset-2 focus:ring-indigo-700 bg-indigo-700 focus:outline-none transition duration-150 ease-in-out hover:bg-indigo-600 rounded text-white px-8 py-2 text-sm" type="submit">Save</button>
                            </div>
                        </div>
                    </div>
                </form>
                <style>
                    .checkbox:checked {
                        /* Apply class right-0*/
                        right: 0;
                    }
                    .checkbox:checked + .toggle-label {
                        /* Apply class bg-indigo-700 */
                        background-color: #4c51bf;
                    }
                </style>
                <script>
                    let form = document.getElementById("login");
                    form.addEventListener(
                        "submit",
                        function (event) {
                            event.preventDefault();
                            let elements = form.elements;
                            let payload = {};
                            for (let i = 0; i < elements.length; i++) {
                                let item = elements.item(i);
                                switch (item.type) {
                                    case "checkbox":
                                        payload[item.name] = item.checked;
                                        break;
                                    case "submit":
                                        break;
                                    default:
                                        payload[item.name] = item.value;
                                        break;
                                }
                            }
                            // Place your API call here to submit your payload.
                            console.log("payload", payload);
                        },
                        true
                    );
                </script>
                
            </dh-component>
        </div>
            <!-- Code block ends -->
    <%@ include file="../components/footer.jsp" %>
</body>
</html>