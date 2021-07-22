<script>
export default {
    name: 'Header',
    components: {
        
    },
    methods: {
        setColorMode(){
            return this.$colorMode.preference = 'light'
        }  
    },
    computed: {
        changeColorMode(){
            return this.$colorMode.preference.system
        }
    },
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
                {{ changeColorMode }}
                <button @click="$colorMode.preference = 'system'" class="icon-btn" type="button">
                    <fa icon="palette" class="icon" />
                </button>
                <ul>
                    <li><button @click="$colorMode.preference = 'dark'" class="icon-btn"><fa icon="moon" class="icon type-moon" /></button></li>
                    <li><button @click="$colorMode.preference = 'light'" class="icon-btn"><fa icon="sun" class="icon type-sun" /></button></li>
                </ul>
            </li>
        </ul>
    </header>
</template>


<style lang="scss" scoped>
@import '../assets/css/theme.scss';
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
        li {
            ul {
                visibility: hidden;
                position: absolute;
                margin-top: 0px;
                transition: 250ms all;
                border-radius: 0px;
                padding-left: 0;
                opacity: 0;
                border-top: 1px solid $c-general;
                li {
                    padding: 5px 0px;
                }
            }
            &:hover {
                ul {
                    visibility: visible;
                    margin-top: 5px;
                    opacity: 1;
                }
            }
        }
    }
}
@media only screen and (max-width: 880px) {
    header {
        margin: 0px 20px;
    }
}
</style>