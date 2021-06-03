// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)


const cellArray = Array.from(document.querySelectorAll('.info'));
cellArray.forEach(function(node, idx) {
   node.addEventListener("click", (event) => {
    console.log("hello");
    event.currentTarget.classList.add("actived");
  });
});
