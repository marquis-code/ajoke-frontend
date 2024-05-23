<template>
    <div class="overflow-hidden bg-white pb-24 sm:pb-32 sm:pt-10">
        <div class="mx-auto max-w-7xl px-4 lg:px-6">
            <div
                class="mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 sm:gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-2">
                <div class="space-y-8 lg:h-[500px] hide-scrollbar lg:overflow-y-auto">
                    <ul role="list" class="space-y-6" v-for="(itm, idx) in job_roles" :key="idx">
                        <li class="relative flex gap-x-4">
                            <div class="absolute left-0 top-0 flex w-6 justify-center -bottom-6">
                                <div class="w-px bg-gray-200"></div>
                            </div>
                            <div class="relative flex h-6 w-6 flex-none items-center justify-center bg-white">
                                <div class="h-1.5 w-1.5 rounded-full bg-gray-100 ring-1 ring-gray-300"></div>
                            </div>
                            <p class="flex-auto py-0.5 text-sm leading-5 text-gray-500"><span
                                    class="font-medium text-gray-900">{{ itm.company }} {{ itm.location }}
                                </span> </p>
                            <time datetime="2023-01-23T11:24"
                                class="flex-none py-0.5 text-xs leading-5 text-gray-500">{{ itm.from }} to {{ itm.to }}
                            </time>
                        </li>
                        <li class="relative flex gap-x-4">
                            <div class="absolute left-0 top-0 flex w-6 justify-center -bottom-6">
                                <div class="w-px bg-gray-200"></div>
                            </div>
                            <img src="https://images.unsplash.com/photo-1550525811-e5869dd03032?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
                                alt="" class="relative mt-3 h-6 w-6 flex-none rounded-full bg-gray-50">
                            <div class="flex-auto rounded-md p-3 ring-1 ring-inset ring-gray-200">
                                <!-- <div class="flex justify-between gap-x-4">
                                    <div class="py-0.5 text-xs leading-5 text-gray-500"><span
                                            class="font-medium text-gray-900">Chelsea
                                            Hagon</span> commented</div>
                                    <time datetime="2023-01-23T15:56"
                                        class="flex-none py-0.5 text-xs leading-5 text-gray-500">3d
                                        ago</time>
                                </div> -->
                                <p class="text-sm leading-6 text-gray-500">
                                <ul class="space-y-4">
                                    <li class="text-sm text-gray-800 flex gap-x-2" v-for="role in itm.duties"
                                        :key="role">
                                        <p>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                viewBox="0 0 24 24" fill="none" stroke="#38ab10" stroke-width="2.5"
                                                stroke-linecap="round" stroke-linejoin="round">
                                                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                                                <polyline points="22 4 12 14.01 9 11.01"></polyline>
                                            </svg>
                                        </p>
                                        <p class="text-xs leading-relaxed tracking-wide">{{ role }}</p>
                                    </li>
                                </ul>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="sticky top-0">
                    <img data-aos="flip-left" src="@/assets/img/bg2.jpg" alt="Product screenshot"
                        class="w-[48rem] max-w-none rounded-xl shadow-xl ring-1 ring-gray-400/10 sm:w-[57rem] md:-ml-4 lg:-ml-0"
                        width="2432" height="1442">
                </div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
const job_roles = ref([
    {
        role: "Frontend Software Engineer",
        company: "Farmz2U Ltd",
        location: "Lagos, Nigeria",
        from: "January 2020",
        to: "March, 2021",
        duties: [
            "Developed and maintained web application with a team, utilizing JavaScript and its  Frameworks namely; React JS, Next JS, Vue JS, and Nuxt JS.",
            "Applied Design-Develop-Deploy approach to define and implement project’s scopes and  timelines.",
            "Built web applications that are geared for Search Engines and also integrated REST APIs.",
            "Tested and troubleshoot applications to check for problems and ensured that the program is  optimized and solid.",
        ],
    },
    {
        role: "Frontend Software Engineer",
        company: "MyCoverGenius",
        location: "Lagos, Nigeria",
        from: "April  2021",
        to: "June , 2022",
        duties: [
            `Take ownership of frontend features or user stories within the insurance MyCover Genius web applications. Successfully deliver assigned features according to the defined timelines, with a focus on quality and adherence to UI/UX design guidelines. Aim for a 90% or higher completion rate of assigned frontend tasks by the end of the quarter
`, `Enhance communication and collaboration with cross-functional teams, including design, backend development, and product management. Participate in bi-weekly sprint planning meetings and provide valuable input on frontend requirements and implementation strategies.
`, `Efficiently address frontend bugs reported by QA or end-users. Aim to resolve reported bugs within 24 hours of assignment, with a focus on thorough testing and regression prevention. Decrease the average time to resolve frontend bugs by 20% compared to the previous quarter.
`, `Proactively identify opportunities to enhance user experience within the insurance company's web applications. Propose and implement UI/UX improvements based on user feedback or usability testing results. Aim for a 15% increase in user satisfaction scores related to frontend interactions.

`, `Contributed to developing and maintaining My Cover digital products which includes; MyCoverAI website, My CoverGenius website, and  My Cover Genius business dashboards.
`
        ],
    },
    {
        role: "Frontend Software Engineer",
        company: "Edukoya",
        location: "Lagos, Nigeria",
        from: "September 1, 2022",
        to: "September 29, 2023",
        duties: [
            ` Streamline frontend build and deployment pipelines to reduce build times and enhance release efficiency. Implement caching strategies, code splitting, and other optimization techniques to achieve a 20% reduction in average build times for frontend applications.`, `Decrease the average page load time of key pages within Edukoya's platform by 20%, ensuring swift access to educational resources for users across different devices and network conditions.
`, `Contributed to developing and maintaining Edukoya’s digital products which includes; Learners Application, Tutors Application and official website.

`
        ],
    },
    {
        role: "Frontend Software Engineer",
        company: "Shuttlers Metropolitan Mobility Company",
        location: "Lagos, Nigeria",
        from: "June 2023",
        to: "March 2024",
        duties: [
            `Diminished the numbers of production bugs by writing Type-Safe codes and utilizing  SonarCloud services. `, ` Prevented security breach on Shuttlers ecosystem through adequate users’ authentication  and authorization. 
`, `Fully automated Shuttlers services through developing and deploy essential business features
`, `Configured widget test for the core components of registration, login, booking, viewing, and  cancellation of ticket(s), tracking a trip, and funding a wallet on customer app. 
`, `Developed and maintained the partner’s portal by implementing core business features to  keep track of partners vehicles, drivers, trips, routes, and earnings. 
`
        ],
    },
    {
        role: "Frontend Software Engineer",
        company: "Storipod",
        location: "Lagos, Nigeria",
        from: " January , 2024",
        to: "April ,  2024",
        duties: [
            ` Developed and maintained web application with a team, utilizing JavaScript and its  Frameworks namely; React JS, Next JS, Vue JS, and Nuxt JS.`, `Applied Design-Develop-Deploy approach to define and implement project’s scopes and  timelines. 


`, `Built web applications that are geared for Search Engines and also integrated                     REST APIs. 
`, `Tested and troubleshoot applications to check for problems and ensured that the program is  optimized and solid. 
`
        ],
    },
    {
        role: "Frontend Software Engineer",
        company: "Fundall",
        location: "Lagos, Nigeria",
        from: "January 2024",
        to: "Present",
        duties: [
            `Collaborated with the UX/UI team to redesign over 20+ web pages, ensuring
compliance with accessibility standards (WCAG) and improving mobile responsiveness,
resulting in a 35% increase in mobile user retention.
`, `Enhanced dashboard functionality with custom Vue JS components, leading to improvement in data processing time and contributing to a more streamlined administrative process. 
`, ` supearhead the frontend development of Fundall Business using Vue JS and Nuxt JS,
focusing on creating a robust platform for managing company business activities.
 
`
        ],
    },
]);
</script>

<style scoped>
.hide-scrollbar::-webkit-scrollbar {
    display: none;
}

.hide-scrollbar {
    -ms-overflow-style: none;
    /* IE and Edge */
    scrollbar-width: none;
    /* Firefox */
}
</style>