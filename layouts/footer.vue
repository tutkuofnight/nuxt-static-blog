<script>
export default {
    name : 'Footer',
    data(){
        return {
            year: new Date().getFullYear()
        }
    }
}
</script>


<template>
    <footer>
        <p>Copyright © {{year}} Tutku Uçan</p>
    </footer>
</template>


<style lang="scss" scoped>
footer {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    p {
        color: gray;
    }
}
</style>