package com.contadigital.apicontadigital.dao;

import com.contadigital.apicontadigital.model.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CardRepository extends JpaRepository<Card, Long> {

    @Query(value = "SELECT c.id, c.user_id, c.card_number, c.card_holder, c.card_validation_date, c.card_cvv, c.card_member_since, c.card_type FROM card AS c WHERE c.user_id = ?1", nativeQuery = true)
    List<Card> getCardsByUserId(Long userId);
}
