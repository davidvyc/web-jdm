<!DOCTYPE html>
<html data-theme="night">

<head>
    <title>Auta</title>
    <meta charset="UTF-8">
    @vite('resources/js/app.js')
    @vite('resources/css/app.css')
</head>

<body>
    <nav class="bg-yellow-500">
        <div class="container mx-auto px-4">
            <div class="flex justify-between items-center h-16">
                <div class="flex items-center">
                    <a href="/" class="text-white text-2xl font-bold">Auta</a>
                </div>
                <div class="hidden md:flex space-x-4 items-center">
                    <a href="/dashboard" class="text-white hover:text-gray-200 px-3 py-2 rounded-md text-sm font-medium">Hlavní panel</a>
                    <a href="/" class="text-white hover:text-gray-200 px-3 py-2 rounded-md text-sm font-medium">Značky</a>
                    <a href="/auto" class="text-white hover:text-gray-200 px-3 py-2 rounded-md text-sm font-medium">Auta</a>
                    <a href="/znacka/create" class="text-white hover:text-gray-200 px-3 py-2 rounded-md text-sm font-medium">Přidání značky</a>
                    <a href="/auto/create" class="text-white hover:text-gray-200 px-3 py-2 rounded-md text-sm font-medium">Přidání auta</a>
                            @guest
                            <a href="/login" class="text-white hover:text-gray-200 px-3 py-2 rounded-md text-sm font-medium">Přihlášení</a>
                            <a href="/register" class="text-white hover:text-gray-200 px-3 py-2 rounded-md text-sm font-medium">Registrace</a>
                            @endguest
                 
                </div>
                <div class="md:hidden flex items-center">
                    <button class="text-white focus:outline-none" aria-controls="mobile-menu" aria-expanded="false" onclick="toggleMobileMenu()">
                        <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        <div class="md:hidden" id="mobile-menu" class="hidden">
            <div class="px-2 pt-2 pb-3 space-y-1 sm:px-3">
                <a href="/dashboard" class="text-white block px-3 py-2 rounded-md text-base font-medium">Hlavní panel</a>
                <a href="/" class="text-white block px-3 py-2 rounded-md text-base font-medium">Značky</a>
                <a href="/auto" class="text-white block px-3 py-2 rounded-md text-base font-medium">Auta</a>
                <a href="/znacka/create" class="text-white block px-3 py-2 rounded-md text-base font-medium">Přidání značky</a>
                <a href="/auto/create" class="text-white block px-3 py-2 rounded-md text-base font-medium">Přidání auta</a>
                <div class="border-t border-gray-700"></div>
                @guest
                <a href="/login" class="text-white block px-3 py-2 rounded-md text-base font-medium">Přihlášení</a>
                <a href="/register" class="text-white block px-3 py-2 rounded-md text-base font-medium">Registrace</a>
                @endguest
            </div>
        </div>
    </nav>

    <div class="container mx-auto px-4 py-6">
        @yield('content')
    </div>

    <script>
        function toggleMobileMenu() {
            const mobileMenu = document.getElementById('mobile-menu');
            mobileMenu.classList.toggle('hidden');
        }
    </script>
</body>

</html>
