<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body>

   <!-- component -->
<style>
    .scroll-hidden::-webkit-scrollbar {
      height: 0px;
      background: transparent; /* make scrollbar transparent */
    }
  </style>
  
  <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
  
  <header x-data="{ isOpen: false }" class="relative mb-0 w-full bg-red shadow bg-blue-900">
    <nav class="container mx-auto px-6 py-3 ">
      <div class="flex flex-col md:flex-row md:justify-between md:items-center">
        <div class="flex justify-between items-center">
          <div class="flex items-center">
            <a class="text-white text-xl font-bold md:text-2xl hover:text-gray-400" href="#">Brand</a>
          </div>
  
          <!-- Mobile menu button -->
          <div class="flex md:hidden z-10">
            <button @click="isOpen = !isOpen" type="button" class="text-gray-500 hover:text-gray-600 focus:outline-none focus:text-gray-600" aria-label="toggle menu">
              <svg viewBox="0 0 24 24" class="h-6 w-6 fill-current">
                <path fill-rule="evenodd" d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"></path>
              </svg>
            </button>
          </div>
        </div>
  
        <!-- Mobile Menu open: "block", Menu closed: "hidden" -->
        <div class="md:flex items-center" :class="isOpen ? 'block' : 'hidden'">
          <div class="flex flex-col mt-2 md:flex-row md:mt-0 md:mx-1">
            <a class="my-1 text-sm text-white leading-5 hover:text-gray-400 hover:underline md:mx-4 md:my-0" href="/">Home</a>
            <a class="my-1 text-sm text-white leading-5 hover:text-gray-400 hover:underline md:mx-4 md:my-0" href="/blogs">Blog</a>

            <%
              if (session.getAttribute("userSession") != null) {
            %>
            <a class="my-1 text-sm text-white leading-5 hover:text-gray-400 hover:underline md:mx-4 md:my-0" href="/viewEvent">Events</a>

            <%
              }
            %>
            <a class="my-1 text-sm text-white leading-5 hover:text-gray-400 hover:underline md:mx-4 md:my-0" href="/services">Services</a>
          </div>
  
          


          


          <div class="flex items-center py-2 -mx-1 md:mx-0">

            <%
              if (session.getAttribute("userSession") == null) {
            %>


            <a class="block w-1/2 px-3 py-2 mx-1 rounded text-center text-sm bg-gray-500 font-medium text-white leading-5 hover:bg-blue-600 md:mx-2 md:w-auto" href="/login">Login</a>
            <a class="block w-1/2 px-3 py-2 mx-1 rounded text-center text-sm bg-blue-500 font-medium text-white leading-5 hover:bg-blue-600 md:mx-0 md:w-auto" href="/signup">SignUp</a>
            <%
              } else {
            %>
            <a class="block w-1/2 px-3 py-2 mx-1 rounded text-center text-sm bg-blue-500 font-medium text-white leading-5 hover:bg-blue-600 md:mx-0 md:w-auto" href="/logout">Logout</a>

            
            <a href="/users/${userSession.getUserID()}">
              <img class="h-[35px] w-[35px] cursor-pointer ml-4 " src="./images/userAvatar.png" alt="" >
            </a>

            

            <%
              }
            %>
          </div>

  
          <!-- Search input on mobile screen -->
          <div class="mt-3 md:hidden">
            <input type="text" class="w-full px-4 py-3 leading-tight text-sm text-gray-700 bg-gray-100 rounded-md placeholder-gray-500 focus:outline-none focus:bg-white focus:shadow-outline" placeholder="Search" aria-label="Search">
          </div>
        </div>
      </div>
  
      
    </nav>
  </header>

    </body>
</html>