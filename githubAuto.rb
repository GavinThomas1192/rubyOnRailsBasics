
def github_auto
    commit_answer = ''
    print "Commit Message?"
    commit_answer = gets.chomp

    `git add .`
    `git commit -m "#{commit_answer}"`
    `git push origin master`
end

github_auto