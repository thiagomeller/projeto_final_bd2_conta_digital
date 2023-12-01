package com.contadigital.apicontadigital.controller;

import com.contadigital.apicontadigital.controller.dto.CardDto;
import com.contadigital.apicontadigital.dao.CardRepository;
import com.contadigital.apicontadigital.dao.UserRepository;
import com.contadigital.apicontadigital.model.Card;
import com.contadigital.apicontadigital.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.ValidationException;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/card")
public class CardController {

    @Autowired
    private CardRepository cardRepository;

    @Autowired
    private UserRepository userRepository;

    @PostMapping(path = "create-card")
    public ResponseEntity createCard(@RequestBody CardDto cardDto) {
        Optional<User> userOptional = userRepository.findById(cardDto.getUserId());
        if (userOptional.isEmpty()) {
            throw new ValidationException("User not found");
        }
        Card newCard = new Card();
        newCard.setCardCvv(cardDto.getCardCvv());
        newCard.setCardHolder(cardDto.getCardHolder());
        newCard.setCardNumber(cardDto.getCardNumber());
        newCard.setCardType(cardDto.getCardType());
        newCard.setCardMemberSince(cardDto.getCardMemberSince());
        newCard.setCardValidationDate(cardDto.getCardValidationDate());
        newCard.setUser(userOptional.get());
        cardRepository.save(newCard);
        return ResponseEntity.ok().build();
    }

    @GetMapping(path = "{idCard}")
    public ResponseEntity<CardDto> getCardById(@PathVariable("idCard") Long idCard) {
        Optional<Card> cardOptional = cardRepository.findById(idCard);
        if (cardOptional.isEmpty()) {
            throw new ValidationException("Card not found");
        }

        CardDto cardDto = new CardDto();
        cardDto.setId(cardOptional.get().getId());
        cardDto.setCardCvv(cardOptional.get().getCardCvv());
        cardDto.setCardHolder(cardOptional.get().getCardHolder());
        cardDto.setCardType(cardOptional.get().getCardType());
        cardDto.setCardNumber(cardOptional.get().getCardNumber());
        cardDto.setCardMemberSince(cardOptional.get().getCardMemberSince());
        cardDto.setCardValidationDate(cardOptional.get().getCardValidationDate());
        cardDto.setUserId(cardOptional.get().getUser().getId());
        return ResponseEntity.ok(cardDto);
    }

    @GetMapping(path = "user/{idUser}")
    public List<Card> getCardsByUserId(@PathVariable("idUser") Long idUser) {
        return cardRepository.getCardsByUserId(idUser);
    }
}
