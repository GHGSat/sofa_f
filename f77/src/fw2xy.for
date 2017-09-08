      SUBROUTINE iau_FW2XY ( GAMB, PHIB, PSI, EPS, X, Y )
*+
*  - - - - - - - - - -
*   i a u _ F W 2 X Y
*  - - - - - - - - - -
*
*  CIP X,Y given Fukushima-Williams bias-precession-nutation angles.
*
*  This routine is part of the International Astronomical Union's
*  SOFA (Standards of Fundamental Astronomy) software collection.
*
*  Status:  support routine.
*
*  Given:
*     GAMB       d      F-W angle gamma_bar (radians)
*     PHIB       d      F-W angle phi_bar (radians)
*     PSI        d      F-W angle psi (radians)
*     EPS        d      F-W angle epsilon (radians)
*
*  Returned:
*     X,Y        d      CIP unit vector X,Y
*
*  Notes:
*
*  1) Naming the following points:
*
*           e = J2000.0 ecliptic pole,
*           p = GCRS pole
*           E = ecliptic pole of date,
*     and   P = CIP,
*
*     the four Fukushima-Williams angles are as follows:
*
*        GAMB = gamma = epE
*        PHIB = phi = pE
*        PSI = psi = pEP
*        EPS = epsilon = EP
*
*  2) The matrix representing the combined effects of frame bias,
*     precession and nutation is:
*
*        NxPxB = R_1(-EPSA).R_3(-PSI).R_1(PHIB).R_3(GAMB)
*
*     The returned values x,y are elements (3,1) and (3,2) of the
*     matrix.  Near J2000.0, they are essentially angles in radians.
*
*  Called:
*     iau_FW2M     F-W angles to r-matrix
*     iau_BPN2XY   extract CIP X,Y coordinates from NPB matrix
*
*  Reference:
*
*     Hilton, J. et al., 2006, Celest.Mech.Dyn.Astron. 94, 351
*
*  This revision:   2013 September 2
*
*  SOFA release 2017-04-20
*
*  Copyright (C) 2017 IAU SOFA Board.  See notes at end.
*
*-----------------------------------------------------------------------

      IMPLICIT NONE

      DOUBLE PRECISION GAMB, PHIB, PSI, EPS, X, Y

      DOUBLE PRECISION R(3,3)

* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

*  Form NxPxB matrix.
      CALL iau_FW2M ( GAMB, PHIB, PSI, EPS, R )

*  Extract CIP X,Y.
      CALL iau_BPN2XY ( R, X, Y )

*  Finished.

*+----------------------------------------------------------------------
*
*  Copyright (C) 2017
*  Standards Of Fundamental Astronomy Board
*  of the International Astronomical Union.
*
*  =====================
*  SOFA Software License
*  =====================
*
*  NOTICE TO USER:
*
*  BY USING THIS SOFTWARE YOU ACCEPT THE FOLLOWING SIX TERMS AND
*  CONDITIONS WHICH APPLY TO ITS USE.
*
*  1. The Software is owned by the IAU SOFA Board ("SOFA").
*
*  2. Permission is granted to anyone to use the SOFA software for any
*     purpose, including commercial applications, free of charge and
*     without payment of royalties, subject to the conditions and
*     restrictions listed below.
*
*  3. You (the user) may copy and distribute SOFA source code to others,
*     and use and adapt its code and algorithms in your own software,
*     on a world-wide, royalty-free basis.  That portion of your
*     distribution that does not consist of intact and unchanged copies
*     of SOFA source code files is a "derived work" that must comply
*     with the following requirements:
*
*     a) Your work shall be marked or carry a statement that it
*        (i) uses routines and computations derived by you from
*        software provided by SOFA under license to you; and
*        (ii) does not itself constitute software provided by and/or
*        endorsed by SOFA.
*
*     b) The source code of your derived work must contain descriptions
*        of how the derived work is based upon, contains and/or differs
*        from the original SOFA software.
*
*     c) The names of all routines in your derived work shall not
*        include the prefix "iau" or "sofa" or trivial modifications
*        thereof such as changes of case.
*
*     d) The origin of the SOFA components of your derived work must
*        not be misrepresented;  you must not claim that you wrote the
*        original software, nor file a patent application for SOFA
*        software or algorithms embedded in the SOFA software.
*
*     e) These requirements must be reproduced intact in any source
*        distribution and shall apply to anyone to whom you have
*        granted a further right to modify the source code of your
*        derived work.
*
*     Note that, as originally distributed, the SOFA software is
*     intended to be a definitive implementation of the IAU standards,
*     and consequently third-party modifications are discouraged.  All
*     variations, no matter how minor, must be explicitly marked as
*     such, as explained above.
*
*  4. You shall not cause the SOFA software to be brought into
*     disrepute, either by misuse, or use for inappropriate tasks, or
*     by inappropriate modification.
*
*  5. The SOFA software is provided "as is" and SOFA makes no warranty
*     as to its use or performance.   SOFA does not and cannot warrant
*     the performance or results which the user may obtain by using the
*     SOFA software.  SOFA makes no warranties, express or implied, as
*     to non-infringement of third party rights, merchantability, or
*     fitness for any particular purpose.  In no event will SOFA be
*     liable to the user for any consequential, incidental, or special
*     damages, including any lost profits or lost savings, even if a
*     SOFA representative has been advised of such damages, or for any
*     claim by any third party.
*
*  6. The provision of any version of the SOFA software under the terms
*     and conditions specified herein does not imply that future
*     versions will also be made available under the same terms and
*     conditions.
*
*  In any published work or commercial product which uses the SOFA
*  software directly, acknowledgement (see www.iausofa.org) is
*  appreciated.
*
*  Correspondence concerning SOFA software should be addressed as
*  follows:
*
*      By email:  sofa@ukho.gov.uk
*      By post:   IAU SOFA Center
*                 HM Nautical Almanac Office
*                 UK Hydrographic Office
*                 Admiralty Way, Taunton
*                 Somerset, TA1 2DN
*                 United Kingdom
*
*-----------------------------------------------------------------------

      END
