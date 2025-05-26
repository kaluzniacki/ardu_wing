# Workflow

I'll stay in MarkDown.  
TODO - make the pdf conversion part of CICD.


## Document organization
I'm still struggling with how to best take notes and organize this document.

I have the goals section - 
- Sim to practice - 
- Aircraft w/ blackbox that I can fly and collect data from.
- Autopilot that I can use for "missions"
- Document how to set up and fly a mission.

But should I stay in MD?
Should I publish with pandoc to latex and pdf?
What about my illustrations?
Should I use WORD?
Should I keep sections in separate files?


# Grok response

Organizing your document and notes effectively depends on your goals, workflow, and how you plan to use or share the document. Below, I’ll address your questions and provide recommendations tailored to your stated goals (sim practice, aircraft with blackbox, autopilot for missions, and documenting setup/flying missions). I’ll aim for clarity and brevity while covering each point.

### 1. Should I Stay in Markdown (MD)?
**Recommendation: Stick with Markdown for most of your workflow, with some caveats.**

- **Pros of Markdown**:
  - Lightweight, plain text, and version-control friendly (e.g., Git).
  - Easy to write and structure with headers, lists, and tables.
  - Flexible for conversion to other formats (PDF, HTML, LaTeX) using tools like Pandoc.
  - Works well for technical documentation, which aligns with your goal of documenting setup and mission flying.
  - Many editors (Obsidian, Typora, VS Code) support Markdown with live previews and plugins for organization.

- **Cons**:
  - Limited for complex formatting or illustrations without additional tools.
  - May require extra steps to produce polished outputs (e.g., PDF with Pandoc).

- **When to Use Markdown**:
  - For drafting, organizing notes, and maintaining a source document.
  - If you value simplicity and want to keep everything in plain text.
  - If you plan to use Git or sync across devices.

- **Alternatives**:
  - If Markdown feels too restrictive for illustrations or formatting, consider a hybrid approach (see below for Word or LaTeX).

### 2. Should I Publish with Pandoc to LaTeX and PDF?
**Recommendation: Use Pandoc to convert Markdown to LaTeX/PDF for final output, but keep your source in Markdown.**

- **Why Pandoc + LaTeX/PDF?**
  - Pandoc is excellent for converting Markdown to professional-looking PDFs via LaTeX.
  - LaTeX produces high-quality, polished documents, ideal for technical documentation with equations, diagrams, or structured layouts.
  - You can automate the conversion process with scripts or Makefiles.
  - PDFs are shareable and widely accessible.

- **Workflow**:
  - Write and organize in Markdown.
  - Use Pandoc to convert to LaTeX/PDF when you need a final version (e.g., `pandoc input.md -o output.pdf --pdf-engine=xelatex`).
  - Customize LaTeX templates for styling (e.g., fonts, margins, headers).
  - Test conversions early to ensure your Markdown syntax (e.g., tables, images) works with Pandoc.

- **Caveats**:
  - LaTeX setup can be complex (installing a LaTeX distribution like TeX Live).
  - Debugging LaTeX errors may take time.
  - If your audience doesn’t need PDFs, consider HTML output instead (Pandoc supports this too).

### 3. What About My Illustrations?
**Recommendation: Create illustrations separately and embed them in Markdown, with considerations for final output.**

- **Creating Illustrations**:
  - Use tools like:
    - **Diagrams**: Draw.io (free, exports PNG/SVG), Inkscape (vector graphics), or TikZ (LaTeX-based for precise technical diagrams).
    - **Flight Data Visuals**: Python (Matplotlib/Plotly) or R for graphs, exported as PNG/SVG.
    - **Screenshots/Sim Visuals**: Capture from your sim software, annotate in GIMP or Photoshop.
  - Save illustrations in high-resolution PNG or SVG for flexibility.

- **Embedding in Markdown**:
  - Use standard Markdown image syntax: `![Alt text](path/to/image.png)`.
  - Store images in a subfolder (e.g., `images/`) to keep your project organized.
  - Ensure relative paths work for portability (e.g., `![Blackbox diagram](images/blackbox.png)`).

- **For LaTeX/PDF**:
  - Pandoc handles PNG/JPG well in LaTeX output.
  - For vector graphics, use SVG or PDF images (convert SVG to PDF with Inkscape if needed).
  - Test image scaling in your LaTeX template to avoid distortion.

- **For Other Formats**:
  - If you switch to Word, import images manually or use a Markdown-to-Word converter (Pandoc supports `.docx` output).
  - Ensure images are high-resolution for print-quality outputs.

### 4. Should I Use Word?
**Recommendation: Avoid Word unless you need specific features or your audience requires it.**

- **Pros of Word**:
  - Familiar interface for non-technical users.
  - Good for complex formatting, tables, and inline image adjustments.
  - Native support for comments, track changes, and collaboration.

- **Cons**:
  - Not version-control friendly (binary files are harder to track in Git).
  - Can be clunky for technical documentation with code or equations.
  - Less flexible for converting to other formats compared to Markdown.
  - Prone to formatting inconsistencies across devices.

- **When to Use Word**:
  - If your audience (e.g., a client or team) expects `.docx` files.
  - If you need heavy collaboration with non-technical users who use Word.
  - If illustrations require precise placement that Markdown/LaTeX struggles with.

- **Hybrid Approach**:
  - Write in Markdown for drafting and organization.
  - Use Pandoc to convert to `.docx` for final edits in Word (`pandoc input.md -o output.docx`).
  - Adjust illustrations and formatting in Word as needed.

### 5. Should I Keep Sections in Separate Files?
**Recommendation: Use separate Markdown files for sections, organized in a project folder.**

- **Why Separate Files?**
  - Easier to manage large documents (one file per goal or topic, e.g., `sim_practice.md`, `blackbox_setup.md`, `autopilot_missions.md`, `mission_guide.md`).
  - Simplifies version control (track changes per section).
  - Allows modular editing without scrolling through a massive file.
  - Pandoc can combine multiple Markdown files into one output (e.g., `pandoc *.md -o output.pdf`).

- **Project Structure Example**:
  ```
  project/
  ├── notes/
  │   ├── sim_practice.md
  │   ├── blackbox_setup.md
  │   ├── autopilot_missions.md
  │   ├── mission_guide.md
  ├── images/
  │   ├── blackbox_diagram.png
  │   ├── mission_path.svg
  ├── output/
  │   ├── document.pdf
  │   ├── document.docx
  ├── README.md
  └── pandoc_template.tex
  ```

- **Combining Files**:
  - Use a master Markdown file to include sections (e.g., `main.md` with `!include(section.md)` in some editors, or concatenate files manually).
  - Or let Pandoc combine files in order: `pandoc section1.md section2.md -o output.pdf`.

- **Note-Taking Integration**:
  - Use a tool like Obsidian to link Markdown files and create a knowledge graph for your notes.
  - Tag files (e.g., `#sim #blackbox`) for easy searching.
  - Keep raw notes in a `notes/` subfolder and polished sections in the main directory.

### Additional Tips for Your Goals
- **Sim Practice**: Document workflows as step-by-step lists in Markdown. Include screenshots or videos (host videos online and link them).
- **Blackbox Aircraft**: Create diagrams of the blackbox system and data flow. Log data in CSV/JSON and visualize with Python scripts, embedding results as images.
- **Autopilot Missions**: Write mission templates as code blocks in Markdown (e.g., pseudo-code or actual autopilot configs). Include example mission logs.
- **Mission Setup Guide**: Structure as a tutorial with clear headings (e.g., “Hardware Setup”, “Software Config”, “Flight Checklist”). Use tables for settings or parameters.

### Final Workflow Suggestion
1. **Draft in Markdown**:
   - Use separate `.md` files for each section.
   - Store in a Git repository for version control.
   - Use Obsidian or VS Code for editing and linking notes.

2. **Manage Illustrations**:
   - Create diagrams in Draw.io or TikZ, export as PNG/SVG.
   - Embed in Markdown with relative paths.
   - Store in an `images/` folder.

3. **Organize Notes**:
   - Tag and link notes in Obsidian for easy navigation.
   - Keep raw notes separate from polished sections.

4. **Publish**:
   - Use Pandoc to convert Markdown to PDF via LaTeX for polished output.
   - Optionally convert to `.docx` for Word users.
   - Test outputs early to catch formatting issues.

5. **Backup and Sync**:
   - Use Git (GitHub/GitLab) for version control.
   - Sync with cloud storage (e.g., Dropbox) for access across devices.

### Tools to Consider
- **Markdown Editors**: Obsidian (knowledge graph), Typora (WYSIWYG), VS Code (extensions).
- **Pandoc**: For converting Markdown to PDF, LaTeX, or Word.
- **LaTeX**: TeX Live or Overleaf (online) for PDF output.
- **Illustration Tools**: Draw.io, Inkscape, TikZ, Matplotlib.
- **Version Control**: Git with GitHub or GitLab.

### If You’re Still Unsure
- Start with Markdown and separate files to keep things simple.
- Experiment with Pandoc for a small section to see if LaTeX/PDF meets your needs.
- If illustrations are a major focus, test embedding a few in Markdown and converting to PDF/Word to ensure quality.
- If Word becomes necessary, use it only for final polishing after drafting in Markdown.

If you have specific constraints (e.g., audience preferences, illustration complexity, or tool familiarity), let me know, and I can refine the recommendations further!