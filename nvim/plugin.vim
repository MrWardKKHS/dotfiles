fin! Scratch(cmd)
        new 
        setlocal nobuflisted buftype=nofile bufhidden=delete
        let output = call systemlist(a:cmd)
        call append(0, l:output)
endfun
