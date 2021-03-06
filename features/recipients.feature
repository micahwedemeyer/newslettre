Feature: Managing Recipients for Newsletters
  Background:
    Given there is no Newsletter named "Superior Soy Beans Discount!"
    And there is no "Junk-food addicts" Recipient List
    And there is no identity named "Hidden"
    And I add the "Hidden" Identity
    And I add a Newsletter named "Superior Soy Beans Discount!" written by "Hidden"
    And I add a Recipient List named "Junk-food addicts"
  @sendgrid_adding_recipients
  Scenario: Adding a Recipient List to a Newsletter
    When I add "Junk-food addicts" to "Superior Soy Beans Discount!"
    Then "Junk-food addicts" will be notified when "Superior Soy Beans Discount!" is delivered
  @sendgrid_removing_recipients
  Scenario: Removing a Recipient List from a Newsletter
    Given I add "Junk-food addicts" to "Superior Soy Beans Discount!"
    When I remove "Junk-food addicts" from "Superior Soy Beans Discount!"
    Then no one will be notified when "Superior Soy Beans Discount!" is delivered
