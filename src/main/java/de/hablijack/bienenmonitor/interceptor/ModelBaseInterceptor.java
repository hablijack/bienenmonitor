package de.hablijack.bienenmonitor.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ModelBaseInterceptor extends HandlerInterceptorAdapter {

    public static final String PACKAGE_NAME = "de.hablijack.bienenmonitor.controller.";
    public static final String CONTROLLER = "controller";

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        if (modelAndView != null && handler != null) {
            HandlerMethod method = (HandlerMethod) handler;
            String controllerName = method.getBean().getClass().getName().replace(PACKAGE_NAME, "").toLowerCase()
                    .replace(CONTROLLER, "");
            modelAndView.getModel().put("controllerId", controllerName);
        }
        super.postHandle(request, response, handler, modelAndView);
    }
}
