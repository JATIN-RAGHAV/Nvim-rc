return{
        settings = {
                ['rust-analyzer'] = {
                        cargo = {
                                loadOutDirsFromCheck = true,
                        },
                        checkOnSave = {
                                command = "check"
                        },
                        files = {
                                -- This enables standalone files support
                                excludeDirs = {},
                        },
                },
        }
}
