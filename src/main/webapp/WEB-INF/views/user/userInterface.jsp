<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>DevSync</title>
    <script src="${pageContext.request.contextPath}/assets/js/TaskValidation.js" type="text/javascript" defer></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.css" rel="stylesheet"/>
</head>
<body class="bg-gradient-to-br from-gray-900 to-black text-gray-300">

<header class="bg-gray-800 shadow-lg py-4">
    <div class="container mx-auto flex justify-between items-center px-4">
        <div class="text-white text-2xl font-bold">DevSync</div>
        <p class="text-sm text-gray-400">Your Next-Level Task Management Solution</p>
        <div class="flex items-center space-x-4">
            <a href="users?action=logout" class="text-sm font-medium text-gray-300 hover:text-gray-400">Logout</a>
            <button data-modal-target="authentication-modal" data-modal-toggle="authentication-modal"
                    class="bg-indigo-600 text-white px-5 py-2.5 rounded-lg hover:bg-indigo-700">
                Self-Assign
            </button>
            <div id="authentication-modal" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                <div class="relative p-4 w-full max-w-md max-h-full">
                    <!-- Modal content -->
                    <div class="relative bg-gray-800 w-full px-4 py-6 rounded-lg shadow-lg">
                        <!-- Modal header -->
                        <div class="flex items-center justify-between border-b border-gray-600 pb-2 mb-4">
                            <h3 class="text-xl font-semibold text-gray-300">
                                Take Task
                            </h3>
                            <button type="button" class="text-gray-400 bg-transparent hover:bg-gray-600 hover:text-white rounded-lg text-sm w-8 h-8 inline-flex justify-center items-center" data-modal-hide="authentication-modal">
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                                </svg>
                                <span class="sr-only">Close modal</span>
                            </button>
                        </div>
                        <!-- Modal body -->
                        <div class="p-4">
                            <form class="space-y-4" action="users?action=selfAssign" method="post">
                                <div>
                                    <label class="text-gray-300" for="title">Title</label>
                                    <input
                                            class="w-full rounded-lg border border-gray-600 bg-gray-700 text-gray-300 p-3 text-sm"
                                            placeholder="Title"
                                            type="text"
                                            name="title"
                                            id="title"
                                    />
                                </div>

                                <div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
                                    <div>
                                        <label class="text-gray-300" for="creationDate">Start Date</label>
                                        <input
                                                class="w-full rounded-lg border border-gray-600 bg-gray-700 text-gray-300 p-3 text-sm"
                                                placeholder="Start Date"
                                                type="date"
                                                name="creationDate"
                                                id="creationDate"
                                        />
                                    </div>

                                    <div>
                                        <label class="text-gray-300" for="end-date">Due Date</label>
                                        <input
                                                class="w-full rounded-lg border border-gray-600 bg-gray-700 text-gray-300 p-3 text-sm"
                                                placeholder="End Date"
                                                type="date"
                                                name="dueDate"
                                                id="end-date"
                                        />
                                    </div>
                                </div>
                                <div>
                                    <label class="text-gray-300" for="tag">Tags</label>
                                    <select id="tag" class="js-example-basic-multiple w-60 rounded-lg border border-gray-600 bg-gray-700 text-gray-300 p-3 text-sm" name="tags[]" multiple="multiple">
                                        <c:forEach var="tag" items="${tags}">
                                            <option value="${tag.id}">${tag.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div>
                                    <label class="text-gray-300" for="Description">Description</label>
                                    <textarea
                                            class="w-full rounded-lg border border-gray-600 bg-gray-700 text-gray-300 p-3 text-sm"
                                            placeholder="Description"
                                            rows="8"
                                            name="description"
                                            id="Description"
                                    ></textarea>
                                </div>
                                <div class="mt-4">
                                    <button
                                            type="submit"
                                            class="inline-block w-full rounded-lg bg-blue-500 px-5 py-3 font-medium text-white sm:w-auto hover:bg-blue-600"
                                    >
                                        Self-Assign
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</header>


<!-- Task Display Section -->
<div class="container mx-auto px-4 py-8">
    <div class="grid grid-cols-1 lg:grid-cols-4 gap-8">
        <!-- NOT_STARTED Section -->
        <div class="bg-gray-800 p-4 rounded-lg shadow-lg">
            <h2 class="text-center text-lg font-semibold text-gray-200 mb-4">NOT STARTED</h2>
            <div class="space-y-4">
                <c:forEach var="task" items="${tasks}">
                    <c:if test="${task.status == 'NOT_STARTED'}">
                        <a href="users?action=taskDetails&id=${task.id}" class="block bg-gray-700 p-4 rounded-lg hover:bg-gray-600">
                            <h3 class="text-md text-white font-semibold">${task.title}</h3>
                            <p class="text-sm text-green-400">Created: ${task.creationDate}</p>
                            <p class="text-sm text-red-400">Due: ${task.dueDate}</p>
                            <div class="mt-2 space-x-2">
                                <c:forEach var="tag" items="${task.tags}">
                                    <span class="text-sm bg-purple-700 text-purple-200 px-2 py-1 rounded-lg">${tag.name}</span>
                                </c:forEach>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>

        <!-- IN_PROGRESS Section -->
        <div class="bg-gray-800 p-4 rounded-lg shadow-lg">
            <h2 class="text-center text-lg font-semibold text-gray-200 mb-4">IN PROGRESS</h2>
            <div class="space-y-4">
                <c:forEach var="task" items="${tasks}">
                    <c:if test="${task.status == 'IN_PROGRESS'}">
                        <a href="users?action=taskDetails&id=${task.id}" class="block bg-gray-700 p-4 rounded-lg hover:bg-gray-600">
                            <h3 class="text-md text-white font-semibold">${task.title}</h3>
                            <p class="text-sm text-green-400">Created: ${task.creationDate}</p>
                            <p class="text-sm text-red-400">Due: ${task.dueDate}</p>
                            <div class="mt-2 space-x-2">
                                <c:forEach var="tag" items="${task.tags}">
                                    <span class="text-sm bg-purple-700 text-purple-200 px-2 py-1 rounded-lg">${tag.name}</span>
                                </c:forEach>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>

        <!-- COMPLETED Section -->
        <div class="bg-gray-800 p-4 rounded-lg shadow-lg">
            <h2 class="text-center text-lg font-semibold text-gray-200 mb-4">COMPLETED</h2>
            <div class="space-y-4">
                <c:forEach var="task" items="${tasks}">
                    <c:if test="${task.status == 'COMPLETED'}">
                        <a href="users?action=taskDetails&id=${task.id}" class="block bg-gray-700 p-4 rounded-lg hover:bg-gray-600">
                            <h3 class="text-md text-white font-semibold">${task.title}</h3>
                            <p class="text-sm text-green-400">Created: ${task.creationDate}</p>
                            <p class="text-sm text-red-400">Due: ${task.dueDate}</p>
                            <div class="mt-2 space-x-2">
                                <c:forEach var="tag" items="${task.tags}">
                                    <span class="text-sm bg-purple-700 text-purple-200 px-2 py-1 rounded-lg">${tag.name}</span>
                                </c:forEach>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>

        <!-- BLOCKED Section -->
        <div class="bg-gray-800 p-4 rounded-lg shadow-lg">
            <h2 class="text-center text-lg font-semibold text-gray-200 mb-4">BLOCKED</h2>
            <div class="space-y-4">
                <c:forEach var="task" items="${tasks}">
                    <c:if test="${task.status == 'CANCELED'}">
                        <a href="users?action=taskDetails&id=${task.id}" class="block bg-gray-700 p-4 rounded-lg hover:bg-gray-600">
                            <h3 class="text-md text-white font-semibold">${task.title}</h3>
                            <p class="text-sm text-green-400">Created: ${task.creationDate}</p>
                            <p class="text-sm text-red-400">Due: ${task.dueDate}</p>
                            <div class="mt-2 space-x-2">
                                <c:forEach var="tag" items="${task.tags}">
                                    <span class="text-sm bg-purple-700 text-purple-200 px-2 py-1 rounded-lg">${tag.name}</span>
                                </c:forEach>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<%
    String errorMessage = (String) request.getSession().getAttribute("errorMessage");
    request.getSession().removeAttribute("errorMessage");
%>


<%
    if (errorMessage != null && !errorMessage.isEmpty()) {
%>
<script>
    Swal.fire({
        icon: "error",
        title: "Oops...",
        text: "<%= errorMessage %>",
    });
</script>
<%
    }
%>

<script>
    $(document).ready(function () {
        $('#tag').select2({
            width: '100%',
            theme: 'dark',
            tags: true
        });
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</body>
</html>
