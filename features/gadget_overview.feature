Feature: Gadget Overview
  In order to be able to keep track of the gadgets that I've built
  As a psychotic engineer bent on being the world's most prolific builder of inane and meaningless devices
  I want to be able to view all of my gadgets at once

  Background:
  Given I have a gadget called "The Magnificent Whale Catcher"
  And I have a gadget called "A Diabolical Mellonballer"
  
  Scenario: Psychotic Engineer Views His Gadgets
    Given I go to the gadget overview
    Then I should see all of the gadgets that I've created
