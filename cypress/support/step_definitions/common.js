import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given('I access the EngageSphere app having already acccepted the cookies banner', () => {
    cy.setCookie('cookieConsent', 'accepted')
    cy.visit('https://engage-sphere.vercel.app/')
})