require('./bootstrap');

require('alpinejs');

Echo.private('send-message')
  .listen('SendCourseMessage', (e) => {
    this.response.push({
      response: e.response.response,
      // user: e.user
    });
  });