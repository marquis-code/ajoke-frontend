<template>
    <div class="flex justify-center items-center h-screen bg-gray-100">
      <img :src="gifUrl" alt="Loading GIF" class="rounded-lg shadow-lg">
    </div>
  </template>
  
  <script setup>
  const gifUrl = 'https://media.giphy.com/media/your-gif-url/giphy.gif';
  </script>
  
  <style scoped>
  </style>
  