<template>
    <main>
        <section class="space-y-16">
            <div class="relative isolate overflow-hidden bg-gray-900 py-96  sm:pb-96">
                <img src="@/assets/img/friends.jpg" alt=""
                    class="absolute inset-0 -z-10 h-full w-full object-cover object-right md:object-center">
                <div class="absolute inset-0 bg-black bg-opacity-85"></div>
                <div class="hidden sm:absolute sm:-top-10 sm:right-1/2 sm:-z-10 sm:mr-10 sm:block sm:transform-gpu sm:blur-3xl"
                    aria-hidden="true">
                    <div class="aspect-[1097/845] w-[68.5625rem] bg-gradient-to-tr from-[#ff4694] to-[#776fff] opacity-20"
                        style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)">
                    </div>
                </div>
                <div class="absolute -top-52 left-1/2 -z-10 -translate-x-1/2 transform-gpu blur-3xl sm:top-[-28rem] sm:ml-16 sm:translate-x-0 sm:transform-gpu"
                    aria-hidden="true">
                    <div class="aspect-[1097/845] w-[68.5625rem] bg-gradient-to-tr from-[#ff4694] to-[#776fff] opacity-20"
                        style="clip-path: polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)">
                    </div>
                </div>
                <div class="mx-auto max-w-7xl px-6 lg:px-8 z-50 absolute">
                    <div class="mx-auto max-w-2xl lg:mx-0">
                        <h2 class="text-4xl font-bold tracking-tight text-white sm:text-6xl">Ajoke</h2>
                        <p class="mt-6 text-base lg:text-lg leading-8 text-gray-300">Anim aute id magna aliqua ad ad non
                            deserunt sunt.
                            Qui irure qui lorem cupidatat commodo. Elit sunt amet fugiat veniam occaecat fugiat aliqua.
                        </p>
                    </div>
                    <div class="mx-auto max-w-2xl lg:mx-0 lg:max-w-none pt-0 mt-0">
                        <dl class="mt-4 grid grid-cols-2 gap-8 sm:mt-20 sm:grid-cols-2 lg:grid-cols-3">
                            <div class="flex flex-col-reverse">
                                <dt class="text-base leading-7 text-gray-300">Total Bills</dt>
                                <dd class="text-2xl font-bold leading-9 tracking-tight text-white">12</dd>
                            </div>
                            <div class="flex flex-col-reverse">
                                <dt class="text-base leading-7 text-gray-300">Pending split bills</dt>
                                <dd class="text-2xl font-bold leading-9 tracking-tight text-white">300+</dd>
                            </div>
                            <div class="flex flex-col-reverse">
                                <dt class="text-base leading-7 text-gray-300">Completed split bills</dt>
                                <dd class="text-2xl font-bold leading-9 tracking-tight text-white">40</dd>
                            </div>
                        </dl>
                    </div>
                </div>
            </div>

            <div class="px-4 sm:px-6 lg:px-8">
                <div class="sm:flex sm:items-center">
                    <div class="sm:flex-auto">
                        <h1 class="text-base font-semibold leading-6 text-gray-900">Bills</h1>
                        <p class="mt-2 text-sm text-gray-700">A list of all the bills in your account including the
                            image,
                            title, total amount and members.</p>
                    </div>
                    <div class="mt-4 sm:ml-16 sm:mt-0 sm:flex-none">
                        <button type="button" @click="showBillSlideOver = true"
                            class="block rounded-md bg-indigo-600 px-3 py-2 text-center text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Create
                            new bill</button>
                    </div>
                </div>
                <div class="mt-8 flow-root px-3 lg:px-0">
                    <div class="-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                        <div class="inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8">
                            <table class="min-w-full divide-y divide-gray-300">
                                <thead>
                                    <tr>
                                        <th scope="col"
                                            class="py-3.5  text-left text-sm font-semibold text-gray-900 sm:pl-0">
                                            Name</th>
                                        <th scope="col"
                                            class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                            Title</th>
                                        <th scope="col"
                                            class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                            Status</th>
                                        <th scope="col"
                                            class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                            Role</th>
                                        <th scope="col" class="relative py-3.5 pl-3 pr-4 sm:pr-0">
                                            <span class="sr-only">Edit</span>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="divide-y divide-gray-200 bg-white">
                                    <tr>
                                        <td class="whitespace-nowrap py-5  text-sm sm:pl-0">
                                            <div class="flex items-center">
                                                <div class="h-11 w-11 flex-shrink-0">
                                                    <img class="h-11 w-11 rounded-full"
                                                        src="https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                                                        alt="">
                                                </div>
                                                <div class="ml-4">
                                                    <div class="font-medium text-gray-900">Lindsay Walton</div>
                                                    <div class="mt-1 text-gray-500">lindsay.walton@example.com</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="whitespace-nowrap px-3 py-5 text-sm text-gray-500">
                                            <div class="text-gray-900">Front-end Developer</div>
                                            <div class="mt-1 text-gray-500">Optimization</div>
                                        </td>
                                        <td class="whitespace-nowrap px-3 py-5 text-sm text-gray-500">
                                            <span
                                                class="inline-flex items-center rounded-md bg-green-50 px-2 py-1 text-xs font-medium text-green-700 ring-1 ring-inset ring-green-600/20">Active</span>
                                        </td>
                                        <td class="whitespace-nowrap px-3 py-5 text-sm text-gray-500">Member</td>
                                        <td
                                            class="relative whitespace-nowrap py-5 pl-3 pr-4 text-right text-sm font-medium sm:pr-0">
                                            <a href="#" class="text-indigo-600 hover:text-indigo-900">Edit<span
                                                    class="sr-only">, Lindsay Walton</span></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <SlideOver @update:close="close" title="New Bill"
            description="Get started by filling in the information below to create your new bill"
            :show="showBillSlideOver">
            <template #formContent>
                <div class="space-y-6 py-6 sm:space-y-0 sm:divide-y sm:divide-gray-200 sm:py-0">
                    <!-- Project name -->
                    <div class="space-y-2 px-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:space-y-0 sm:px-6 sm:py-5">
                        <div>
                            <label for="project-name"
                                class="block text-sm font-medium leading-6 text-gray-900 sm:mt-1.5">Title</label>
                        </div>
                        <div class="sm:col-span-2">
                            <input type="text" name="project-name" id="project-name"
                                class="block w-full rounded-md border border-gray-400 py-3 px-3 text-gray-900 shadow-sm placeholder:text-gray-400">
                        </div>
                    </div>

                    <!-- Project description -->
                    <div class="space-y-2 px-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:space-y-0 sm:px-6 sm:py-5">
                        <div>
                            <label for="project-description"
                                class="block text-sm font-medium leading-6 text-gray-900 sm:mt-1.5">Description</label>
                        </div>
                        <div class="sm:col-span-2">
                            <textarea id="project-description" name="project-description" rows="3" cols="3"
                                class="block w-full rounded-md border px-3 border-gray-400 py-1.5 resize-none text-gray-900 shadow-sm placeholder:text-gray-400"></textarea>
                        </div>
                    </div>

                    <!-- Privacy -->
                    <div class="px-4 sm:px-6 lg:px-8">
                        <div class="flow-root">
                            <div class="-mx-4 -my-2 sm:-mx-6 lg:-mx-8">
                                <div class="inline-block min-w-full py-2 align-middle">
                                    <div class="container mx-auto py-6 px-6">
                                        <table class="table-auto w-full overflow-x-auto">
                                            <thead>
                                                <tr class="">
                                                    <th scope="col"
                                                        class="sticky top-0 z-10 border-b border-gray-300 bg-white bg-opacity-75 py-3.5  text-left text-sm font-semibold text-gray-900 backdrop-blur backdrop-filter ">
                                                        Phone</th>
                                                    <th scope="col"
                                                        class="sticky top-0 z-10 hidden border-b border-gray-300 bg-white bg-opacity-75 px-3 py-3.5 text-left text-sm font-semibold text-gray-900 backdrop-blur backdrop-filter sm:table-cell">
                                                        Email</th>
                                                    <th scope="col"
                                                        class="sticky top-0 z-10 hidden border-b border-gray-300 bg-white bg-opacity-75 px-3 py-3.5 text-left text-sm font-semibold text-gray-900 backdrop-blur backdrop-filter lg:table-cell">
                                                        Amount</th>
                                                    <th scope="col"
                                                        class="sticky top-0 z-10 border-b border-gray-300 bg-white bg-opacity-75 px-3 py-3.5 text-left text-sm font-semibold text-gray-900 backdrop-blur backdrop-filter">
                                                        Description</th>
                                                    <th scope="col"
                                                        class="sticky top-0 z-10 border-b border-gray-300 bg-white bg-opacity-75 py-3.5 pl-3 pr-4 backdrop-blur backdrop-filter sm:pr-6 lg:pr-8">
                                                        <span class="sr-only">Actions</span>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr v-for="(recipient, index) in recipients" :key="index" class="px-6">
                                                    <td v-if="editingIndex === index"
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900">
                                                        <input v-model="recipient.phone"
                                                            class="border px-4 py-2 w-full" />
                                                    </td>
                                                    <td v-else
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        {{ recipient.phone }}</td>
                                                    <td v-if="editingIndex === index"
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        <input v-model="recipient.email"
                                                            class="border px-4 py-2 w-full" />
                                                    </td>
                                                    <td v-else
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        {{ recipient.email }}</td>
                                                    <td class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 "
                                                        v-if="editingIndex === index">
                                                        <input v-model="recipient.amount"
                                                            class="border px-4 py-2 w-full" />
                                                    </td>
                                                    <td class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 "
                                                        v-else>{{ recipient.amount }}</td>
                                                    <td class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 "
                                                        v-if="editingIndex === index">
                                                        <textarea rows="3" cols="3" v-model="recipient.description"
                                                            class="border px-4 py-2 w-full resize-none" />
                                                    </td>
                                                    <td class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 "
                                                        v-else>{{ recipient.description }}</td>
                                                    <td
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        <div class="flex gap-x-2">
                                                            <div>
                                                                <button @click="editRecipient(index)"
                                                                    v-if="editingIndex !== index"
                                                                    class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Edit</button>
                                                            </div>
                                                            <div>
                                                                <button @click="saveRecipient(index)"
                                                                    v-if="editingIndex === index"
                                                                    class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">Save</button>
                                                            </div>
                                                            <div>
                                                                <button @click="deleteRecipient(index)"
                                                                    class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">Delete</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr v-if="addingNew" class="px-6">
                                                    <td
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        <input v-model="newRecipient.phone"
                                                            class="border px-4 py-2 w-full" />
                                                    </td>
                                                    <td
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        <input v-model="newRecipient.email"
                                                            class="border px-4 py-2 w-full" />
                                                    </td>
                                                    <td
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        <input v-model="newRecipient.amount"
                                                            class="border px-4 py-2 w-full" />
                                                    </td>
                                                    <td
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        <textarea rows="3" cols="3" v-model="newRecipient.description"
                                                            class="border px-4 py-2 w-full resize-none" />
                                                    </td>
                                                    <td
                                                        class="w-2/12 whitespace-nowrap border-b border-gray-200 py-4  text-sm font-medium text-gray-900 ">
                                                        <div class="flex gap-x-2">
                                                            <div>
                                                                <button @click="addRecipient"
                                                                    class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">Add</button>
                                                            </div>
                                                            <div>
                                                                <button @click="cancelAdd"
                                                                    class="bg-gray-500 hover:bg-gray-700 text-white font-bold py-2 px-4 rounded">Cancel</button>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div @click="startAddNewRecipient" v-if="!addingNew"
                                            class="flex justify-end items-end py-6 pr-6">
                                            <button
                                                class="py-2.5 rounded-lg text-white bg-green-500 text-xs px-4 flex items-center gap-x-3">Add
                                                recipients

                                                <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17"
                                                    viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2.5"
                                                    stroke-linecap="round" stroke-linejoin="round">
                                                    <line x1="12" y1="5" x2="12" y2="19"></line>
                                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                                </svg>
                                            </button>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </template>

            <template #formActions>
                <div class="flex justify-end space-x-3">
                    <button type="button" @click="close"
                        class="rounded-md bg-white px-3 py-2 text-sm font-semibold text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 hover:bg-gray-50">Cancel</button>
                    <button type="submit"
                        class="inline-flex justify-center rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">Create
                        bill</button>
                </div>
            </template>
        </SlideOver>
    </main>
</template>

<script setup lang="ts">
const showBillSlideOver = ref(false)

const close = () => {
    showBillSlideOver.value = false
}

const form = ref({
    title: '',
    description: '',
    recipients: []
})
// const recipients = ref([])


interface Recipient {
    phone: string;
    email: string;
    amount: string;
    description: string;
}

const recipients = ref<Recipient[]>([])
const editingIndex = ref<number | null>(null)
const addingNew = ref(false)
const newRecipient = ref<Recipient>({ phone: '', email: '', amount: '', description: '' })

const startAddNewRecipient = () => {
    addingNew.value = true
}

const addRecipient = () => {
    if (newRecipient.value.phone && newRecipient.value.email && newRecipient.value.amount && newRecipient.value.description) {
        recipients.value.push({ ...newRecipient.value })
        newRecipient.value = { phone: '', email: '', amount: '', description: '' }
        addingNew.value = false
    }
}

const cancelAdd = () => {
    newRecipient.value = { phone: '', email: '', amount: '', description: '' }
    addingNew.value = false
}

const editRecipient = (index: number) => {
    editingIndex.value = index
}

const saveRecipient = (index: number) => {
    editingIndex.value = null
}

const deleteRecipient = (index: number) => {
    recipients.value.splice(index, 1)
}
</script>
