<template>
    <article class="blog-post">
        <nuxt-content :document="article"></nuxt-content>
    </article>
</template>


<script>
export default {
    async asyncData({$content , params}){
        const article = await $content('blog' , params.slug).fetch()
        return {
            article
        }
    },
    head(){
        return {
            title: this.article.title,
            meta: [
                {
                    hid: 'description',
                    name: 'description',
                    content: this.article.desc
                }
            ]
        }
    }
}
</script>