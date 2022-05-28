import React, {useState} from "react"
import EditProfile from "./EditProfile"

function User({ userDetails, setCurrentUser }) {
    const [showEditForm, setShowEditForm] = useState(false)
    const { name, age, email, password_digest, credit_score } = userDetails

    const toggleEditForm = () => {
        setShowEditForm(!showEditForm)
    }

    return (
        <>
            <div>
                <h1>
                    Welcome Back, {name}!
                </h1>
                <h3>
                    Age: {age}
                </h3>
                <h3>
                    Credit Score: {credit_score}
                </h3>
                <h3>
                    Email: {email}
                </h3>
                {/* <h3>
                    Password: {password_digest}
                </h3> */}
                <button onClick={toggleEditForm}>Click to Update your Profile!</button>
                {showEditForm ? <EditProfile setCurrentUser={setCurrentUser} userDetails={userDetails} /> : null}
            </div>


            <div>
                <h1>Your Saved Wallet</h1>
                {/* Map over all cards here that user has added to their wallet (in the join table) */}
            </div>
        </>
    )
}
export default User