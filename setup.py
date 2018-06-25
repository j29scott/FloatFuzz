#!/usr/bin/env python3

import os

from setuptools import setup, find_packages

setup(
    name         = 'floatfuzz',
    version      = '0.1',
    description  = 'Fuzzer for SMTLIB 2.x solvers.',
    author       = 'Federico Mora, Joe Scott',
    author_email = 'fmora@cs.toronto.edu',
    url          = 'https://github.com/FedericoAureliano/FloatFuzz',
    scripts      = [
        'bin/floatfuzzg',
    ],
    packages     = find_packages(),
    package_dir  = {
        'floatfuzz': 'floatfuzz',
    },
)