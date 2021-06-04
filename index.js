/* global Vue, axios */

var app = new Vue({
  el: "#app",
  data: function () {
    return {
      message: "Buy my stuff!",
      movies: [],
      newProduct: {}
    };
  },

  methods: {
    loadMovies: function () {
      axios.get("http://localhost:3000/movies")
        .then(response => {
          console.log(response.data);
          this.movies = response.data;
        });
    }

    // createProduct: function () {
    //   params = this.newProduct
    //   axios
    //     .post("http://localhost:3000/products", params)
    //     .then(response => {
    //       console.log(response.data);
    //       this.products.unshift(response.data);
    //       this.product = "";
    //     });
    // }

  }

});