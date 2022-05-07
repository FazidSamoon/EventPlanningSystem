<%@ page import="sun.net.ftp.FtpClient" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body class="bg-[#4a76a8]">


        <div class="bg-red">
            <%--    header--%>
            <%@ include file="./components/header.jsp" %>
        </div>



        <div class="container mt-8 mx-auto px-6">
            <div class="h-64 rounded-md overflow-hidden bg-cover bg-center" style="
            background-image: url('https://myschedulestudio.net/wp-content/uploads/2021/12/1548357920228.jpeg');
          ">
              <div class="bg-gray-900 bg-opacity-50 flex items-center h-full">
                <div class="px-10 max-w-xl">
                  <h2 class="text-4xl text-white font-semibold">Create Event</h2>
                  <p class="mt-2 text-gray-400">
                    Lorem ipsum dolor sit, amet nemo eum tempore sapiente vero.
                  </p>
                  <a href="/schedule">
                    <button
                      class="flex items-center mt-4 px-4 py-3 bg-blue-600 text-white text-sm uppercase font-medium rounded hover:bg-blue-500 focus:outline-none focus:bg-blue-500">
                      <span>Create event</span>
                      <svg class="h-5 w-5 mx-2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                        stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </button>
                  </a>
                </div>
              </div>
            </div>

        <div class="md:flex mt-8 md:-mx-4">
            <div class="w-full h-64 md:mx-4 rounded-md overflow-hidden bg-cover bg-center md:w-1/2" style="
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT77pwDtAP_IQHZvHb4qihPVBRI5CbHyMTE3_7w2AJtsUvIWVJcQ7VtACYkJzcVngIg9A&usqp=CAU');
          ">
              <div class="bg-gray-900 bg-opacity-50 flex items-center h-full">
                <div class="px-10 max-w-xl">
                  <h2 class="text-2xl text-white font-semibold">Services</h2>
                  <p class="mt-2 text-gray-400">
                    Lorem ipsum dolor sit, amet nemo eum tempore sapiente vero.
                  </p>
                  <a href="/support">
                    <button
                      class="flex items-center mt-4 px-4 py-3 bg-blue-600 text-white text-sm uppercase font-medium rounded hover:bg-blue-500 focus:outline-none focus:bg-blue-500">
                      <span>Search Services</span>
                      <svg class="h-5 w-5 mx-2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                        stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </button>
                  </a>
                </div>
              </div>
            </div>
            <div class="w-full h-64 mt-8 md:mx-4 rounded-md overflow-hidden bg-cover bg-center md:mt-0 md:w-1/2"
              style="
            background-image: url('https://e7.pngegg.com/pngimages/961/842/png-clipart-petit-fute-munich-ravensburger-puzzle-collage-oktoberfest-celebrations-plus-germany.png');
          ">
              <div class="bg-gray-900 bg-opacity-50 flex items-center h-full">
                <div class="px-10 max-w-xl">
                  <h2 class="text-2xl text-white font-semibold">Read Blogs</h2>
                  <p class="mt-2 text-gray-400">
                    Lorem ipsum dolor sit, amet nemo eum tempore sapiente vero.
                  </p>
                  <a href="/signup">
                    <!-- <button
                      class="flex items-center mt-4 text-white text-sm uppercase font-medium rounded hover:underline focus:outline-none">
                      <span>Read Now</span>
                      <svg class="h-5 w-5 mx-2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                        stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </button> -->
                    <button
                      class="flex items-center mt-4 px-4 py-3 bg-blue-600 text-white text-sm uppercase font-medium rounded hover:bg-blue-500 focus:outline-none focus:bg-blue-500">
                      <span>Read Blogs</span>
                      <svg class="h-5 w-5 mx-2" fill="none" stroke-linecap="round" stroke-linejoin="round"
                        stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
                        <path d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                      </svg>
                    </button>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>

        <%@ include file="./components/footer.jsp" %>
    </body>
</html>