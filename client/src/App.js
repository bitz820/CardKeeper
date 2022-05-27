import './App.css';
import React, {useEffect, useState} from 'react'
import Signup from './Components/Signup.js';
import Login from './Components/Login.js';

function App() {
  const [currentUser, setCurrentUser] = useState("")
  const [showSignUp, setShowSignUp] = useState(false)

  useEffect(() => {
    fetch("/auth")
    .then(res => {
      if (res.ok){
        res.json().then(user => setCurrentUser(user))
      }
    })
  }, [])

  const handleLogout = () => {
    fetch("/logout", {method: "DELETE"})
    .then(r => r.json())
    .then(setCurrentUser(""))
  }

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
          {/* <Signup /> */}
          {/* <Login setCurrentUser={setCurrentUser}/> */}
         
          <br/>
          <button onClick={handleLogout}>Logout!</button>
    </div>
  );
}

export default App;
