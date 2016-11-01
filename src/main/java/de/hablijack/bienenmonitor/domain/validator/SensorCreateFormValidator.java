package de.hablijack.bienenmonitor.domain.validator;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import de.hablijack.bienenmonitor.form.HiveCreateForm;

@Component
public class SensorCreateFormValidator implements Validator {

    private static final Logger LOGGER = LoggerFactory.getLogger(SensorCreateFormValidator.class);

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(HiveCreateForm.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        LOGGER.debug("Validating {}", target);
    }
}
