<script>
export default {
    name: 'blog-post',
    props: {
        title: {type: String , required: true},
        date: {type: String , required: true},
        content: {type: String , required: true}
    }
}
</script>

<template>
    <div class="blog-post">
        <header>
            <h3>{{title}}</h3>
            <p>{{date}}</p>
        </header>
        <div class="md-preview"></div>
    </div>
</template>

<style lang="scss" scoped>

</style>