// cypress/e2e/login.cy.js
describe('Login Test', () => {
it('logs in successfully', () => {
// Visit the login page
cy.visit('/login');

// Enter username and password
cy.get('input[name="username"]').type('testuser');
cy.get('input[name="password"]').type('password123');

// Submit the login form
cy.get('button[type="submit"]').click();

// Verify successful login by checking for a specific element
cy.contains('Welcom').should('be.visible');
});
});
