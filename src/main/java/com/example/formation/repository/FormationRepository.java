package com.example.formation.repository;

import com.example.formation.model.Formation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FormationRepository extends JpaRepository<Formation, Long> {

    List<Formation> findByTitreContainingIgnoreCaseOrNiveauContainingIgnoreCase(String titre, String niveau);
}
