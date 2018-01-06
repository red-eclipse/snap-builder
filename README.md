# Red Eclipse Snap Builder
Tools for the generation of snapcraft projects to create Red Eclipse snaps.

## Prequisites
* Bash
* Snapcraft (`apt install snapcraft`)

## Usage
- Generate (or update) the snapcraft project for a branch by running `BRANCH=<master/stable> ./prepare.sh`
  - Other environment variables available are `BUILD=<build number>` to set the build number information (default 0) and `GRADE=<devel/stable>` to set the snap's grade.
- `cd build/<BRANCH>`
- `snapcraft`
