dmx.config({
  "chat": {
    "chat_messages": [
      {
        "type": "text",
        "name": "chat_user"
      },
      {
        "type": "text",
        "name": "chat_message"
      }
    ],
    "sessionStorage": [
      {
        "type": "text",
        "name": "username"
      }
    ]
  },
  "posts": {
    "repeat1": {
      "meta": [
        {
          "name": "query",
          "type": "array",
          "sub": [
            {
              "name": "id",
              "type": "text"
            },
            {
              "name": "image",
              "type": "text"
            },
            {
              "name": "description",
              "type": "text"
            },
            {
              "name": "category",
              "type": "text"
            },
            {
              "name": "author",
              "type": "text"
            },
            {
              "name": "date",
              "type": "date"
            }
          ]
        }
      ],
      "outputType": "object"
    }
  }
});
