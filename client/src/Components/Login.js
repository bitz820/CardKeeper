import React, {useState} from 'react'

function Login({setCurrentUser}) {
    const [formData, setFormData] = useState({
        email: '',
        password: ''
    })

    const {email, password} = formData

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

    const loginUser = (e) => {
        e.preventDefault()
        fetch("/login", configObj)
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
        <>
        <h1>Login!</h1>
        <form onSubmit={loginUser}>
            Email:
            <input onChange={handleChange} value={email} name="email" type="email" />
            Password:
            <input onChange={handleChange} value={password} name="password" type="password" />
            <input type="submit" />
        </form>
        </>
    )
}

export default Login