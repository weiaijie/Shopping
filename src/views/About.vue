<template>
  <div class="about">
    <h1>This is an about page</h1>
    <router-link to="/">login</router-link>
  </div>
</template>

<script>

export default {
  name: 'about',
  components: {

  },
  data: function () {
    return {  }
  },
  created() {
    
  },
  mounted() {
    console.log(process.env.VUE_APP_SECRET)
  },
  methods: {

  }
}
</script>
