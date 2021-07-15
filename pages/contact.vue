<script>
export default {
    name: 'contact',
    head(){
        return {
            title: "./find-me"
        }
    }
}
</script>
<template>
    <div align="center">
        <h2>Find me on other platforms and contact</h2>
        <ul>
            <li>
                <a href="https://github.com/tutklon" target="_blank">
                    <fa :icon="['fab', 'github']" class="icon size-4"></fa>
                </a>
            </li>
            <li>
                <a href="https://twitter.com/tutklon" target="_blank">
                    <fa :icon="['fab', 'twitter']" class="icon size-4"></fa>
                </a>
            </li>
            <li>
                <a href="https://tr.linkedin.com/in/tutku-u%C3%A7an-610170195?trk=people_directory" target="_blank">
                    <fa :icon="['fab', 'linkedin']" class="icon size-4"></fa>
                </a>
            </li>
        </ul>
        <p>also</p>
        <a href="mailto:tutkuucan369@gmail.com">tutkuucan369@gmail.com</a>
        <br><br><br><br>
    </div>
</template>
<style lang="scss" scoped>
div {
    h2 {
        margin-bottom: 90px;
    }
    ul {
        width: 250px;
        list-style: none;
        display: flex;
        justify-content: space-between;
        padding-left: 0;
    }
    p {
        font-size: 20px;
        color: gray;
        margin: 50px 0px;
    }
    a {
        font-size: 20px;
    }
}
</style>