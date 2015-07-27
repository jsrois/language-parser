

defineTest(copyFiles) {
    files = $$1 # first argument is a list of files
    DDIR  = $$2 # second is a destination directory

    # first we create the destination dir
    QMAKE_POST_LINK += $$QMAKE_MKDIR $$quote($$DDIR) $$escape_expand(\\n\\t)

    # second we copy 'em files
    for(FILE, files) {
        # Replace slashes in paths with backslashes for Windows
        win32:FILE ~= s,/,\\,g
        win32:DDIR ~= s,/,\\,g
        QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$FILE) $$quote($$DDIR)/ $$escape_expand(\\n\\t)
        #                                               TODO: add this ^ only if necessary
    }
    export(QMAKE_POST_LINK)
}
