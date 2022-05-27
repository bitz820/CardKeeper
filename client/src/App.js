import './App.css';
import React, {useEffect, useState} from 'react'
import Signup from './Signup.js';
import Login from './Login.js';

function App() {
  const [currentUser, setCurrentUser] = useState("")

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

  if (!currentUser) return <Login setCurrentUser={setCurrentUser} />

  return (
    <div className="App">
        <h1>Hi {currentUser.name}!</h1>
          <Signup />
          <Login setCurrentUser={setCurrentUser}/>
          <button onClick={handleLogout}>Logout!</button>
    </div>
  );
}

export default App;
