new Vue({
  el: '#app',
  data:{
    header:'Grace Clinic',
    selected: ''
  },
  methods:{
    getNumber(e){
    //  console.log(this.$el.getElementsByTagName('g')[7].attributes['data-title'].value)
      // console.log(e.target.getAttribute)
      let tooth = e.target.parentNode.dataset.title
      this.selected = tooth
      console.log(tooth)
      // console.log(this.data['title'])
    }
  }
})