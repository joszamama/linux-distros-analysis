# Use Ubuntu Bionic as the base image
FROM ubuntu:18.04

# Update the package repository and install the necessary packages
RUN apt-get update && apt-get install -y apt-utils

# Run the command to list all packages
RUN apt-cache dumpavail | awk '/^Package:/ { package = $2 } /^Description:/ { description = $0 } /^Section:/ { section = $2 } /^Version:/ { version = $2 } /^Architecture:/ { architecture = $2 } /^Priority:/ { priority = $2 } /^Essential:/ { essential = $2 } /^Build-Essential:/ { build_essential = $2 } /^Important:/ { important = $2 } /^Maintainer:/ { maintainer = $2 } /^Original-Maintainer:/ { original_maintainer = $2 } /^Size:/ { size = $2 } /^Installed-Size:/ { installed_size = $2 } /^Depends:/ { sub(/^Depends: /, ""); depends = $0 } /^Pre-Depends:/ { sub(/^Pre-Depends: /, ""); pre_depends = $0 } /^Recommends:/ { sub(/^Recommends: /, ""); recommends = $0 } /^Conflicts:/ { sub(/^Conflicts: /, ""); conflicts = $0 } /^Suggests:/ { sub(/^Suggests: /, ""); suggests = $0 } /^Breaks:/ { sub(/^Breaks: /, ""); breaks = $0 } /^Replaces:/ { sub(/^Replaces: /, ""); replaces = $0 } /^Provides:/ { sub(/^Provides: /, ""); provides = $0 } /^Enhances:/ { sub(/^Enhances: /, ""); enhances = $0 } /^$/ { printf "Package: %s\nDescription: %s\nSection: %s\nVersion: %s\nArchitecture: %s\nPriority: %s\nEssential: %s\nBuild-Essential: %s\nImportant: %s\nMaintainer: %s\nOriginal-Maintainer: %s\nSize: %s\nInstalled-Size: %s\nDepends: %s\nPre-Depends: %s\nRecommends: %s\nConflicts: %s\nSuggests: %s\nBreaks: %s\nReplaces: %s\nProvides: %s\nEnhances: %s\n\n", package ? package : "Null", description ? description : "Null", section ? section : "Null", version ? version : "Null", architecture ? architecture : "Null", priority ? priority : "Null", essential ? essential : "False", build_essential ? build_essential : "False", important ? important : "Null", maintainer ? maintainer : "False", original_maintainer ? original_maintainer : "Null", size ? size : "Null", installed_size ? installed_size : "Null", depends ? depends : "Null", pre_depends ? pre_depends : "Null", recommends ? recommends : "Null", conflicts ? conflicts : "Null", suggests ? suggests : "Null", breaks ? breaks : "Null", replaces ? replaces : "Null", provides ? provides : "Null", enhances ? enhances : "Null" }' > /ubuntu-bionic-packages.txt


# Export the generated file outside the container
VOLUME /ubuntu-bionic-packages.txt:/ubuntu-bionic-packages.txt

# Specify the default command to run when the container starts
CMD ["cat", "/ubuntu-bionic-packages.txt"]