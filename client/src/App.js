import './App.css';
import React, { useEffect, useState } from 'react'
import { Route, Switch } from 'react-router-dom'
import NavBar from "./Components/NavBar"
import Home from "./Components/Home"
import AllCards from "./Components/AllCards"
import User from "./Components/User"
import Signup from './Components/Signup.js'
import Login from './Components/Login.js'

function App() {
  const [currentUser, setCurrentUser] = useState("")
  const [showSignUp, setShowSignUp] = useState(false)


// Authorize User is logged in
  useEffect(() => {
    fetch("/auth")
      .then(res => {
        if (res.ok) {
          res.json().then(user => setCurrentUser(user))
        }
      })
  }, [])

  // Log User Out
  const handleLogout = () => {
    fetch("/logout", { method: "DELETE" })
      .then(r => r.json())
      .then(setCurrentUser(""))
  }

  // Toggle Sign Up Form
  const signUpForm = () => {
    setShowSignUp(!showSignUp)
  }

  if (!currentUser) return (
    <>
      <Login setCurrentUser={setCurrentUser} />
      Don't have an account? <button onClick={signUpForm}>Click to Sign Up!</button>
      {showSignUp ? <Signup /> : null}
    </>)

  return (
    <div className="App">

      <h1>Hi {currentUser.name}!</h1>
      <NavBar />
      <Switch>
        <Route exact path="/">
          <Home />
        </Route>
        <Route exact path="/profile">
          <User userDetails={currentUser}/>
        </Route>
        <Route exact path="/allCards">
          <AllCards />
        </Route>
        <Route exact path="/login">
          <Login />
        </Route>
      </Switch>


      {/* <Signup /> */}
      {/* <Login setCurrentUser={setCurrentUser}/> */}

      <br />
      <button onClick={handleLogout}>Logout!</button>
    </div>
  );
}

export default App;
