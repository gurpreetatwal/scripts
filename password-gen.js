"use strict";

const crypto = require("crypto");

const length = 60;
const set =
  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!&#$^<>-";

let password = "";
for (let i = 0; i < length; i++) {
  const byte = crypto.randomBytes(1).toString("hex");
  const n = parseInt(byte, 16);
  password += set[n % set.length];
}

console.log(password);
