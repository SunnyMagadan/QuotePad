Feature: Excerpt comments list
  Background: Logged in User
    Given Authorized User

  @javascript
  Scenario: Load Excerpt Comments via Ajax
    Given the following excerpts exists:
      | Content  |
      | "FuuBar" |
    And the following comments exists:
      | User id | Excerpt id | Comment |
      | 1       | 1          | "Cool"  |
      | 1       | 1          | "Yeah"  |
    When I visit the Root page
    Then I should see 1 Comments(2) link under "div.excerpt"
    When I click on "Comments(2)"
    Then I should see 2 comments with content:
      | Content |
      | "Cool"  |
      | "Yeah"  |
