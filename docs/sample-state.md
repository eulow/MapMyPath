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

  paths: {
    1: {
      user_id: 1,
      name: "Sample path",
      polyline: "",
      distance: "5 miles",
      done: false,
      map_url: "",
      duration: null
    },
    2: {
      user_id: 2,
      name: "Sample path 2",
      polyline: "",
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
      pathId: 1,
      authorId: 2,
      body: "good job!"
    }
  }
}
```
