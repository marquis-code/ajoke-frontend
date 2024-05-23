<template>
  <!-- <div class="container mx-auto p-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
    <FlipCard v-for="user in users" :key="user.id" :user="user" />
  </div> -->
  <div class="bg-white">
    <div class="mx-auto max-w-7xl px-6 lg:px-8">
      <div class="mx-auto max-w-2xl lg:mx-0">
        <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">
          A few of my projects..
        </h2>
        <p class="mt-2 text-base lg:text-lg leading-8 text-gray-600">
          A short list of all the projects worked on or contributed to
        </p>
      </div>
      <div
        class="mx-auto lg:pr-0 mt-10 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 border-t border-gray-200 pt-10 sm:mt-16 sm:pt-16 lg:mx-0 lg:max-w-none lg:grid-cols-3">
        <FlipCard v-for="user in users" :key="user.name" :user="user" />
      </div>
    </div>
  </div>
</template>

<script lang="ts" setup>
import project1 from "@/assets/img/project1.png";
import project2 from "@/assets/img/project2.png";
import project3 from "@/assets/img/project3.png";
import project4 from "@/assets/img/project4.png";
import project5 from "@/assets/img/project5.png";
import project6 from "@/assets/img/project6.png";
import project7 from "@/assets/img/project7.png";
import project8 from "@/assets/img/project8.png";

const users = ref([
  {
    name: "Buildr",
    bio: `
Buildr accelerates digital growth with exceptional software development, product design, and bespoke solutions. We help businesses innovate and thrive in the digital age, transforming ideas into impactful digital realities.`,
    path: 'https://www.gobuildr.io/',
    image: project1,
  },
  {
    name: "Trust X Wallet",
    bio: `TrustXWallet ensures safe and seamless transactions for African e-commerce. Our platform enables risk-free online marketplace transactions with anyone, anywhere in the world. Catering to various escrow needs, TrustXWallet provides the security and reliability that modern e-commerce demands.`,
    path: 'https://trustxwallet.achillesdrill.com/',
    image: project2,
  },
  {
    name: "Achilles Drill",
    bio: `
Achilles Drill revolutionizes medical education by connecting medical students with a vibrant community and rich in-house resources, transforming how they learn and succeed.`,
    path: 'https://achillesdrill.com/',
    image: project3,
  },
  {
    name: "MyCoverAI Website Clone",
    bio: `
MyCoverAI revolutionizes the insurance experience in Africa. Our platform provides APIs that enable businesses and innovators to easily embed or build new insurtech solutions, making insurance accessible to anyone, anywhere.
`,
    path: 'https://mycover.netlify.app/',
    image: project4,
  },
  {
    name: "Fintel Values",
    path: 'https://fintelvalues.com/',
    bio: `Fintel Values is a premier trading platform offering access to over 1,000 assets, including Forex, Stocks, Commodities, Indices, and Cryptocurrencies. It provides a seamless, user-friendly interface for both novice and experienced traders, ensuring an exceptional trading experience.`,
    image: project5,
  },
  {
    name: "Storipod",
    bio: `
Storipod is a social media platform designed to empower users to build more interactive communities. We are committed to fostering a safer and more supportive environment for everyone.`,
    image: project6,
    path: 'https://storipod.app/'
  },
  {
    name: "MyCover AI dashboard",
    bio: "Dashboard to give visibility into insurance processes.",
    path: 'https://mycover-dashboard.netlify.app/',
    image: project7,
  },
  {
    name: "NeuPay",
    bio: "Payment platform to give visibility into Finance processes.",
    path: 'https://neupay.netlify.app/',
    image: project8,
  },
]);
</script>