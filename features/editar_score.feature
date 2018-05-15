Feature:
  Como um usuario
  Gostaria de editar um score criado
  Para atualizar os dados para usar como comparação
  
Background:
  Given I have a Temple Run score with 20000 points
  And I am on /high_scores/1/edit
  Then I should see Editing High Score
  
Scenario: Editar um score com sucesso (caminho feliz)
  When I fill high_score_game with Subway Surfers
  And I fill high_score_score with 5
  And I click on Update High score button
  Then I should see High score was successfully updated.
  
Scenario: Editar um score sem nome (caminho triste)
  When I fill high_score_score with 20000
  And I leave high_score_game blank
  And I click on Update High score button
  Then I should see Game can't be blank