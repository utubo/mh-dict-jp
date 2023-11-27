'use strict';

/**
 * @fileOverview Conver tsv file to skk-jisyo.
 * Usage:
 *   node tsv2skk.js foo.tsv SKK-JISYO.bar
 */

const fs = require('fs');
const src = process.argv[2];
const dist = process.argv[3];

const items = {}
for (const l of fs.readFileSync(src, 'utf8').split(/\n/)) {
  const line = l.trim();
  if (!line || line.startsWith('#') || line.startsWith('//')) continue;
  const values = line.split('\t');
  const key = values[0];
  const value = values[1];
  if (!value) continue;
  items[key] = items[key] || [];
  items[key].push(value);
}

const newLines = []
for (const key in items) {
  const values = Array.from(new Set(items[key])).sort();
  newLines.push(`${key} /${values.join('/')}/`);
}
fs.writeFileSync(dist, newLines.sort().join('\n'), 'utf8')

