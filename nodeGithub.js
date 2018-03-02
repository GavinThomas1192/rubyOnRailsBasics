let readline = require("readline");
let sys = require("util");
let exec = require("child_process").exec;
let child;
let branch;
let rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

exec("git rev-parse --abbrev-ref HEAD", function(error, response) {
  branch = response;
  console.log("Fetching Current Head: " + response);
  if (error !== null) {
    console.log("exec error: " + error);
  }
  readyToCommit(branch);
});

readyToCommit = branch => {
  rl.question("Commit Message? ", function(answer) {
    exec("git add .", function(error, response) {
      console.log("Response: " + response);
      if (error !== null) {
        console.log("exec error: " + error);
      }
    });
    rl.close();

    exec(`git commit -m ${answer}`, function(error, response) {
      //   console.log("Git commit -m...: " + response);
      if (error !== null) {
        console.log("exec error: " + error);
      }
    });

    exec(`git push origin ${branch}`, function(error, response) {
      //   console.log("Response: " + response);
      if (error !== null) {
        console.log("exec error: " + error);
      }
    });
    console.log("----------------------");
    console.log(`Pushed changes to ${branch}`);
    console.log("----------------------");

    // console.log(`With this message ==>${answer}`);
  });
};

// executes `pwd`
