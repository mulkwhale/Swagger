package kr.ac.kopo.ctc.spring.board.web;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class TestController {
	@GetMapping("user/search")
    public Map<String, String> search() {
        Map<String, String> response = new HashMap<String, String>();
        response.put("name", "yj.k");
        response.put("age", "16");
        response.put("email", "xxxxxxxx@gmail.com");
        return response;
    }
}
