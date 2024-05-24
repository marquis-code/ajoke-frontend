<template>
    <div v-if="show" class="relative z-10" aria-labelledby="slide-over-title" role="dialog" aria-modal="true">
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"></div>

        <div class="fixed inset-0 overflow-hidden">
            <div class="absolute inset-0 overflow-hidden">
                <div class="pointer-events-none fixed inset-y-0 right-0 flex max-w-full pl-10 sm:pl-16">
                    <div class="pointer-events-auto w-screen max-w-3xl">
                        <form class="flex h-full flex-col overflow-y-scroll bg-white shadow-xl">
                            <div class="flex-1">
                                <!-- Header -->
                                <div class="bg-gray-50 px-4 py-6 sm:px-6">
                                    <div class="flex items-start justify-between space-x-3">
                                        <div class="space-y-1">
                                            <h2 class="text-base font-semibold leading-6 text-gray-900"
                                                id="slide-over-title">{{ title }}</h2>
                                            <p class="text-sm text-gray-500">{{ description }}</p>
                                        </div>
                                        <div class="flex h-7 items-center">
                                            <button @click="close" type="button"
                                                class="relative text-gray-400 hover:text-gray-500">
                                                <span class="absolute -inset-2.5"></span>
                                                <span class="sr-only">Close panel</span>
                                                <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                                                    stroke="currentColor" aria-hidden="true">
                                                    <path stroke-linecap="round" stroke-linejoin="round"
                                                        d="M6 18L18 6M6 6l12 12" />
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <slot name="formContent" />
                            </div>
                            <div class="flex-shrink-0 border-t border-gray-200 px-4 py-5 sm:px-6">
                                <slot name="formActions" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
defineProps({
    show: {
        type: Boolean,
        required: true
    },
    title: {
        type: String,
        required: true
    },
    description: {
        type: String,
        required: true
    }
})

const emit = defineEmits<{
    (event: 'update:close'): void;
}>()

const close = () => {
    emit('update:close')
}
</script>