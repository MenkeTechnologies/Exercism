#!/usr/bin/env node

const fs = require('fs');

const args = process.argv.slice(2);
const OPTINDEX = args.findIndex(a => a[0] !== "-")
const flags = args.slice(0, OPTINDEX);
let pattern = args[OPTINDEX];
const files = args.slice(OPTINDEX + 1);

const matchEntire = flags.includes("-x");
const printFileNames = flags.includes("-l");
const addLines = flags.includes("-n");
const ignoreCase = flags.includes("-i");
const invert = flags.includes("-v");
if (ignoreCase) {
    pattern = pattern.toLowerCase();
}

const readLines = file => fs.readFileSync(file, {
    encoding: 'utf-8'
}).split(/\r?\n/);

const re = new RegExp(matchEntire ? `^${pattern}$` : `${pattern}`);

for (const file of files) {
    const lines = readLines(file);
    let fName = files.length > 1 ? file + ':' : '';

    for (const [j, line] of lines.entries()) {
        if (re.test(ignoreCase ? line.toLowerCase() : line) ^ invert) {

            if (printFileNames) {
                console.log(file);
                break;
            }
            const data = fName + (addLines ? (j + 1 + ':') : '') + line;
            console.log(data);
        }
    }
   

}
