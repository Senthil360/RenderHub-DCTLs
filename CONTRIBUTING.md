# Contributing to RenderHub DCTLs

Thank you for your interest in supporting and improving RenderHub tools! 

To ensure the technical stability and intellectual property integrity of the tools, **the core DCTL implementations and compiled binaries are maintained exclusively by the author**. 

However, community contributions around documentation, real-world workflows, color science resources, and feedback are vital to making these tools better for every colorist.

---

## Ways to Contribute

### 1. Documentation & Color Science Guides
* **Mathematical & Theoretical Clarifications:** Improving explanations of color science concepts, tone mapping formulas, or gamut operations in the `/docs` folder.
* **Workflow Guides:** Submitting step-by-step guides, DaVinci Resolve node tree setups, or color management best practices (ACES, DWG, DaVinci YRGB Color Managed).
* **Translations & Formatting:** Fixing typos, improving clarity, or translating guides into other languages.

### 2. Feedback, Bug Reports & Edge Cases
If you encounter unexpected behavior, color artifacts, or clipping:
1. Check the [Issues](../../issues) tab to see if the issue has already been reported.
2. Open a new issue including:
   * **Host Details:** DaVinci Resolve version (Free/Studio), OS (macOS/Windows/Linux), and GPU hardware.
   * **Timeline Settings:** Color science setting (e.g., DaVinci Wide Gamut/Intermediate, ACEScc), timeline working color space, and output transform.
   * **Steps to Reproduce:** Node order, tool settings, and sample screenshots/scopes if applicable.

### 3. Feature Requests & Tool Ideas
Have an idea for a parameter, a new curve response, or an entirely new grading utility? 
* Open a discussion or feature request in [Issues](../../issues) detailing the practical use case, expected visual behavior, and the problem it solves in a live grading session.

### 4. Articles & Educational Resources
* If you write an article, produce a video tutorial, or create a public case study using RenderHub DCTLs, submit a PR to add your resource to our community list in the `README.md`.

---

## Contribution Workflow (Docs & Resources)

1. **Fork the Repository:** Create your own fork of `RenderHub-DCTLs`.
2. **Create a Branch:** `git checkout -b docs/improving-gamut-guide`
3. **Make Your Changes:** Add or update markdown files in `/docs` or `/guides`.
4. **Submit a Pull Request:** Open a PR against the `main` branch with a clear summary of your additions or edits.

---

## Code & Binary Policy

* **Implementation Code:** Pull requests proposing direct changes to the proprietary DCTL source or encrypted binaries will not be accepted.
* **Independent Implementations:** If you build your own independent tools based on the public color-science theory documented here, we encourage you to share your project links with the community!
