import React from 'react'

class SMSPayType extends React.Component {
    render() {
        return (
            <div>
                <div className="field">
                    <label htmlFor="order_SMS_number">Phone #</label>
                    <input type="text"
                            name="order[SMS_number]"
                            id="order_SMS_number"/>
                </div>
            </div>
        );
    }
}

export default SMSPayType