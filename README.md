Yet another lua-mode that is suitable for luvit or any callback-based programming
====
Default emacs' lua-mode indents like this:

<pre>
local foo = function()
               print("Hello, world")
            end
</pre>
It takes too many indents, apparently corrupt..

Here you will get:
<pre>
local foo = function()
  print("Hello, world!")
end
</pre>

Nice, isnt it.

Put my-lua.el anywhere and append this:
<pre>
(add-hook 'lua-mode-hook 
          (lambda () (unless (fboundp 'lua-calculate-indentation-right-shift-next)
                       (load-file (locate-file "my-lua.el" load-path)))))
</pre>
in your .emacs .


Related discussions
====
See
[how to configure indentation in emacs lua-mode : stack overflow](http://stackoverflow.com/questions/4643206/how-to-configure-indentation-in-emacs-lua-mode)

In this repository it fixes the bug in above code.
