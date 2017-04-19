```js
{
  session: {
    currentUser: {
      id: 1,
      name: "Eugene",
      img_url: "url"
    }
  },

  errors: {
    email: "cannot be blank",
    first_name: "cannot be blank",
    password: "is too short (minimum is 6 characters)"
  },

  routes: {
    1: {
      user_id: 1,
      name: "Sample route",
      routing_data: "",
      distance: "5 miles",
      done: false,
      map_url: "",
      duration: null
    },
    2: {
      user_id: 2,
      name: "Sample route 2",
      routing_data: "",
      distance: "5 miles",
      done: true,
      map_url: "",
      duration: 60
    }
  },

  friends: {
    2: {
      id: 2,
      name: "Jennifer",
      img_url: "url"
    },
    3: {
      id: 3,
      name: "Kevin",
      img_url: "url"
    },
    4: {
      id: 4,
      name: "Josh",
      img_url: "url"
    }
  },

  comments: {
    1: {
      id: 1,
      routeId: 1,
      byUserId: 2,
      body: "good job!"
    }
  }
}
```
