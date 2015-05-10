var fs = require('fs');
var config = require('./config');

// Setup symbolic links for dotfiles node
var addSymLink = function(sourceFile, destinationPath, force) {
    var destination = destinationPath + '/' + sourceFile;
    var source = config.dotFilesPath + '/' + sourceFile;

    fs.symlink(source, destination, function(error) {
        if (error) {

            // Remove the symlink, and try again
            if (error.code === 'EEXIST') {
                if (force) {
                    removeSymLink(sourceFile, destinationPath, function() {
                        addSymLink(sourceFile, destinationPath);
                    });
                } else {
                    console.log('! ' + destination + ' symlink already exists');
                }
                return;
            } else {
                // log error
                console.error(error);
                return;
            }
        } else {
            // Log the symlinked file
            console.log('+ ' + source + ' => ' + destination);
        }
    });
};

var removeSymLink = function(sourceFile, destinationPath, callback) {
    var destination = destinationPath + '/' + sourceFile;

    fs.unlink(destination, function(error) {
        console.log('- ' + destination + ' has now been unlinked');

        if (callback) {
            callback();
        }
    });
};

module.exports = {
    add: addSymLink,
    remove: removeSymLink
};
