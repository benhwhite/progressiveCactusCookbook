[![Build Status](https://travis-ci.org/EagleGenomics-cookbooks/progressiveCactus.svg?branch=master)](https://travis-ci.org/EagleGenomics-cookbooks/progressiveCactus)

# progressiveCactus

Description
===========
This Cookbook installs progressiveCactus, a tool for whole-genome alignments.

Requirements
============

## Platforms:

* Centos 7.2
* Ubuntu 14.04

Notes
=====

No notes.

Usage
=====
Simply include the recipe wherever you would like it installed, such as a run list (recipe[progressiveCactus]) or a cookbook (include_recipe 'progressiveCactus')


## Testing
To test the recipe we use chef test kitchen:

kitchen converge

kitchen login

kitchen verify

kitchen destroy

kitchen test

Attributes
==========
See attributes/default.rb for default values.

License and Authors
===================

* Authors:: Benjamen H White (<ben.white@eaglegenomics.com>)

Copyright:: 2017, Eagle Genomics Ltd

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
