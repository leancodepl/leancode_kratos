# Login

---

## Login with password:

1. Display the login UI.
2. When the user submits credentials, call `loginWithPassword` with email and password.
3. The KratosClient will handle the login request. If successful, the session credentials are persisted and the user is logged in.
4. For future requests, the persisted session can be used to authenticate the user.