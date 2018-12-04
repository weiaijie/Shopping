<template>
    <div class="header_container">
		<el-breadcrumb separator="/">
			<el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
			<el-breadcrumb-item v-for="(item, index) in $route.meta" :key="index">{{item}}</el-breadcrumb-item>
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
		background-color: #efefef;
		padding-left: 20px;
		height: 60px;
	}
	.el-breadcrumb{
		line-height: 4;
	}
</style>