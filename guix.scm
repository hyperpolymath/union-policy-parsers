;; union-policy-parsers - Guix Package Definition
;; Run: guix shell -D -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system gnu)
             ((guix licenses) #:prefix license:)
             (gnu packages base))

(define-public union_policy_parsers
  (package
    (name "union-policy-parsers")
    (version "0.1.0")
    (source (local-file "." "union-policy-parsers-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system gnu-build-system)
    (synopsis "Guix channel/infrastructure")
    (description "Guix channel/infrastructure - part of the RSR ecosystem.")
    (home-page "https://github.com/hyperpolymath/union-policy-parsers")
    (license license:agpl3+)))

;; Return package for guix shell
union_policy_parsers
