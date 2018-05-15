Feature:
  Como um usuario
  Gostaria de criar uma pontuação
  Para salvar meus pontos para comparação
  
Background:
  Given I am on /high_scores
  When I click on New High score link
  Then I should see New High Score
  
Scenario: Criar uma pontuação corretamente (caminho feliz)
  When I fill high_score_game with Temple Run
  And I fill high_score_score with 2000
  And I click on Create High score button
  Then I should see High score was successfully created.
  
Scenario: Criar uma pontuação sem nome do jogo (caminho triste)
  When I fill high_score_score with 20000
  And I click on Create High score button
  Then I should see Game can't be blank