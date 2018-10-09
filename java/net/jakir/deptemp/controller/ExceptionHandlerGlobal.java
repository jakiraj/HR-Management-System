package net.jakir.deptemp.controller;

import org.apache.log4j.Logger;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

@ControllerAdvice
public class ExceptionHandlerGlobal {
    private final static Logger logger = Logger.getLogger(ExceptionHandlerGlobal.class);
    @ExceptionHandler(Exception.class)
    public String error(Exception e){
        logger.error("Exception ",e);
        return "redirect:/server_error";
    }

}
