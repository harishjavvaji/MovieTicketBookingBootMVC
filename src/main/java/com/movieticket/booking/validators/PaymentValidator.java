package com.movieticket.booking.validators;

import com.movieticket.booking.models.Payment;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class PaymentValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return Payment.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {

        Payment payment = (Payment) o;
        if (payment.getCardHolderName()== null || payment.getCardHolderName().equals("")) {
            errors.rejectValue("cardHolderName", "payment.cardHolderName", "Check Card Holder Name");
        }

    }
}
