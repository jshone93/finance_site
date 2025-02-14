const bcrypt = require("bcryptjs");

// The plain text password you want to hash
const password = "shone";

// Hash the password with bcrypt
const hashedPassword = bcrypt.hashSync(password, 10);

// Log the hashed password to the console
console.log("Hashed Password:", hashedPassword);
