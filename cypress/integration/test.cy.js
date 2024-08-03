describe("test", () => {
  it("tests test", () => {
    cy.viewport(1365, 945);
    cy.visit("https://www.google.com/");
    cy.get("#APjFqb").click();
    cy.get("#APjFqb").type("hoohl");
    cy.get("#APjFqb").type("google.com");
    cy.get("div.gb_Ld > a").click();
    cy.location("href").should("eq", "https://accounts.google.com/v3/signin/identifier?continue=https%3A%2F%2Fwww.google.com%2F&ec=GAZAmgQ&hl=en&ifkv=AdF4I74AZp10wnncnWxqq4WmnY9oh67Mpi-pbuq6yV1d9aB0eCdAadXtqQxj1cwHz2gl6irDfOd0XQ&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin&dsh=S-1190581254%3A1722698101616720&ddm=0");
    cy.get("div.TNTaPb span").click();
  });
});
//# recorderSourceMap=BCBDBEBFBGAGAGAGAGBHCJB
