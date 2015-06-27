# This function commits and pushes

function push {
    param(
        $message
    )
    git commit -m $message
    git push origin head:master
}
