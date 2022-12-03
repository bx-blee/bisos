;;; bisos.el --- Elisp Interface To BISOS  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Main Package File. But core documentation is in [[file:bmr-model.el]].
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/copyLeftPlus :outLevel 1
(orgCmntBegin "
* Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/authors :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/orgTopControls :outLevel 1
(orgCmntBegin "
*  ~ORG-TOP-CONTROLS-COME-HERE~
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* Relevant Panels:
** [[file:/bisos/panels/blee-core/mail/Gnus/_nodeBase_/fullUsagePanel-en.org]]
* Planned Improvements:
" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(require 'loop)
(require 'b-shell)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defvar b:pkg:bisos:version "0.1"
   " #+begin_org
** =b:pkg:bisos:version= version number of the entirety of ua-abstract.
#+end_org "
  )

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Blee Package Information" :extraInfo "Canonical"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Blee Package Information_: |]]  Canonical  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:pkg:bisos/version"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:pkg:bisos|version>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:pkg:bisos/version (
;;;#+END:
                                )
   " #+begin_org
** DocStr: bisos package version number.
#+end_org "
   (interactive)
   b:pkg:bisos:version)

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:pkg:bisos/version)
#+END_SRC

#+RESULTS:
: 0.1

" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Concept: <<Manifest Activation>>" :extraInfo "Based on file/s to load"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Concept: Manifest Activation_: |]]  Based on file/s to load  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:
(orgCmntBegin "
List of files specified in:
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "bisos:bpo|givenPathObtainBpoId"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<bisos:bpo|givenPathObtainBpoId>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun bisos:bpo|givenPathObtainBpoId (
;;;#+END:
                                        <inPath)
   " #+begin_org
** DocStr:
#+end_org "
   (b:func$entry)
   (b:shell-command-to-string|cleansed
    (s-lex-format "bpoManage.cs -i forPathObtainBpoId ${<inPath}")))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(bisos:bpo|givenPathObtainBpoId (symbol-name '~/bpos/usageEnvs/fullUse/aas))
#+END_SRC

#+RESULTS:
: piu_mbFullUsage

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "bisos:bpo|baseDirObtain"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<bisos:bpo|baseDirObtain>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun bisos:bpo|baseDirObtain (
;;;#+END:
                                <bpoId)
   " #+begin_org
** DocStr:
#+end_org "
   (b:func$entry)
   (b:shell-command-to-string|cleansed
    (s-lex-format "bpoManage.cs --bpoId=\"${<bpoId}\" -i bpoBaseDirObtain")))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(bisos:bpo|baseDirObtain (symbol-name 'piu_mbFullUsage))
#+END_SRC

#+RESULTS:
: /bxo/iso/piu_mbFullUsage

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "bisos:aas:marmee:manage|fpParamGetWithName"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<bisos:aas:marmee:manage|fpParamGetWithName>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun bisos:aas:marmee:manage|fpParamGetWithName (
;;;#+END:
                                                   <fpBase <cls <fpName)
   " #+begin_org
** DocStr:
#+end_org "
   (b:func$entry)
   (b:shell-command-to-string|cleansed
    (s-lex-format
     "aasMarmeeManage.cs --fpBase=\"${<fpBase}\" --cls=\"${<cls}\" -i fpParamGetWithName ${<fpName}")))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(bisos:aas:marmee:manage|fpParamGetWithName
  (symbol-name '/bxo/iso/piu_mbFullUsage/aas/marmee/gmail/svcInstanceName/control/inMail/fp)
  (symbol-name 'AasInMail_FPs)
  (symbol-name 'userName)
 )
#+END_SRC

#+RESULTS:
: svcInstanceName

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "bisos:aas:marmee:offlineimap|maildirPath"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<bisos:aas:marmee:offlineimap|maildirPath>>   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun bisos:aas:marmee:offlineimap|maildirPath (
;;;#+END:
                                                   <bpoId <envRelPath)
   " #+begin_org
** DocStr:
#+end_org "
   (b:func$entry)
   (b:shell-command-to-string|cleansed
    (s-lex-format
     "marmeeOfflineimap.cs --bpoId=\"${<bpoId}\" --envRelPath=\"${<envRelPath}\" -i offlineimapMaildirPath")))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(bisos:aas:marmee:offlineimap|maildirPath
  (symbol-name 'piu_mbFullUsage)
  (symbol-name 'aas/marmee/gmail/mohsen.byname)
 )
#+END_SRC

#+RESULTS:
: svcInstanceName

" orgCmntEnd)




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'bisos)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
