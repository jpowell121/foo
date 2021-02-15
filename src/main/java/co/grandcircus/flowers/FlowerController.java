package co.grandcircus.flowers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FlowerController {

	@Autowired
	private FlowerRepo flowerRepo;

	@RequestMapping("/")
	public String homepage(Model model) {
		List<Flower> flowers = flowerRepo.findAll();
		model.addAttribute("flowers", flowers);
		return "flower-list";
	}

	@RequestMapping("/add-flower")
	public String showAddFlowerForm() {
		return "flower-form";
	}

	@RequestMapping("/submit-add-flower")
	public String submitAddFlowerForm(Flower flower, Model model) {
		flowerRepo.save(flower);
		model.addAttribute("flower", flower);
		return "flower-confirm";
	}

}
