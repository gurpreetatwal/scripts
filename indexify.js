'use strict';

/* eslint-disable */

const fs = require('fs');
const _ = require('lodash');
const path = require('path');

const dir = path.resolve(process.argv[2]);

const files = fs
  .readdirSync(dir)
  .filter(file => path.extname(file) === '.json');

const header = `/* eslint-disable global-require */
'use strict';

const responses = {
`;

const footer = `
};

module.exports = responses;
`;

const out = header + files.map(function(file) {
  return `  ${_.camelCase(file.replace('json', ''))}: require('./${file}'),`;
}).join('\n') + footer;

fs.writeFileSync(path.join(dir, 'index.js'), out);
