# Used internally by the THE() function.
zzzz-the =
    { PROPER($ent) ->
       *[false] the { $ent }
        [true] { $ent }
    }
# Used internally by the SUBJECT() function.
zzzz-subject-pronoun =
    { GENDER($ent) ->
        [male] he
        [female] she
        [epicene] they
       *[neuter] it
    }
# Used internally by the OBJECT() function.
zzzz-object-pronoun =
    { GENDER($ent) ->
        [male] him
        [female] her
        [epicene] them
       *[neuter] it
    }
# Used internally by the DAT-OBJ() function.
# Not used in en-US. Created to support other languages.
# (e.g., "to him," "for her")
zzzz-dat-object =
    { GENDER($ent) ->
        [male] him
        [female] her
        [epicene] them
       *[neuter] it
    }
# Used internally by the GENITIVE() function.
# Not used in en-US. Created to support other languages.
# e.g., "у него" (Russian), "seines Vaters" (German).
zzzz-genitive =
    { GENDER($ent) ->
        [male] his
        [female] her
        [epicene] their
       *[neuter] its
    }
# Used internally by the POSS-PRONOUN() function.
zzzz-possessive-pronoun =
    { GENDER($ent) ->
        [male] 他的
        [female] 她的
        [epicene] 他們的
       *[neuter] 它的
    }
# Used internally by the POSS-ADJ() function.
zzzz-possessive-adjective =
    { GENDER($ent) ->
        [male] his
        [female] her
        [epicene] their
       *[neuter] its
    }
# Used internally by the REFLEXIVE() function.
zzzz-reflexive-pronoun =
    { GENDER($ent) ->
        [male] 自己
        [female] 自己
        [epicene] 自己
       *[neuter] 自己
    }
# Used internally by the CONJUGATE-BE() function.
zzzz-conjugate-be =
    { GENDER($ent) ->
        [epicene] 為
       *[other] 為
    }
# Used internally by the CONJUGATE-HAVE() function.
zzzz-conjugate-have =
    { GENDER($ent) ->
        [epicene] 擁有
       *[other] 擁有
    }
# Used internally by the CONJUGATE-BASIC() function.
zzzz-conjugate-basic =
    { GENDER($ent) ->
        [epicene] { $first }
       *[other] { $second }
    }
