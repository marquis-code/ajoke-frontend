<template>
    <form @submit.prevent="handleLogin" class="mt-8 grid grid-cols-6 gap-6">
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
            <button :disabled="isFormEmpty" type="submit"
                class="inline-block shrink-0 disabled:cursor-not-allowed disabled:opacity-25 rounded-md border border-blue-600 bg-blue-600 px-12 py-3 text-sm font-medium text-white transition">
                Login
            </button>

            <p class="mt-4 text-sm text-gray-500 sm:mt-0">
                I do not have an account?
                <NuxtLink to="/signup" class="text-gray-700 underline">Sign up</NuxtLink>.
            </p>
        </div>
    </form>
</template>

<script setup lang="ts">
const router = useRouter()
definePageMeta({
    layout: 'auth'
})

const form = ref({
    email: '',
    password: ''
})

const isFormEmpty = computed(() => {
    return !!(form.value.email && form.value.password)
})

const handleLogin = () => {
    setTimeout(() => {
        router.push('/bills')
    }, 3000)
}
</script>