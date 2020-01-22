name: Flake8 on PR

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: Run a one-line script
      run: echo Hello, world!
    - name: Run a multi-line script
      run: |
        echo Add other actions to build,
        echo test, and deploy your project.
    - name: Run flake8 on your PR - with annotations!
      uses: tayfun/flake8-your-pr@1.0.1
      with:
        GITHUB_TOKEN: ${{ secrets.MY_GITHUB_TOKEN }}
      env:
        GITHUB_TOKEN: ${{ secrets.MY_GITHUB_TOKEN }}
      
