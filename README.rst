============
smart-quotes
============
Smart quotes minor mode for GNU Emacs
by Gareth Rees <http://garethrees.org/>.


Installation and configuration
------------------------------
Add ``smart-quotes.el`` to your ``load-path`` and the following to your ``.emacs``::

    (require 'smart-quotes)

To turn on smart quotes minor mode in all text mode buffers, use::

    (add-hook 'text-mode-hook #'(lambda () (smart-quotes-mode 1)))


Usage
-----
Type ``M-x smart-quotes-mode RET`` to toggle smart quotes minor
mode. When smart quote minor mode is turned on, you can type an
apostrophe ``'`` to insert a left or right single quotation mark
(depending on the context), and double quotes ``"`` to insert a left or
right double quotation mark.

The choice of left or right quotation mark depends on the variable
``smart-quotes-left-context``. This is a regular expression matching the
context in which a left quotation mark will be inserted. A right
quotation mark will be inserted in all other contexts. This variable can
be customized.


License
-------
Smart quotes minor mode is free software: you can redistribute it and/or
modify it under the terms of the GNU General Public License as published
by the Free Software Foundation, either version 3 of the License, or (at
your option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the `GNU
General Public License`_ for more details.


.. _GNU General Public License: http://www.gnu.org/copyleft/gpl.html
