<script>
import Header from './header.vue'
import Footer from './footer.vue'
export default {
    components: {
        Header , Footer
    }
}
</script>
<template>
    <div class="container">
        <Header />
        <nuxt />
        <Footer />
    </div>
</template>