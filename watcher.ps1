# This watches the master branch for changes

function watch {
    $sha = git rev-parse master

    while($true){
        if($sha -ne (git rev-parse master)){
            $sha = git rev-parse master
            git merge master
        }
        sleep 1
    }
}