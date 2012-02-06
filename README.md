yet another lua-mode that corrects indentation of function()
====

I know you know default emacs' lua-mode is corrupt...



Put this my-lua.el to anywhere and append dot_emacs_to_append.

Essentialy:

<pre>
(add-hook 'lua-mode-hook 
          (lambda () (unless (fboundp 'lua-calculate-indentation-right-shift-next)
                       (load-file (locate-file "my-lua.el" load-path)))))
</pre>

Related discussions
====
See
[how to configure indentation in emacs lua-mode : stack overflow](http://stackoverflow.com/questions/4643206/how-to-configure-indentation-in-emacs-lua-mode)

In this repository it fixes the bug in above code.
