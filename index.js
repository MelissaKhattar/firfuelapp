// Import the express library
const express = require('express');
const path = require('path');

// Initialize the express application
const app = express();
const PORT = process.env.PORT || 8080;

// Serve the index.html file from the root directory
// The __dirname constant provides the absolute path to the directory containing this script.
app.use(express.static(path.join(__dirname, '')));

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
