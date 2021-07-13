<script>
export default {
    name: 'Header'
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
                    <nuxt-link to="contact" class="link">Contact</nuxt-link>
                </li>
           </ul>
        </nav>
        <ul>
            <li><button>dark</button></li>
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
@media only screen and (max-width: 870px) {
    header {
        margin: 0px 15px;
    }
}
</style>