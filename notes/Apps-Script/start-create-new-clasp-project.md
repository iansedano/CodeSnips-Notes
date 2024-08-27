## Prerequisite

- `npm install -g @google/clasp`

## Start new clasp project

- Create project folder, `cd` into it
- Initialize new npm project with `npm i`
- Create new script and get script ID
  - for standalone script at https://script.google.com/home
  - for linked, create from sheet/doc/slide (for editor UI menus, etc)
- `clasp clone "<SCRIPT_ID>"`
- `npm install @types/google-apps-script` (if you want typescript, if you do,from here on never `pull` always `clasp push`)

## Clone existing clasp project

- Clone Git repository
- Initialize existing npm project with `npm i` to install deps
- Set up clasp project `clasp clone <SCRIPT_ID>`, this will mess up the files, probably deleting all of them
- Reset the Git repo `git reset --hard` to recover previous state
- Delete any files that are untracked by Git