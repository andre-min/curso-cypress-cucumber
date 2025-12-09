Feature: Greeting

    Background: access EngageSphere with the cookies consert banner already accepted 
        Given I access the EngageSphere app having already acccepted the cookies banner

    @engagesphere
    Scenario: shows the default greeting
        Then I see the following greeting: Hi there!

    @engagesphere @smoke
    Scenario: shows a customized greeting
        When I type "<name>" in the name input field
        Then I see the following greeting Hi "<name>"!  

        Examples:
            | name    |
            | Andre   |
            | Leandro |
            | Bruno   |
            | Heitor  |
            | Squirrel|