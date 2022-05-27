import React from "react"

function User({ userDetails }) {

    const { name, age, email, password_digest, credit_score } = userDetails

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
                <h3>
                    Password: {password_digest}
                </h3>
            </div>
            <div>
                <h1>Your Saved Wallet</h1>
                {/* Map over all cards here that user has added to their wallet (in the join table) */}
            </div>
        </>
    )
}
export default User