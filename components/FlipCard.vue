<template>
    <div class="flip-card lg:w-[400px] h-[300px]" @click="flipped = !flipped">
        <div class="flip-card-inner" :class="{ 'is-flipped': flipped }">
            <div class="flip-card-front">
                <img :src="user.image" />
            </div>
            <div class="flip-card-back">
                <div class="p-3 space-y-3">
                    <p class="font-semibold">{{ user.name }}</p>
                    <p class="text-sm text-gray-800 leading-8">{{ user.bio }}</p>
                    <div>
                        <a target="_blank" :href="user.path"
                            class="text-green-700 font-semibold flex items-center gap-x-1 text-sm"><svg
                                xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24"
                                fill="none" stroke="#417505" stroke-width="2.5" stroke-linecap="round"
                                stroke-linejoin="round">
                                <g fill="none" fill-rule="evenodd">
                                    <path
                                        d="M18 14v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8c0-1.1.9-2 2-2h5M15 3h6v6M10 14L20.2 3.8" />
                                </g>
                            </svg> project path</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script lang="ts" setup>
interface Props {
    user: User;
}

const props = defineProps<Props>();
const flipped = ref(false);
</script>

<style scoped>
.flip-card {
    perspective: 1000px;
    cursor: pointer;
}

.flip-card-inner {
    position: relative;
    width: 100%;
    height: 100%;
    transition: transform 0.6s;
    transform-style: preserve-3d;
}

.flip-card-inner.is-flipped {
    transform: rotateY(180deg);
}

.flip-card-front,
.flip-card-back {
    position: absolute;
    width: 100%;
    height: 100%;
    backface-visibility: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-color: #fff;
    border: 1px solid #ccc;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
}

.flip-card-back {
    transform: rotateY(180deg);
}
</style>