package de.hablijack.bienenmonitor.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.hablijack.bienenmonitor.controller.util.ModelKeys;
import de.hablijack.bienenmonitor.domain.BienenmonitorUser;
import de.hablijack.bienenmonitor.domain.validator.UserCreateFormValidator;
import de.hablijack.bienenmonitor.form.UserCreateForm;
import de.hablijack.bienenmonitor.service.UserService;

@Controller
public class UserController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserService userService;
    @Autowired
    private UserCreateFormValidator userCreateFormValidator;

    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(userCreateFormValidator);
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String getUsers(Model model) {
        model.addAttribute(ModelKeys.USERS, userService.getAllUser());
        return "user_list";
    }

    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    public String editUser(Model model, @PathVariable String id) {
        BienenmonitorUser user = userService.getUserById(Integer.valueOf(id));
        UserCreateForm userCreateForm = new UserCreateForm();
        userCreateForm.setEmail(user.getEmail());
        userCreateForm.setFirstname(user.getFirstname());
        userCreateForm.setLastname(user.getLastname());
        userCreateForm.setRole(user.getRole());
        userCreateForm.setId(user.getId());
        model.addAttribute(ModelKeys.FORM, userCreateForm);
        return "user";
    }

    @RequestMapping(value = "/user/{id}", method = RequestMethod.POST)
    public String handleUserEditForm(@Valid @ModelAttribute("form") UserCreateForm form, BindingResult bindingResult) {
        userService.update(form);
        return "redirect:/users";
    }

    @RequestMapping(value = "/users/create", method = RequestMethod.GET)
    public String getUserCreatePage(Model model) {
        model.addAttribute(ModelKeys.FORM, new UserCreateForm());
        return "user";
    }

    @RequestMapping(value = "/users/create", method = RequestMethod.POST)
    public String handleUserCreateForm(@Valid @ModelAttribute("form") UserCreateForm form,
            BindingResult bindingResult) {
        LOGGER.debug("Processing user create form={}, bindingResult={}", form, bindingResult);
        if (bindingResult.hasErrors()) {
            // failed validation
            return "user";
        }
        try {
            userService.create(form);
        } catch (DataIntegrityViolationException e) {
            // probably email already exists - very rare case when multiple
            // admins are adding same user
            // at the same time and form validation has passed for more than one
            // of them.
            LOGGER.warn("Exception occurred when trying to save the user, assuming duplicate email", e);
            bindingResult.reject("email.exists", "Email already exists");
            return "user";
        }
        // ok, redirect
        return "redirect:/users";
    }

}
