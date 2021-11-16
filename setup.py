from setuptools import find_packages, setup

setup(name='dbt-sample',
      version='0.1',
      packages=find_packages(),
      install_requires=[
          "dbt",
      ],
      extra_require={
          "dev": [
              "pre-commit",
              "black",
              "flake8",
          ]
      }
      )