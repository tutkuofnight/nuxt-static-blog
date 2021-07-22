<script>
import { format } from 'date-fns'
export default {
    components: {
        
    },
    head(){
      return {
        title: "./tutku",
        meta: [
          {
              hid: 'description',
              name: 'description',
              content: "Tutku Uçan blog"
          }
        ]
      }
    },
    async asyncData({$content}){
      const articles = await $content('blog').fetch()
      return { articles }
    },
    filters: {
      formatDate(){
        return format(new Date() , 'dd MM yyyy')
      }
    }
}
</script>

<template>
  <div>
    <div v-for="article in articles" :key="article.id">
      <nuxt-link :to="`/blog/${article.slug}`" class="article-link">
      <div class="article-content">
        <h2>{{article.title}}</h2>
        <p>{{article.updatedAt | formatDate}}</p>
      </div>
        <p class="article-desc">{{article.desc}}</p>
      </nuxt-link>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.article-content {
  display: flex;
  align-items: center;
  p {
    margin-left: 20px;
  }
}
.article-desc {
  margin-top: 10px;
}
</style>

