package co.grandcircus.flowers;

import org.springframework.data.jpa.repository.JpaRepository;


public interface FlowerRepo extends JpaRepository<Flower, Long> {
	

}
