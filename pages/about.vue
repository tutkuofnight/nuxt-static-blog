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
@media only screen and (max-width: 880px) {
    div {
        padding: 20px;
    }
}
</style>