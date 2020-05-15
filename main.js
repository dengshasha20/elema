import Vue from 'vue'
import App from './App'
import staticData from './static/data.js'
import "./static/font_icon/iconfont.css"


Vue.config.productionTip = false
Vue.prototype.staticData = staticData.staticData

App.mpType = 'app'

const app = new Vue({
	...App
})
app.$mount()
