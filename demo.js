const playwright = require('playwright');

(async () => {
    const url = process.argv[2];
    const browser = await playwright.chromium.launch();
    const context = await browser.newContext();
    const page = await context.newPage();
    await page.goto(url);
    await page.waitForLoadState("networkidle0");
    await page.screenshot({ path: `/tmp/example.png` });
    await browser.close();
})();
