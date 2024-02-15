(lang dune 3.6)

(generate_opam_files true)

(license ISC)

(package
 (name ocamlyices)
 (version 0.7.4)
 (license "ISC")
 (authors "Mickaël Delahaye <mickael.delahaye@gmail.com>")
 (maintainers "Mickaël Delahaye <mickael.delahaye@gmail.com>")
 (synopsis "Yices SMT solver binding")
 (description
  "\nYices is a Satisfiability Modulo Theories (SMT) solver from SRI.\nThis binding requires Yices version 1.0.34 or more recent, but not 2.\n\nDownload the latest tarball from Yices' official website:\n  http://yices.csl.sri.com/download.shtml\nInstall it in  /usr/local  and register the DLL quickly:\n  wget -q -O- http://git.io/sWxMmg | sh -s <yices-XYZ.tar.gz>\nwhere <yices-XYZ.tar.gz> should be replaced with the path to the\ndownloaded tarball. Optionally you can set an installation directory:\n  wget -q -O- http://git.io/sWxMmg | sh -s <yices-XYZ.tar.gz> /opt /opt/lib64")
 (source
  (github polazarus/ocamlyices))
 (depends
  (ocaml
   (>= 4.06.0))
  num
  dune
  camlidl
  (odoc :with-doc)
  (ounit2 :with-test)))
