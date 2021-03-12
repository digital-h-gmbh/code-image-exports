# Custom Code Exports

This project allows for generating images of code with Digital H branded syntax highlighting. It builds upon `bat` and `silicon`.

## Installation

You need to install `bat` and `silicon`:

1. Install [bat](https://github.com/sharkdp/bat)
2. Install [Silicon](https://github.com/Aloxaf/silicon)
3. Clone this repository

## Usage

Within the project folder, do the following:

```
chmod +x generate.sh
```

```
./generate.sh /path/to/codefile /output/path
```

You can test the script with the following command:

```
./generate.sh ./test/test.tsx ./test/output.png
```

## Customization

If you want to customize the output, take a look at the `silicon` documentation and change the parameters of the last command in `generate.sh` accordingly.

## Syntax highlighting

If syntax highlighting does not work, refer to the [bat documentation](https://github.com/sharkdp/bat#adding-new-syntaxes--language-definitions)
