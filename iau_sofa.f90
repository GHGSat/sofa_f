module iau_sofa
  implicit none
  interface
     subroutine iau_pvtob ( elong, phi, hm, xp, yp, sp, theta, pv )
       double precision, intent(in) :: elong, phi, hm, xp, yp, sp, theta
       double precision, intent(out) :: pv(3,2)
     end subroutine iau_pvtob

     double precision function iau_era00 ( dj1, dj2 )
       double precision, intent(in) :: dj1, dj2
     end function iau_era00

     subroutine iau_c2i00a ( date1, date2, rc2i )
       double precision, intent(in) :: date1, date2
       double precision, intent(out) :: rc2i(3,3)
     end subroutine iau_c2i00a

     subroutine iau_pom00 ( xp, yp, sp, rpom )
       double precision, intent(in) :: xp, yp, sp
       double precision, intent(out) :: rpom(3,3)
     end subroutine iau_pom00

     subroutine iau_c2tcio ( rc2i, era, rpom, rc2t )
       double precision, intent(in) :: rc2i(3,3), era, rpom(3,3)
       double precision, intent(out) :: rc2t(3,3)
     end subroutine iau_c2tcio

     subroutine iau_utcut1 ( utc1, utc2, dut1, ut11, ut12, j )
      double precision, intent(in) :: utc1, utc2, dut1
      double precision, intent(out) :: ut11, ut12
      integer, intent(out) :: j
     end subroutine iau_utcut1

     subroutine iau_ut1tt ( ut11, ut12, dt, tt1, tt2, j )
      double precision, intent(in) :: ut11, ut12, dt
      double precision, intent(out) :: tt1, tt2
      integer, intent(out) :: j
     end subroutine iau_ut1tt

     subroutine iau_dtf2d ( scale, iy, im, id, ihr, imn, sec, d1, d2, j )
       character*(*), intent(in) :: scale
       integer, intent(in) :: iy, im, id, ihr, imn
       double precision, intent(in) :: sec
       double precision, intent(out) :: d1, d2
       integer, intent(out) :: j
     end subroutine iau_dtf2d

     subroutine iau_taiut1 ( tai1, tai2, dta, ut11, ut12, j )
       double precision, intent(in) :: tai1, tai2, dta
       double precision, intent(out) :: ut11, ut12
       integer, intent(out) :: j
     end subroutine iau_taiut1

     subroutine iau_taitt ( tai1, tai2, tt1, tt2, j )
       double precision, intent(in) :: tai1, tai2
       double precision, intent(out) :: tt1, tt2
       integer, intent(out) :: j
     end subroutine iau_taitt

     subroutine iau_ttut1 ( tt1, tt2, dt, ut11, ut12, j )
       double precision, intent(in) :: tt1, tt2, dt
       double precision, intent(out) :: ut11, ut12
       integer, intent(out) :: j
     end subroutine iau_ttut1

     double precision function iau_sp00 ( tt1, tt2 )
       double precision, intent(in) :: tt1, tt2
     end function iau_sp00

     subroutine iau_c2t06a ( tta, ttb, uta, utb, xp, yp, rc2t )
       double precision, intent(in) :: tta, ttb, uta, utb, xp, yp
       double precision, intent(out) :: rc2t(3,3)
     end subroutine iau_c2t06a

     subroutine iau_epv00 ( date1, date2, pvh, pvb, jstat )
       double precision, intent(in) :: date1, date2
       double precision, intent(out) :: pvh(3,2), pvb(3,2)
       integer, intent(out) :: jstat
     end subroutine iau_epv00

     subroutine iau_tttdb ( tt1, tt2, dtr, tdb1, tdb2, j )
       double precision, intent(in) :: tt1, tt2, dtr
       double precision, intent(out) :: tdb1, tdb2
       integer, intent(out) :: j
     end subroutine iau_tttdb

     subroutine iau_tttai ( tt1, tt2, tai1, tai2, j )
       double precision, intent(in) :: tt1, tt2
       double precision, intent(out) :: tai1, tai2
       integer, intent(out) :: j
     end subroutine iau_tttai

     subroutine iau_taiutc ( tai1, tai2, utc1, utc2, j )
       double precision, intent(in) :: tai1, tai2
       double precision, intent(out) :: utc1, utc2
       integer, intent(out) :: j
     end subroutine iau_taiutc

     double precision function iau_dtdb ( date1, date2, ut, elong, u, v )
       double precision, intent(in) :: date1, date2, ut, elong, u, v
     end function iau_dtdb

     double precision function iau_fad03 ( t )
       double precision, intent(in) :: t
     end function iau_fad03

     subroutine iau_xys00a ( date1, date2, x, y, s )
       double precision, intent(in) :: date1, date2
       double precision, intent(out) :: x, y, s
     end subroutine iau_xys00a

     subroutine iau_c2ixys ( x, y, s, rc2i )
       double precision, intent(in) :: x, y, s
       double precision, intent(out) :: rc2i(3,3)
     end subroutine iau_c2ixys

     subroutine iau_rz ( psi, r )
       double precision, intent(in) :: psi
       double precision, intent(out) :: r(3,3)
     end subroutine iau_rz

     subroutine iau_c2s ( p, theta, phi )
       double precision, intent(in) :: p(3)
       double precision, intent(out) :: theta,phi
     end subroutine iau_c2s
     
     subroutine iau_gc2gd ( n, xyz, elong, phi, height, j )
       integer, intent(in) :: n
       double precision, intent(in) :: xyz(3)
       double precision, intent(out) :: elong, phi, height
       integer, intent(out) :: j
     end subroutine iau_gc2gd
  end interface
end module iau_sofa
