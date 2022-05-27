import React, { useState } from 'react'



function Signup({setCurrentUser}) {
    const [formData, setFormData] = useState({
        name: '',
        age: 0,
        email: '',
        password: ''
    })

    const {name, age, email, password} = formData

    const handleChange = (e) => {
        const key = e.target.name

        setFormData({
            ...formData,
            [key]: e.target.value
        })
    }

    const configObj = {
        method: 'POST',
        headers: {"Content-Type": "application/json",
        "Accept": "application/json"
    }, body: JSON.stringify(formData)
    }

    const createUser = (e) => {
        e.preventDefault()
        fetch("/signup", configObj)
        .then(r => {
            if(r.ok){
                r.json().then(setCurrentUser)
            }else{
                // Console.log errors
                r.json().then( console.log)
            }
        })
        .then(console.log)
    }


    return (
        <form onSubmit={createUser}>
            Name:
            <input onChange={handleChange} value={name} name="name" type="text" />
            Age:
            <input onChange={handleChange} value={age} name="age" type="number" />
            Email:
            <input onChange={handleChange} value={email} name="email" type="email" />
            Password:
            <input onChange={handleChange} value={password} name="password" type="password" />
            <input type="submit" />
        </form>
    )
}

export default Signup