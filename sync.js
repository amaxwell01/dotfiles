var fs = require('fs');

var symlink = require('./symlink');
var config = require('./config');
var userImports = process.argv;
var args = [];
var force = false;

for (var i = 2; i < userImports.length; i++) {
    args.push(userImports[i]);
}

// get the list of files from dotfiles folder
// Only things which should be linked, should be in this folder
fs.readdir(config.dotFilesPath, function(error, files) {
    if (error) {
        console.error(error);
        return;
    }

    if (args.length && args[0] === 'remove') {
        files.forEach(function(value, key) {
            symlink.remove(value, config.homePath);
        });
    } else {
        force = (args[0] === 'add' && args[1] === 'force') ? true : false;
        files.forEach(function(value, key) {
            symlink.add(value, config.homePath, force);
        });
    }
});
