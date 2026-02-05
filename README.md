# 🏋️‍♂️ Mobile Engineering Challenge: The "Roster" App

Welcome to the Mobile Engineering Challenge! You have **60 minutes** to turn this prototype into a functioning, architecturally sound application.

## 🚀 The Mission

We have a skeleton application with two screens: a **Login View** and an **Athlete Roster**. Currently, the app uses hardcoded dummy data and a fake "delay" to simulate logging in.

**Your goal is to wire up the application to the real API, managing the authentication flow, data modeling, and networking.**

### Core Objectives
1.  **Authentication:** Replace the dummy login logic with a real API call. The user should only navigate to the Roster screen upon a successful response.
2.  **Data Modeling:** Create robust Swift data models to parse the JSON response from the API.
3.  **Networking:** Implement a clean networking layer using modern Swift concurrency (`async/await`) to fetch the live data.
4.  **Architecture:** Refactor the codebase to separate business logic from the UI (e.g., MVVM).

---

## ⭐️ Bonus Levels (If Time Permits)

If you finish the core objectives early, choose **one** of the following to demonstrate your engineering depth:

* **The "Squad" Filter:** Fetch the `/squads.json` endpoint. Add a menu or toggle to the Roster View that filters the athletes based on their Squad assignment.
    * *Tests:* Data normalization and local filtering logic.
* **Test Coverage:** Write a unit test for your ViewModel. Verify that your data loading state triggers correctly or that the data mapping logic is accurate.
    * *Tests:* Dependency Injection and testability.
* **Offline Grace:** How does the app handle a network error or a flaky connection? Implement a "Retry" mechanism or a friendly Error State UI.
    * *Tests:* Error handling and user experience.
---

## 🛠 Getting Started

1.  Open `RosterChallenge.xcodeproj`.
2.  Build and Run (Cmd + R).
3.  You will see a functional (but fake) Login screen. You can click "Log In" to see the current navigation flow.
4.  **Start coding!** Feel free to create new files, groups, or folders as you see fit.

---

## 📡 API Documentation

**Base URL:**
`https://kitmanlabs.github.io/mobile-tech-challenge/api`

### 1. Login (Session)
Validates the user session. Returns a success message.
* **Endpoint:** `/session.json`
* **Method:** `GET`
* **Note:** This is a mock endpoint; it will accept any request.

**Sample Response:**
```json
{
  "status": "You have logged in successfully."
}
```

### 2. Roster (Athletes)
Returns a list of athletes to display.
* **Endpoint:** `/athletes.json`
* **Method:** `GET`
* **Response:** JSON Array of athlete objects.

**Sample Response:**
```json
[
  {
    "first_name": "Adam",
    "last_name": "Beard",
    "id": 1964,
    "image": {
      "url": "https://kitman.imgix.net/avatar.jpg"
    },
    "username": "abeardathlete",
    "squad_ids": [78]
  },
  {
    "first_name": "Al",
    "last_name": "Saunders",
    "id": 5011,
    "image": {
      "url": "https://kitman.imgix.net/avatar.jpg"
    },
    "username": "asaunders",
    "squad_ids": [78]
  }
]
```

### 3. Squads (Optional)
Returns a list of athletes to display.
* **Endpoint:** `/squads.json`
* **Method:** `GET`
* **Response:** JSON Array of squad objects.

**Sample Response:**
```json
[
  {
    "created_at": "2015-09-14T18:26:11.000Z",
    "id": 78,
    "name": "staff",
    "organisation_id": 6,
    "updated_at": "2015-09-14T18:26:11.000Z"
  },
  {
    "created_at": "2015-09-02T19:42:22.000Z",
    "id": 72,
    "name": "Active Roster",
    "organisation_id": 6,
    "updated_at": "2015-09-02T19:42:22.000Z"
  }
]
```

---
## 💡 What We Are Looking For

* **Architecture:** Do you separate your View logic from your Networking logic?
* **Swift Mastery:** Efficient use of `Codable` and Swift Concurrency (`async/await`, Actors).
* **Code Hygiene:** No magic strings, clean error handling, and readable structure.
* **Lead Thinking:** We value scalability and maintainability over pixel-perfect UI.
    
---

**Good luck!**
