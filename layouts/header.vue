<script>
import { mapState } from 'vuex'

export default {
    name: 'Header',
    computed: {
        ...mapState([
            'dark_mode',
            'name'
        ])
    }
}
</script>

<template>
    <header>
        <h2>./tutku</h2>
        <nav>
           <ul>
                <li>
                    <nuxt-link to="/" class="link">Posts</nuxt-link>
                </li>
                <li>
                    <nuxt-link to="/about" class="link">About</nuxt-link>
                </li>
                <li>
                    <nuxt-link to="contact" class="link">Find me</nuxt-link>
                </li>
           </ul>
        </nav>
        <ul>
            <li>
                <button class="icon-button">
                    {{name}}
                    <fa v-if="dark_mode == false" icon="sun" class="icon" />
                    <fa v-if="dark_mode == true" icon="moon" class="icon" />
                </button>
            </li>
        </ul>
    </header>
</template>


<style lang="scss" scoped>
header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
    margin-bottom: 60px;
    nav {
        width: 200px;
        ul {
            padding-left: 0;
            list-style: none;
            display: flex;
            justify-content: space-between;
        }
    }
    ul {
        list-style: none;
    }
}
@media only screen and (max-width: 880px) {
    header {
        margin: 0px 20px;
    }
}
</style>