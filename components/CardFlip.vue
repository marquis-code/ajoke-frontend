<template>
    <div class="flip-card" @mouseenter="flip" @mouseleave="flip">
      <div :class="['flip-card-inner', { 'is-flipped': isFlipped }]">
        <div class="flip-card-front">
          <img :src="frontImage" alt="Front Image" class="w-full h-full object-cover">
        </div>
        <div class="flip-card-back">
          <img :src="backImage" alt="Back Image" class="w-full h-full object-cover">
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { ref } from 'vue';
  
  const props = defineProps({
    frontImage: String,
    backImage: String
  });
  
  const isFlipped = ref(false);
  
  const flip = () => {
    isFlipped.value = !isFlipped.value;
  };
  </script>
  
  <style scoped>
  .flip-card {
    perspective: 1000px;
  }
  
  .flip-card-inner {
    transition: transform 0.6s;
    transform-style: preserve-3d;
  }
  
  .flip-card-inner.is-flipped {
    transform: rotateY(180deg);
  }
  
  .flip-card-front, .flip-card-back {
    backface-visibility: hidden;
    position: absolute;
    width: 100%;
    height: 100%;
  }
  
  .flip-card-back {
    transform: rotateY(180deg);
  }
  </style>
  