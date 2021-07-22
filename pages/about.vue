<script>
export default {
    name: 'About',
    head(){
        return {
            title: "./about-me",
        }
    },
    async asyncData({$content}){
        const article = await $content('context' , 'about').fetch()
        return {article}
    }
}
</script>
<template>
    <nuxt-content :document="article"></nuxt-content>
</template>

<style lang="scss" scoped>
@media only screen and (max-width: 880px) {
    div {
        padding: 20px;
    }
}
</style>