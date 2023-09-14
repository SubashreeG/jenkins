
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Myproject {

	@GetMapping
	public String message(){
		return "Hi, this is my sample project";
	}

	public static void main(String[] args) {
		SpringApplication.run(Myproject.class, args);
	}

}
