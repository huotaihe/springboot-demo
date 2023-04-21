package com.github.huotaihe.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 寒溪
 * @date 2023/04/21
 */
@RestController
public class DemoController {

    @GetMapping("/")
    public String main() {
        return "success";
    }

}
