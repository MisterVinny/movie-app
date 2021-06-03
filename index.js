/* global Vue, axios */
var app = new Vue({
  el: '#app',
  data: function () {
    return {
      movies: []
    };
  },

  methods: {
    loadMovies: function () {
      axios.get("http://localhost:3000/movies/")
        .then(response => {
          console.log(response.data);
          this.movies = response.data;
        });
    }


  }
})