package com.quizapp.quizservice.service;

import com.quizapp.quizservice.model.entity.Level;
import com.quizapp.quizservice.model.entity.Quiz;
import com.quizapp.quizservice.web.dto.QuestionDTO;
import com.quizapp.quizservice.web.dto.QuizDTO;

import java.util.List;

public interface QuizService {
    QuizDTO getById(Long id);
    QuizDTO getByTitle(String title);

    List<QuizDTO> getAllByLevel(String level);
    List<QuizDTO> getCategory(String category);
    List<QuizDTO> getAll();
    QuizDTO update(Long id, QuizDTO quizDTO);
    QuizDTO create(QuizDTO quizDTO);
    String remove(Long id);

    /* FEIGN CLIENT METHODS */
    QuestionDTO createQuestion(QuestionDTO questionDTO);
    List<QuestionDTO> getAllByQuizId(Long id);
}
