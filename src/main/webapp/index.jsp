<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome to DevSync</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gradient-to-br from-gray-900 to-black">
<div class="text-gray-300 container mx-auto p-8 overflow-hidden md:rounded-lg md:p-10 lg:p-12">
    <div class="flex justify-between">
        <h1 class="font-serif text-3xl font-medium">Task Management</h1>
        <a href="users?action=login"
           class="self-start px-3 py-2 leading-none text-gray-200 border border-gray-800 rounded-lg focus:outline-none focus:shadow-outline bg-gradient-to-b hover:from-indigo-500 from-gray-900 to-black">
            Login
        </a>
    </div>

    <div class="h-32 md:h-40"></div>

    <p class="font-sans text-4xl font-bold text-gray-200 max-w-5xl lg:text-7xl lg:pr-24 md:text-6xl">
        Organize your tasks efficiently
    </p>
    <div class="h-10"></div>
    <p class="max-w-2xl font-serif text-xl text-gray-400 md:text-2xl">
        Manage your time and focus on what matters most with our task management system.
    </p>

    <div class="h-32 md:h-40"></div>

    <div class="grid gap-8 md:grid-cols-2">
        <div class="flex flex-col justify-center">
            <p
                    class="self-start inline font-sans text-xl font-medium text-transparent bg-clip-text bg-gradient-to-br from-green-400 to-green-600">
                Simple and intuitive
            </p>
            <h2 class="text-4xl font-bold">Built for productivity</h2>
            <div class="h-6"></div>
            <p class="font-serif text-xl text-gray-400 md:pr-10">
                Our platform is designed to help you stay organized with an easy-to-use interface.
            </p>
            <div class="h-8"></div>
            <div class="grid grid-cols-2 gap-4 pt-8 border-t border-gray-800">
                <div>
                    <p class="font-semibold text-gray-400">Designed for teams</p>
                    <div class="h-4"></div>
                    <p class="font-serif text-gray-400">
                        Collaborate easily with team members and track progress together.
                    </p>
                </div>
                <div>
                    <p class="font-semibold text-gray-400">Customizable workflows</p>
                    <div class="h-4"></div>
                    <p class="font-serif text-gray-400">
                        Adapt our task management tools to your team's unique needs.
                    </p>
                </div>
            </div>
        </div>
        <div>
            <div class="-mr-24 rounded-lg md:rounded-l-full bg-gradient-to-br from-gray-900 to-black h-96"></div>
        </div>
    </div>

    <div class="h-32 md:h-40"></div>

    <p class="font-serif text-4xl">
        <span class="text-gray-400">Achieve more together</span>

        <span class="text-gray-600">with seamless collaboration and organization.</span>
    </p>

    <div class="h-32 md:h-40"></div>

    <div class="grid gap-4 md:grid-cols-3">
        <div class="flex-col p-8 py-16 rounded-lg shadow-2xl md:p-12 bg-gradient-to-br from-gray-900 to-black">
            <p class="flex items-center justify-center text-4xl font-semibold text-green-400 bg-green-800 rounded-full shadow-lg w-14 h-14">
                1
            </p>
            <div class="h-6"></div>
            <p class="font-serif text-3xl">User-friendly interface</p>
        </div>
        <div class="flex-col p-8 py-16 rounded-lg shadow-2xl md:p-12 bg-gradient-to-b from-gray-900 to-black">
            <p class="flex items-center justify-center text-4xl font-semibold text-indigo-400 bg-indigo-800 rounded-full shadow-lg w-14 h-14">
                2
            </p>
            <div class="h-6"></div>
            <p class="font-serif text-3xl">
                Fast and reliable performance
            </p>
        </div>
        <div class="flex-col p-8 py-16 rounded-lg shadow-2xl md:p-12 bg-gradient-to-bl from-gray-900 to-black">
            <p class="flex items-center justify-center text-4xl font-semibold text-teal-400 bg-teal-800 rounded-full shadow-lg w-14 h-14">
                3
            </p>
            <div class="h-6"></div>
            <p class="font-serif text-3xl">Easy task tracking and collaboration</p>
        </div>
    </div>

    <div class="h-40"></div>

    <div class="grid gap-8 md:grid-cols-3">
        <div class="flex flex-col justify-center md:col-span-2">
            <p
                    class="self-start inline font-sans text-xl font-medium text-transparent bg-clip-text bg-gradient-to-br from-teal-400 to-teal-600">
                Tailored for your team
            </p>
            <h2 class="text-4xl font-bold">Get started today</h2>
            <div class="h-6"></div>
            <p class="font-serif text-xl text-gray-400 md:pr-10">
                Start organizing your tasks and projects with ease. Our system ensures smooth teamwork and progress tracking.
            </p>
            <div class="h-8"></div>
            <div class="grid gap-6 pt-8 border-t border-gray-800 lg:grid-cols-3">
                <div>
                    <p class="font-semibold text-gray-400">Real-time collaboration</p>
                    <div class="h-4"></div>
                    <p class="font-serif text-gray-400">
                        Collaborate with your team instantly, from anywhere.
                    </p>
                </div>
                <div>
                    <p class="font-semibold text-gray-400">Project management</p>
                    <div class="h-4"></div>
                    <p class="font-serif text-gray-400">
                        Stay on top of all your projects with easy-to-use tools.
                    </p>
                </div>
                <div>
                    <p class="font-semibold text-gray-400">Task automation</p>
                    <div class="h-4"></div>
                    <p class="font-serif text-gray-400">
                        Automate repetitive tasks and focus on what really matters.
                    </p>
                </div>
            </div>
        </div>
        <div>
            <div class="-mr-24 rounded-lg md:rounded-l-full bg-gradient-to-br from-gray-900 to-black h-96"></div>
        </div>
    </div>

    <div class="h-10 md:h-40"></div>

    <div class="grid gap-4 md:grid-cols-4">
        <ul class="space-y-1 text-gray-400">
            <li class="pb-4 font-serif text-gray-400">Connect with us</li>
            <li>
                <a href="#" class="hover:underline">Twitter</a>
            </li>
            <li>
                <a href="#" class="hover:underline">LinkedIn</a>
            </li>
            <li>
                <a href="#" class="hover:underline">Facebook</a>
            </li>
        </ul>
        <ul class="space-y-1 text-gray-400">
            <li class="pb-4 font-serif text-gray-400">Our offices</li>
            <li>
                <a href="#" class="hover:underline">New York</a>
            </li>
            <li>
                <a href="#" class="hover:underline">San Francisco</a>
            </li>
            <li>
                <a href="#" class="hover:underline">London</a>
            </li>
        </ul>
        <ul class="space-y-1 text-gray-400">
            <li class="pb-4 font-serif text-gray-400">Company</li>
            <li>
                <a href="#" class="hover:underline">About us</a>
            </li>
            <li>
                <a href="#" class="hover:underline">Careers</a>
            </li>
            <li>
                <a href="#" class="hover:underline">Contact</a>
            </li>
        </ul>
        <ul class="space-y-1 text-gray-400">
            <li class="pb-4 font-serif text-gray-400">Login</li>
            <li>
                <a href="users?action=login"
                   class="self-start px-3 py-2 leading-none text-gray-200 border border-gray-800 rounded-lg focus:outline-none focus:shadow-outline bg-gradient-to-b hover:from-indigo-500 from-gray-900 to-black">
                    Login
                </a>
            </li>
        </ul>
    </div>

    <div class="h-12"></div>
</div>
</body>

<script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
</html>
