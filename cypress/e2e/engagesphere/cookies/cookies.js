import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('I acess the EngageSphere app without any cookies set', () => {
    cy.visit('https://engage-sphere.vercel.app/')
})

Given('I see the cookies consent Banner', () => {
    cy.get('[class^="CookieConsent_banner__"]', { timeout: 10000 }).should('be.visible'); //CookieConsent_banner__UHArL
})

When('I click the Accept button', () => {
    cy.contains('button', 'Accept').click();
})

When('I click the Decline button', () => {
    cy.contains('button', 'Decline').click();

})

Then('the coockies banner is closed', () => {
    cy.get('[class^="CookieConsent_banner__"]').should('not.exist');
})

Then('the cookieConsent cookies is set with the value accepted', () => {
    cy.getCookie('cookieConsent').should('have.property', 'value', 'accepted');
})

Then('the cookieConsent cookies is set with the value declined', () => {
    cy.getCookie('cookieConsent').should('have.property', 'value', 'declined');
})




