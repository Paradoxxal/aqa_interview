Feature: Translation text

 User should be able to translate a text from one language to another

  Scenario Outline:
    Given I open google translate
      And I choose the original language - "<from_lang>"
      And I choose the target language - "<to_lang>"
      And I enter "<from_text>" in the source textbox
    Then I translate the text
      And I should see "<to_text>" in textbox

  Scenarios:
  |from_lang    |to_lang   |from_text     |to_text         |
  |русский      |английский|тестовая фраза|test phrase     |
  |ирландский   |сомали    |frása Tástáil |Imtixaanka weedh|
  |португальский|латышский |Testing frase |testēšana frāze |
  |болгарский   |казахский |Тестване фраза|тестілеу фраза  |
  |французский  |финский   |phrase de test|testi virke     |
