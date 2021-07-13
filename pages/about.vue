<script>
import about_me from "../static/about-me.md"
export default {
    name: 'About',
    head(){
        return {
            title: "./about-me",
        }
    },
    computed: {
        aboutMe(){
            return about_me
        }
    }
}
</script>
<template>
    <div v-html="aboutMe"></div>
</template>

<style lang="scss" scoped>

</style>