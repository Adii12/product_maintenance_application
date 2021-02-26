import React from 'react'

class SMSPayType extends React.Component {
    render() {
        return (
            <div>
                <div className="field">
                    <label htmlFor="order_SMS_number">{I18n.t("orders.form.sms_pay_type.sms_number")}</label>
                    <input type="text"
                            name="order[SMS_number]"
                            id="order_SMS_number"/>
                </div>
            </div>
        );
    }
}

export default SMSPayType