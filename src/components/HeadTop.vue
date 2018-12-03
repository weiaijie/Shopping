<template>
    <div class="header_container">
		<el-breadcrumb separator="/">
			<el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
			<!-- <el-breadcrumb-item v-for="(item, index) in $route.meta" :key="index">{{item}}</el-breadcrumb-item> -->
		</el-breadcrumb>
		
    </div>
</template>

<script>

    export default {
    	data(){
    		return {
    			// baseImgPath,
    		}
    	},
    	created(){
    		
    	},
    	computed: {
    		
    	},
		methods: {
			
		}
    }
</script>

<style type="text/css" scoped>
	.header_container{
		background-color: #e6e6e6;
		padding-left: 20px;
		height: 60px;
	}
</style>