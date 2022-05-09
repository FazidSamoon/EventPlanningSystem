<%@ page import="com.oeps.onlineeventplanningsystem.model.Services" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://cdn.tailgrids.com/tailgrids-fallback.css" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-[#4a76a8]">

<%--    header--%>
<%@ include file="./components/header.jsp" %>



<!-- ====== Services Section Start -->
<section class="pt-20 lg:pt-[120px] pb-12 lg:pb-[90px] bg-[#4a76a8]">
    <div class="container">
        <div class="flex flex-wrap -mx-4">
            <div class="w-full px-4">
                <div class="text-center mx-auto mb-12 lg:mb-20 max-w-[510px]">
               <span class="font-semibold text-lg text-white mb-2 block">
               Our Services
               </span>
                    <h2
                            class="
                  font-bold
                  text-3xl
                  sm:text-4xl
                  md:text-[40px]
                  text-dark
                  mb-4
                  "
                    >
                        What We Offer
                    </h2>
                    <p class="text-base text-gray-100">
                        There are many variations of passages of Lorem Ipsum available
                        but the majority have suffered alteration in some form.
                    </p>
                </div>
            </div>
        </div>

            <div class="w-full my-12">
                <%
                    for (Services service : (List<Services>)
                            request.getAttribute("servicesList")) {
                %>
                <div class="max-w-5xl mx-auto px-6 sm:px-6 lg:px-8 mt-4">
                    <div class="bg-white w-full shadow rounded p-8">

                        <div class="grid grid-cols-1 gap-8 mt-6">
                            <div class="flex flex-col md:flex-row">
                                <div class="w-full md:w-6/12 rounded overflow-hidden">
                                    <img class="object w-full h-auto" src="<%=service.getServiceImage()%>" alt="">
                                </div>
                                <div class="w-full md:w-6/12 mt-4 md:mt-0 md:ml-4">
                                    <h2 class="text-lg font-semibold leading-tight text-gray-800"><%=service.getServiceName()%></h2>
                                    <h4 class=" font-semibold leading-tight text-gray-800"><%=service.getServiceCreatedBy()%></h4>
                                    <h5 class=" font-semibold leading-tight text-gray-800"><%=service.getServiceCategory()%></h5>
                                    <p class="leading-normal pt-2"><%=service.getServiceDescription()%></p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</section>

<%@ include file="./components/footer.jsp" %>

</body>

</html>