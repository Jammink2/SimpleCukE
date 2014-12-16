Feature:  Viewer signs up for the newsletter
    In order to recieve the newsletter
    As a user of the website
    I want to be able to sign up for the newsletter
    
    Scenario:  View form page
        Given I am on "/form"
        Then I should see "Fill out this form to receive our newsletter."
        
    Scenario:  Fill out form
        Given I am on "/form"
        When I fill in "name" with "John Doe"
        And I fill in "email" with "john@doe.com"
        And I click "Sign Up!"
        Then I should see "Hi there, John Doe.  You'll receive our email newsletter at john@doe.com"
