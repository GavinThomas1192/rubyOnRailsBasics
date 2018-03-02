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
  console.log("calling readyToCommit");

  readyToCommit(branch);
});

readyToCommit = branch => {
  rl.question("Commit Message? ", function(answer) {
    exec("git add .", function(error, response) {
      console.log("Response from git add: " + response);
      if (error !== null) {
        console.log("exec error: " + error);
      }
      console.log("calling committing");
      committing(branch, answer);
      rl.close();
    });
  });
};

committing = (branch, answer) => {
  exec("git commit -m" + ` ${answer}`, function(error, response) {
    console.log("response from git commit: " + response);
    if (error !== null) {
      console.log("exec error: " + error);
    }
  });
  console.log("calling pushing");

  pushing(branch);
};

pushing = branch => {
  exec("git push origin" + ` ${branch}`, function(error, response) {
    console.log("Response from git push: " + branch + response);
    if (error !== null) {
      console.log("exec error: " + error);
    }
  });

  console.log("----------------------");
  console.log(`Pushed changes to ${branch}`);
  console.log("----------------------");
};

// executes `pwd`
