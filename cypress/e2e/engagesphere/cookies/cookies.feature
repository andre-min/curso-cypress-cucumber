Feature: Cookies Consent Banner

    @engagesphere
    Scenario: consents to the cookies' policies
        Given I acess the EngageSphere app without any cookies set
        And I see the cookies consent Banner
        When I click the Accept button
        Then the coockies banner is closed
        And the cookieConsent cookies is set with the value accepted

    
    @engagesphere
    Scenario: declines the cookies' policies
        Given I acess the EngageSphere app without any cookies set
        And I see the cookies consent Banner
        When I click the Decline button
        Then the coockies banner is closed
        And the cookieConsent cookies is set with the value declined