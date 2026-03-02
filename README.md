# Introduction

This is a Gentoo overlay with ebuilds for FPGA toolchains. You can add the repository as follows:

```
eselect repository add fpga-overlay git https://github.com/StephanvanSchaik/fpga-overlay.git
emaint sync -r fpga-overlay
```

# Contributing

To contribute to this repository you can fork and clone it. Edit the ebuilds and metadata.xml files in the repository. After you have finished editing your files, you can generate a manifest using:

```
pkgdev manifest
```

Also make sure to check and fix any common warnings/errors:

```
pkgcheck scan
```

Commit your files, push the commit to your local fork and open a pull request.
