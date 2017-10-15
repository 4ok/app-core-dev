const path = require('path');
const fs = require('fs');

const argv = process.argv;
const sourceFile = argv[2];
const varsFile = path.resolve(argv[3]);

// eslint-disable-next-line import/no-dynamic-require
const vars = require(varsFile);
const fileEncoding = 'utf8';
let content = fs.readFileSync(sourceFile, fileEncoding);

Object
    .keys(vars)
    .forEach(key => {
        const regExp = new RegExp('<' + key + '>', 'g');

        content = content.replace(regExp, vars[key]);
    });

// eslint-disable-next-line no-console
console.log(content);
