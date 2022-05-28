import React, {useEffect, useState} from "react"
import Input from "./Input"

function EditProfile({setCurrentUser, userDetails}) {
    const [formData, setFormData] = useState({
        name: userDetails.name,
        age: userDetails.age,
        credit_score: userDetails.credit_score,
        email: userDetails.email
    })

    const handleInput = (e) => {
        console.log(e.target.name, " : ", e.target.value);
        const name = e.target.name
        let value = e.target.value
    
        setFormData({
          ...formData,
          [name]: value
        })
      };

      const updateUser = (e) => {
        e.preventDefault()
        const configObj = {
          method: "PATCH",
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"},
          body: JSON.stringify(formData)
        }

        fetch(`/users/${userDetails.id}`, configObj)
        .then(r => {
          if (r.ok){
            r.json().then(data => setCurrentUser(data))
          }
        })
      }

  return (
    <form onSubmit={updateUser}>
        Name
        <Input
          name="name"
          type="text"
          value={formData.name}
          placeholder={"Your name"}
          handleInput={handleInput}
        />
        <br />
        Credit Score
        <Input
          name="credit_score"
          type="credit_score"
          value={formData.credit_score}
          placeholder={"Your credit_score"}
          handleInput={handleInput}
        />
        <br />
        Age
        <Input
          name="age"
          type="text"
          value={formData.age}
          placeholder={"Your age"}
          handleInput={handleInput}
        />
        <br />
        Email
        <Input
          name="email"
          type="email"
          value={formData.email}
          placeholder={"Your email"}
          handleInput={handleInput}
        />
        <br />
        <Input type="submit" value="Update" />
    </form>
  )
}

export default EditProfile