# This function commits and pushes

function push {
    param(
        $message
    )
    git commit -m $message
    git push . local:master
    git push origin master
}
