<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Title</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-900 text-gray-200">
<jsp:include page="../../layouts/sideBar.jsp"/>
<div class="p-4 sm:ml-64">
  <div class="p-4 border-2 border-gray-700 border-dashed rounded-lg dark:border-gray-600">

    <section class="bg-gray-900 dark:bg-gray-800">
      <div>
        <div class="w-full max-w-3xl p-8 mx-auto lg:px-12">
          <div class="w-full">
            <h1 class="text-2xl font-semibold tracking-wider text-white capitalize">
              Update User.
            </h1>

            <form class="grid grid-cols-1 gap-6 mt-8 md:grid-cols-2" action="users?action=edit&id=${user.id}" method="POST">
              <div>
                <label class="block mb-2 text-sm text-gray-300">First Name</label>
                <input type="text" name="firstName" value="${user.firstName}"  class="block w-full px-5 py-3 mt-2 text-gray-300 placeholder-gray-500 bg-gray-800 border border-gray-600 rounded-lg focus:border-blue-400 focus:ring-blue-400 focus:outline-none focus:ring focus:ring-opacity-40" />
              </div>

              <div>
                <label class="block mb-2 text-sm text-gray-300">Last Name</label>
                <input type="text" value="${user.lastName}" name="lastName"  class="block w-full px-5 py-3 mt-2 text-gray-300 placeholder-gray-500 bg-gray-800 border border-gray-600 rounded-lg focus:border-blue-400 focus:ring-blue-400 focus:outline-none focus:ring focus:ring-opacity-40" />
              </div>

              <div>
                <label class="block mb-2 text-sm text-gray-300">Email Address</label>
                <input type="email" name="email" value="${user.email}" class="block w-full px-5 py-3 mt-2 text-gray-300 placeholder-gray-500 bg-gray-800 border border-gray-600 rounded-lg focus:border-blue-400 focus:ring-blue-400 focus:outline-none focus:ring focus:ring-opacity-40" />
              </div>

              <div>
                <label class="block mb-2 text-sm text-gray-300">Role</label>
                <select name="role" class="block w-full px-5 py-3 mt-2 text-gray-300 bg-gray-800 border border-gray-600 rounded-lg focus:border-blue-400 focus:ring-blue-400 focus:outline-none focus:ring focus:ring-opacity-40">
                  <option selected disabled>Choose a role</option>
                  <option value="MANAGER" ${user.role == 'MANAGER' ? 'selected' : ''}>Manager</option>
                  <option value="USER" ${user.role == 'USER' ? 'selected' : ''}>User</option>
                </select>
              </div>

              <button type="submit"
                      class="mx-auto w-full px-6 py-3 text-sm tracking-wide text-white capitalize transition-colors duration-300 transform bg-blue-500 rounded-lg hover:bg-blue-400 focus:outline-none focus:ring focus:ring-blue-300 focus:ring-opacity-50">
                <span>Update</span>
              </button>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</body>
</html>
