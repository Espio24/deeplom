package com.example.deeplom.repos;


import com.example.deeplom.domain.TagsForGame;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TagsRepo extends CrudRepository<TagsForGame, Long> {
   // List<TagsForGame> findByIdTag (Long id);
}
