<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Task Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet" />
</head>
<body class="bg-gradient-to-br from-gray-900 to-black text-gray-300">

<header class="bg-gray-800 shadow-lg py-4">
    <div class="container mx-auto flex justify-between items-center px-4">
        <div class="text-white text-2xl font-bold">DevSync</div>
        <p class="text-sm text-gray-400">Your Next-Level Task Management Solution</p>
        <div class="flex items-center space-x-4">
            <a href="users?action=userInterface&id=${task.assignee.id}" class="text-sm font-medium text-gray-300 hover:text-gray-400">View All tasks</a>
        </div>
    </div>
</header>

<div class="flow-root mx-10 my-8">
    <dl class="-my-3 divide-y divide-gray-700 text-sm">
        <div class="grid grid-cols-1 gap-1 py-3 sm:grid-cols-3 sm:gap-4">
            <dt class="font-medium text-gray-200">Title</dt>
            <dd class="text-gray-300 sm:col-span-2">${task.title}</dd>
        </div>

        <div class="grid grid-cols-1 gap-1 py-3 sm:grid-cols-3 sm:gap-4">
            <dt class="font-medium text-gray-200">Start Date</dt>
            <dd class="text-gray-300 sm:col-span-2">${task.creationDate}</dd>
        </div>

        <div class="grid grid-cols-1 gap-1 py-3 sm:grid-cols-3 sm:gap-4">
            <dt class="font-medium text-gray-200">Due Date</dt>
            <dd class="text-gray-300 sm:col-span-2">${task.dueDate}</dd>
        </div>

        <div class="grid grid-cols-1 gap-1 py-3 sm:grid-cols-3 sm:gap-4">
            <dt class="font-medium text-gray-200">Status</dt>
            <dd class="text-gray-300 sm:col-span-2">
                <form action="tasks?action=editStatus" method="POST">
                    <input type="hidden" name="task_id" value="${task.id}" />
                    <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown" class="inline-flex items-center px-3 py-1 rounded-full gap-x-2 sm:col-span-2 w-min
            <c:choose>
              <c:when test="${task.status == 'NOT_STARTED'}">
                 text-yellow-500
              </c:when>
              <c:when test="${task.status == 'IN_PROGRESS'}">
                text-blue-500
              </c:when>
              <c:when test="${task.status == 'COMPLETED'}">
                 text-green-500
              </c:when>
              <c:when test="${task.status == 'CANCELED'}">
                 text-red-500
              </c:when>
            </c:choose>" type="button">${task.status}
                        <svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4"/>
                        </svg>
                    </button>
                    <!-- Dropdown menu -->
                    <div id="dropdown" class="z-10 hidden bg-gray-800 divide-y divide-gray-700 rounded-lg shadow w-44">
                        <ul class="py-2 text-sm text-gray-300" aria-labelledby="dropdownDefaultButton">
                            <li>
                                <button class="block px-4 py-2 hover:bg-gray-700" type="submit" name="status" value="NOT_STARTED">NOT_STARTED</button>
                            </li>
                            <li>
                                <button class="block px-4 py-2 hover:bg-gray-700" type="submit" name="status" value="IN_PROGRESS">IN_PROGRESS</button>
                            </li>
                            <li>
                                <button class="block px-4 py-2 hover:bg-gray-700" type="submit" name="status" value="COMPLETED">COMPLETED</button>
                            </li>
                        </ul>
                    </div>
                </form>
            </dd>
        </div>

        <div class="grid grid-cols-1 gap-1 py-3 sm:grid-cols-3 sm:gap-4">
            <dt class="font-medium text-gray-200">Description</dt>
            <dd class="text-gray-300 sm:col-span-2">${task.description}</dd>
        </div>

        <div class="grid grid-cols-1 gap-1 py-3 sm:grid-cols-3 sm:gap-4">
            <dt class="font-medium text-gray-200">Tags</dt>
            <dd class="text-gray-300 sm:col-span-2">
                <c:forEach var="tag" items="${task.tags}">
                    <span class="whitespace-nowrap rounded-full bg-purple-700 px-2.5 py-0.5 text-sm text-purple-200">${tag.name}</span>
                </c:forEach>
            </dd>
        </div>

        <div class="grid grid-cols-1 gap-1 py-3 sm:grid-cols-3 sm:gap-4">
            <dt class="font-medium text-gray-200"></dt>
            <dd class="flex gap-4 text-gray-300 sm:col-span-2">
                <c:if test="${task.creator == task.assignee}">
                    <!-- Button for task creator -->
                    <form action="requests?action=removeTask&id=${task.id}" method="POST">
                        <input type="hidden" name="task_id" value="${task.id}" />
                        <button type="submit" class="focus:outline-none text-white bg-blue-700 hover:bg-blue-800 rounded-lg text-sm px-5 py-2.5">
                            Delete (Creator)
                        </button>
                    </form>
                </c:if>

                <c:if test="${task.creator != task.assignee}">
                    <!-- Button for non-creator users -->
                    <form action="requests?action=deleteRequest&id=${task.id}" method="POST">
                        <input type="hidden" name="task_id" value="${task.id}" />
                        <button type="submit" class="focus:outline-none text-white bg-red-700 hover:bg-red-800 rounded-lg text-sm px-5 py-2.5">
                            Delete
                        </button>
                    </form>
                </c:if>

                <c:if test="${task.creator != task.assignee}">
                    <form action="requests?action=swapTask&id=${task.id}" method="POST">
                        <input type="hidden" name="task_id" value="${task.id}" />
                        <button type="submit" class="focus:outline-none text-white bg-purple-700 hover:bg-purple-800 rounded-lg text-sm px-5 py-2.5">Swap Task</button>
                    </form>
                </c:if>
            </dd>
        </div>
    </dl>
</div>

<script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</body>
</html>
