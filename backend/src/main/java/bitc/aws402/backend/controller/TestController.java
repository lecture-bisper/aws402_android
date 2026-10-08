//  File :  TestController.java
//  User :  it
//  Date :  2026-10-06
//  Time :  오전 9:26
//  Desc :  

package bitc.aws402.backend.controller;

import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
public class TestController {

  @GetMapping("/")
  public String index() {
    return "Flutter App 과 통신하는 Spring boot Server!!";
  }

  @GetMapping("/api/test1")
  public Object test1(@RequestParam("num1") int num1, @RequestParam("num2") int num2) {
    Map<String, Integer> result = new HashMap<>();
    result.put("num1", num1);
    result.put("num2", num2);
    result.put("result", num1 + num2);

    return result;
  }

  @PostMapping("/api/test2")
  public Object test2(@RequestBody Map<String, Integer> map) {
    map.put("result", map.get("num1") + map.get("num2"));

    return map;
  }
}











