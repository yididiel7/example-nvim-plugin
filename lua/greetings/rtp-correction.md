# However, this didn't work for me, so I found a solution where you instead open nvim with

```$ nvim -c "set rtp+=."```

This works because according the "man nvim", you'll notice that --cmd runs BEFORE any vimrc, 
so it probably gets overridden. -c runs after reading the file, so it takes precedence.

At 3:45, after entering nvim, check that the current directory is in the rtp using the vim command 


```:echo &rtp```

 ":echo &rtp".
 
In the output you should see a dot representing the current directory.
