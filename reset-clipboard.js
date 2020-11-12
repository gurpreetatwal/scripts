javascript: (function () {
  document.oncontextmenu = null;
  document.ondragstart = null;
  document.onkeydown = null;
  document.keypress = undefined;
  document.body.onselectstart = null;
  document.body.style.MozUserSelect = '';
  document.body.style.cursor = '';
  document.body.mousedown = undefined;
  const allowPaste = function (e) {
    e.stopImmediatePropagation();
    return true;
  };
  document.addEventListener('paste', allowPaste, true);
})();
