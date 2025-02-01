# Nifty Tools: Jekyll Snippets for VS Code

## Not hardcoding links in jekyll is difficult

When working with Jekyll, managing URLs and links can be cumbersome, especially when dealing with relative URLs and Markdown links. Manually typing out the syntax for relative URLs and Markdown links can be error-prone and time-consuming. This repository provides a set of VS Code snippets to streamline this process, making it easier to generate URLs and links in Jekyll projects.

## Snippets Overview
Snippets are tiny files that we can call anytime and perform desired action where our cursor is placed.

This repository includes the following VS Code snippets to help you quickly generate Jekyll URLs and Markdown links:

1. **jurl** (Jekyll URL) - Generates the URL part:
   ```markdown
   {{'/' | relative_url}}
   ```
   **Use Case**: Use this snippet when you need just the URL, such as in image sources or custom HTML attributes.

   **Example**:
   ```markdown
   <img src="{{'images/logo.png' | relative_url}}">
   ```

2. **jlink** (Jekyll Markdown Link) - Creates a complete Markdown link:
   ```markdown
   [Link Text]({{'/' | relative_url}})
   ```
   **Use Case**: Use this snippet to create clickable Markdown links.

   **Example**:
   ```markdown
   [Read our process]({{'brand-identity-design-process' | relative_url}})
   ```

3. **jpost** (Jekyll Post Link) - Renders a complete post's URL:
   ```markdown
   [$1]({{ site.baseurl }}{% post_url 2023-10-01-my-post %})
   ```
   **Use Case**: Use this snippet to insert a link to a specific Jekyll post.

   **Example**:
   ```markdown
   [Check out our latest post]({{ site.baseurl }}{% post_url 2023-10-01-my-post %})
   ```

## Installation

1. Clone this repository or download the snippets file.
2. Open VS Code and go to `File > Preferences > User Snippets` or hit `Ctrl+Shift+P` and choose `Configure Snippets`.
3. A list of file types will open. Choose `Markdown`.
4. Choosing `Markdown` will open the snippet file `markdown.json`. 
5. Delete everything in the file. Copy and paste the snippets from the repository into the snippets file.
6. Close and save. Ignore any minor warnings.
7. You need to reload your vs-code/cursor window. So, hit `Ctrl+Shift+P` and find "reload window" option and select it.
8. The snippets are loaded and you can now use them in any `markdown` files.

## Usage

To use the snippets, simply type the prefix (`jurl`, `jlink`, or `jpost`) in your Markdown file and press `Tab`. If `Tab` doesn't work, presss `Ctrl+Spacebar`. The snippet will expand, and you can fill in the placeholders as needed.

## Example

Here’s how you can use the snippets in a Jekyll Markdown file:

```markdown
# Using jurl
<img src="{{'images/logo.png' | relative_url}}">

# Using jlink
[Read our process]({{'brand-identity-design-process' | relative_url}})

# Using jpost
[Check out our latest post]({{ site.baseurl }}{% post_url 2023-10-01-my-post %})
```

## Contributing

Feel free to contribute to this repository by adding more useful snippets or improving the existing ones. Open an issue or submit a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
