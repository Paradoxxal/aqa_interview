Feature: Translation file

  user should be able to to translate a text file from one language to another

  Scenario Outline:
    Given I open google translate
      And I choose the original language - "русский"
      And I choose the target language - "<to_lang>"
    Then I upload "test_file.txt"
      And I translate the text
      And I should see "<to_text>" in window


  Scenarios:
    |to_lang   |to_text           |
    |английский|test phrase       |
    |сомали    |Weedhan imtixaanka|
    |латышский |tests frāze       |
    |казахский |сынақ фраза       |
    |финский   |testi lause       |
