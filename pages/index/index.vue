<template src="./index.html"></template>

<script>
	export default {
		data() {
			let that = this
			return {
				seller: that.staticData.seller,
				goods: that.staticData.goods,
				ratings: that.staticData.ratings
			}
		},
		//监听页面完成
		onLoad(){
		},
		// -app 初始化完成时触发（全局只触发一次）
		onLaunch(){
			
		},
		//启动，或从后台进入前台显示
		onShow(){
			
		},
		//从前台进入后台
		onHide(){
			
		},
		methods: {

		}
	}
</script>

<style lang="less">
	@import url('./index.less');
</style>
