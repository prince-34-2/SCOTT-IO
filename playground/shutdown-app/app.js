const { exec } = require("child_process");
const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Do you want to shutdown the PC? (yes/no): ", function(answer) {

  if (answer.toLowerCase() === "yes") {
      console.log("Shutting down...");
      exec("shutdown /s /t 0");
  } else {
      console.log("Shutdown cancelled.");
  }

  rl.close();
});