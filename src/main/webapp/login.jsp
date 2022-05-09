<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>

<div class="absolute w-screen h-screen flex">
    <div class="hidden lg:block w-5/12 h-full">
      <img
        src="https://savor.lk/wp-content/uploads/2021/03/4Y7B0245-2.jpg"
        class="w-full h-full object-cover"
      />
    </div>
    <div class="w-full  lg:w-7/12 overflow-scroll py-24 relative">
      <a
        href="#"
        class="absolute text-3xl text-blue-400 cursor-pointer top-0 right-0 mt-6 mr-8"
        ><svg
          aria-hidden="true"
          focusable="false"
          data-prefix="fas"
          data-icon="times"
          class="svg-inline--fa fa-times fa-w-11"
          role="img"
          xmlns="http://www.w3.org/2000/svg"
          viewBox="0 0 352 512"
        >
          <path
            fill="currentColor"
            d="M242.72 256l100.07-100.07c12.28-12.28 12.28-32.19 0-44.48l-22.24-22.24c-12.28-12.28-32.19-12.28-44.48 0L176 189.28 75.93 89.21c-12.28-12.28-32.19-12.28-44.48 0L9.21 111.45c-12.28 12.28-12.28 32.19 0 44.48L109.28 256 9.21 356.07c-12.28 12.28-12.28 32.19 0 44.48l22.24 22.24c12.28 12.28 32.2 12.28 44.48 0L176 322.72l100.07 100.07c12.28 12.28 32.2 12.28 44.48 0l22.24-22.24c12.28-12.28 12.28-32.19 0-44.48L242.72 256z"
          ></path></svg
      ></a>
      <form class="w-5/6 sm:w-1/2 mx-auto text-center" action="/login" method="post">

        <div class="mt-10">
          <h2 class="text-3xl font-bold text-gray-800">Welcome back</h2>
          <p class="mt-3 text-gray-800">
            New to Gust? <a href="#" class="text-blue-400">Sign up</a>
          </p>
        </div>
        <div class="mt-12">
          <div class="my-6">
            <div class="">
              <div class="">
                <input
                  type="text"
                  name="userName"
                  class="w-full border border-gray-300 rounded-sm px-4 py-3 outline-none transition-colors duration-150 ease-in-out focus:border-blue-400"
                  placeholder="Your userName"
                  value=""
                  required
                  minlength="3"
                />
              </div>
            </div>
          </div>
          <div class="my-6">
            <div class="">
              <div class="">
                <input
                  type="password"
                  name="password"
                  class="w-full border border-gray-300 rounded-sm px-4 py-3 outline-none transition-colors duration-150 ease-in-out focus:border-blue-400"
                  placeholder="Your password"
                  value=""
                  required
                  minlength="6"
                  maxlength="20"

                />
              </div>
            </div>
          </div>
          <div class="my-6">
            <button
              class="inline-block rounded-sm font-medium border border-solid cursor-pointer text-center text-base py-3 px-6 text-white bg-blue-400 border-blue-400 hover:bg-blue-600 hover:border-blue-600 w-full"
              type="submit"
            >
              Log In
            </button>
          </div>
          <div class="text-right">
            <a href="#" class="text-blue-400">Forgot your password?</a>
          </div>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
