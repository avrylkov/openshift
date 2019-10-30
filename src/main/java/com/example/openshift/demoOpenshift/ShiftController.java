package com.example.openshift.demoOpenshift;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;

@RestController
public class ShiftController {

    private DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd:MM:yyyy HH:mm:ss");

    @RequestMapping("/")
    public String hello() {
        return "Use path /time to get info";
    }

    @ResponseBody
    @RequestMapping(value = "/time")
    @GetMapping(value="", produces = MediaType.APPLICATION_JSON_VALUE)
    public List getTime() {
      return Arrays.asList(System.getProperty("os.name"),
              System.getenv("HOSTNAME"),
              LocalDateTime.now().format(formatter));
    }

}
