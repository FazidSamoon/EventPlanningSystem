<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body>



<!-- hero section -->
<style>
    [x-cloak] { display: none; }
</style>

<div class="relative h-screen lg:h-screen w-full bg-cover bg-no-repeat" style="background-image: url(https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80);">

<div class="absolute inset-0 bg-gray-900 opacity-75"></div>
<div class="bg-red">
    <%--    header--%>
    <%@ include file="./components/header.jsp" %>
</div>

    <div class="h-full container mx-auto flex items-center justify-center ">

        <div class="flex flex-col items-center z-10">
            <h1 class="mx-6 mt-1 text-xl font-bold text-center text-white text-5xl md:text-6xl sm:text-center sm:mx-0">Here a really cool title!</h1>
            <p class="text-white text-xl font-medium w-2/3 text-center my-6">Some fancy text to invite to an event, the place of the event and the date of the event.</p>
            <div class="flex flex-col md:flex-row justify-center mt-10">
                <a href="#" class="py-2 px-8 rounded-full border-2 border-pink-500 text-white hover:bg-pink-500 text-center m-2">Tickets</a>
                <a href="#" class="py-2 px-8 rounded-full border-2 border-pink-500 text-white bg-pink-500 hover:bg-transparent text-center m-2">Coming soon</a>
            </div>
        </div>

    </div>
<div>


    <!-- hero section 2 -->
<style>
    [x-cloak] { display: none; }
</style>

<div class="relative h-screen lg:h-screen w-full bg-cover bg-no-repeat" style="background-image: url(https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80);">

<div class="absolute inset-0 bg-gray-900 opacity-75"></div>


    <div class="h-full container mx-auto flex items-center justify-center">

        <div class="flex flex-col items-center z-10">
            <h1 class="mx-6 mt-1 text-xl font-bold text-center text-white text-5xl md:text-6xl sm:text-center sm:mx-0">Here a really cool title!</h1>
            <p class="text-white text-xl font-medium w-2/3 text-center my-6">Some fancy text to invite to an event, the place of the event and the date of the event.</p>
            <div class="flex flex-col md:flex-row justify-center mt-10">
                <a href="#" class="py-2 px-8 rounded-full border-2 border-pink-500 text-white hover:bg-pink-500 text-center m-2">Tickets</a>
                <a href="#" class="py-2 px-8 rounded-full border-2 border-pink-500 text-white bg-pink-500 hover:bg-transparent text-center m-2">Coming soon</a>
            </div>
        </div>

    </div>
<div>

    <h1>hello ${userSession}</h1>




<%@ include file="./components/footer.jsp" %>
    </body>
</html>