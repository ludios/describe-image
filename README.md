# describe-image

describe-image uses [playwright](https://github.com/microsoft/playwright) to hit
[google.com/searchbyimage](https://www.google.com/searchbyimage?hl=en&image_url=https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png)
and extract the "Possible related search:" text describing the image, printing
it to stdout.

## Usage

1. Install node 12 or 14
2. Install yarn
3.  ```
    git clone https://github.com/ludios/describe-image
    cd describe-image
    yarn install
    ./describe-image URL
    ```

On NixOS, use [nixos-playwright](https://github.com/ludios/nixos-playwright) to patch the Playwright browser binaries.
