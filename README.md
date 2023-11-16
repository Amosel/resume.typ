# Typst Resume Template

<p align="center">
  <a href="LICENSE">
    <img alt="Apache-2 License" src="https://img.shields.io/badge/license-Apache%202-brightgreen"/>
  </a>
</p>

Resume template for [Typst](https://github.com/typst/typst) that uses a YAML file for data input in order to version control Resume data easily.

This is based on the [popular template on Reddit](https://web.archive.org/https://old.reddit.com/r/jobs/comments/7y8k6p/im_an_exrecruiter_for_some_of_the_top_companies/) by [u/SheetsGiggles](https://web.archive.org/https://old.reddit.com/user/SheetsGiggles) and the recommendations of the [r/EngineeringResumes wiki](https://web.archive.org/https://old.reddit.com/r/EngineeringResumes/comments/m2cc65/new_and_improved_wiki).

## Usage

`resume.typ` is intended to be used by importing the `resumne.typ` file from a "content"
file (see [`resume.typ`](resume.typ) as an example). In this content file,
call the functions which apply document styles, show resume components, and load resume
data from a YAML file (see [`resume.yml`](resume.yml) as an example). Inside
the content file you can modify several style variables and even override
existing function implementations to your own needs and preferences.

### With [Typst CLI](https://github.com/typst/typst) (Recommended)

The recommended usage with Typst CLI is by adding this `resume.typ` repository as a [git
submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules). This way, upstream changes can be
pulled easily.

```
<your-resume-repo>/
├── resume.typ/ // git submodule 
|   └── resume.typ
├── <your-resume-content>.typ // #import "resume.typ/resume.typ": *
└── <your-resume-data>.yml
```

1. Add [amosel/resume.typ](https://github.com/amosel/resume.typ) as git submodule.
into your resume's repo.

  ```
  git submodule add https://github.com/amosel/resume.typ
  ```

2. Copy and rename `resume.typ` and `resume.yml` to your resume's repo root directory. Use these files
   as template/starting point for your resume.

3. Run the following to command to automatically recompile your resume file on changes.

  ```bash
  typst watch <your-resume-content>.typ
  ```

### With [typst.app](https://typst.app)

1. Upload the [`resume.typ`](resume.typ), [`utils.typ`](utils.typ), [`resume.typ`](resume.typ). and
   [`resume.yml`](resume.yml) files to your Typst project. You may rename `resume.typ` and
   `resume.yml`.
2. Use `resume.typ` and `resume.yml` (or whatever the names after you rename it) as a
   template/starting point for your Resume.
