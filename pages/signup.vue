<template>
    <form action="#" class="mt-8 grid grid-cols-6 gap-6">
        <div class="col-span-6 sm:col-span-3">
            <label for="FirstName" class="block text-sm font-medium text-gray-700">
                First Name
            </label>

            <input type="text" id="FirstName" name="first_name"
                class="mt-1 w-full rounded-md py-3 border border-gray-300 outline-none border-gray-300 bg-white text-sm text-gray-700 px-3 " />
        </div>

        <div class="col-span-6 sm:col-span-3">
            <label for="LastName" class="block text-sm font-medium text-gray-700">
                Last Name
            </label>

            <input type="text" id="LastName" name="last_name"
                class="mt-1 w-full rounded-md py-3 border border-gray-300 outline-none border-gray-300 bg-white text-sm text-gray-700 px-3 " />
        </div>

        <div class="col-span-6 sm:col-span-3">
            <label for="FirstName" class="block text-sm font-medium text-gray-700">
                Middle Name
            </label>

            <input type="text" id="FirstName" name="first_name"
                class="mt-1 w-full rounded-md py-3 border border-gray-300 outline-none  bg-white text-sm text-gray-700 px-3 " />
        </div>

        <div class="col-span-6 sm:col-span-3">
            <label for="LastName" class="block text-sm font-medium text-gray-700">
                Phone
            </label>

            <input type="text" id="LastName" name="last_name"
                class="mt-1 w-full rounded-md py-3 border border-gray-300 outline-none  bg-white text-sm text-gray-700 px-3 " />
        </div>

        <div class="col-span-6">
            <label for="Email" class="block text-sm font-medium text-gray-700"> Email </label>

            <input type="email" id="Email" name="email"
                class="mt-1 w-full rounded-md py-3 border border-gray-300 outline-none bg-white text-sm text-gray-700 px-3 " />
        </div>

        <div class="col-span-6">
            <label for="Password" class="block text-sm font-medium text-gray-700"> Password </label>

            <input type="password" id="Password" name="password"
                class="mt-1 w-full rounded-md py-3 border border-gray-300 outline-none bg-white text-sm text-gray-700 px-3 " />
        </div>

        <div class="col-span-6">
            <p class="text-sm text-gray-500">
                By creating an account, you agree to our
                <a href="#" class="text-gray-700 underline"> terms and conditions </a>
                and
                <a href="#" class="text-gray-700 underline">privacy policy</a>.
            </p>
        </div>

        <div class="col-span-6 sm:flex sm:items-center sm:gap-4">
            <NuxtLink to="/signup"
                class="inline-block shrink-0 rounded-md border border-blue-600 bg-blue-600 px-12 py-3 text-sm font-medium text-white transition">
                Create an account
            </NuxtLink>

            <p class="mt-4 text-sm text-gray-500 sm:mt-0">
                Already have an account?
                <NuxtLink to="/login" class="text-gray-700 underline">Log in</NuxtLink>.
            </p>
        </div>
    </form>
</template>

<script setup lang="ts">
definePageMeta({
    layout: 'auth'
})
</script>