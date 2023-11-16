.PHONY: watch compile

ifeq ($(OS),Windows_NT)
    # Windows
    watch:
		@PowerShell -Command "typst watch resume.typ --root ."

    compile:
		@PowerShell -Command "typst compile resume.typ"
else
    # WSL or Unix-like system
    watch:
		@bash -c "typst watch resume.typ --root ."

    compile:
		@bash -c "typst compile resume.typ"
endif
