const path = require('path');
const express = require('express');
const cookieParser = require('cookie-parser');
const helmet = require("helmet");
const hpp = require('hpp');
const cors = require('cors');
const fileUpload = require('express-fileupload');
const model = require('../model/connection');
const credentials = require('../middleware/credentials');
require('dotenv').config(); // Ensure environment variables are loaded

const routes = require('../routes');

const app = express();

app.use(fileUpload());
app.use(express.json()); // Used to parse JSON bodies
app.use(express.urlencoded({ extended: false })); // Parse URL-encoded bodies
// app.use(helmet({ crossOriginResourcePolicy: false }));
app.use(hpp());
app.use(cookieParser());
app.use(express.static('public'));

app.use(credentials);

// CORS configuration
const whitelist = ['http://127.0.0.1:3000', 'http://localhost:3000'];
if (process.env.FRONTEND_URL) {
  whitelist.push(process.env.FRONTEND_URL);
}

const corsOptions = {
  origin: function (origin, callback) {
    // Allow requests with no origin (like mobile apps, curl requests)
    if (!origin || whitelist.indexOf(origin) !== -1) {
      callback(null, true);
    } else {
      callback(new Error('Not allowed by CORS'));
    }
  }
};

app.use(cors(corsOptions));

// Controller-routes
routes.map(item => app.use(item.path, item.controller));

module.exports = app;
