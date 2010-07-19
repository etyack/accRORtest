Feature: Gadget Detail
  In order to be able to find out specifics about individual gadgets
  As a psychotic engineer who appreciates the virtues of an uncluttered user interface
  I want to see inane gadget information only on the gadget detail page

  Background:
    Given I have a gadget called "The Atrocious Condor Waffler" that weighs 900 ounces

    Scenario: Psychotic engineer views gadget detail
      Given I am on the gadget overview page
      When I follow "The Atrocious Condor Waffler"
      Then I should be viewing the gadget detail page for "The Atrocious Condor Waffler"
    
    Scenario: User views gadget weight
      Given I am viewing the gadget detail page for "The Atrocious Condor Waffler"
      Then I should see that "The Atrocious Condor Waffler" weighs 900 ounces

    Scenario: User goes back to the gadget overview
      Given I am viewing the gadget detail page for "The Atrocious Condor Waffler"
      When I follow "Back to Gadget Overview"
      Then I should be on the gadget overview page
    
    @wip @parts
    Scenario: User adds a part to a gadget
      Given I am viewing the gadget detail page for "The Atrocious Condor Waffler"
      When I add a part called "megawidget" to "The Atrocious Condor Waffler"
      Then I should be viewing the gadget detail page for "The Atrocious Condor Waffler"
      And I should receive a notice saying that the part was successfully added
      And I should see "megawidget" within the parts for "The Atrovious Condor Waffler"

    @wip @parts
    Scenario: User removes a part from a gadget
      Given "The Atrocious Condor Waffler" has a part called "ultrascrew"
      And I am viewing the gadget detail page for "The Atrocious Condor Waffler"
      When I delete the "ultrascrew" part from "The Atrocious Condor Waffler"
      Then I should see a notice saying that the part was successfully deleted
      And I should be viewing the gadget detail page for "The Atrocious Condor Waffler"
      And I should not see "megawidget" within the parts for "The Atrovious Condor Waffler"
