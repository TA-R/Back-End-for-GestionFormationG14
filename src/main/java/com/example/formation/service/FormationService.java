package com.example.formation.service;

import com.example.formation.exception.ResourceNotFoundException;
import com.example.formation.model.Formation;
import com.example.formation.repository.FormationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class FormationService {

    private final FormationRepository formationRepository;

    public List<Formation> getAllFormations(String search) {
        if (search == null || search.isBlank()) {
            return formationRepository.findAll();
        }

        return formationRepository.findByTitreContainingIgnoreCaseOrNiveauContainingIgnoreCase(search, search);
    }

    public Formation getFormationById(Long id) {
        return formationRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Formation introuvable avec id: " + id));
    }

    public Formation createFormation(Formation formation) {
        formation.setId(null);
        return formationRepository.save(formation);
    }

    public Formation updateFormation(Long id, Formation formationDetails) {
        Formation formation = getFormationById(id);

        formation.setTitre(formationDetails.getTitre());
        formation.setDuree(formationDetails.getDuree());
        formation.setNiveau(formationDetails.getNiveau());
        formation.setPrix(formationDetails.getPrix());

        return formationRepository.save(formation);
    }

    public void deleteFormation(Long id) {
        Formation formation = getFormationById(id);
        formationRepository.delete(formation);
    }
}
