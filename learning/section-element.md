HTML5: The Section Element
==========================

[HTML5 Doctor](http://www.html5doctor.com/the-section-element/)

The spec says:

<blockquote>
The section element represents a generic document or application section... The section element is not a generic container element. When an element is needed only for styling purposes or as a convenience for scripting, authors are encouraged to use the div element instead.
</blockquote>

Rules of thumb for using section
--------------------------------

* Don't use it just as a hook for styling or scripting: that's a `div`
* Don't use it if `article`, `aside`, or `nav` is more appropriate
* Don't use it unless there is naturally a heading at the start of the section

<blockquote>
Authors are encouraged to use the article element instead of the section element when it would make sense to syndicate the contents of the element.
</blockquote>


