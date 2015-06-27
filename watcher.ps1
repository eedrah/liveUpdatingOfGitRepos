# This watches the master branch for changes

function watch {
    function getRemoteSha {
        return (git ls-remote origin master).split()[0]
    }

    $sha = ""

    while($true){
        $remoteSha = getRemoteSha
        if($sha -ne $remoteSha){
            $sha = $remoteSha
            git pull origin master:master
            git merge master
        }
        sleep 1
    }
}
