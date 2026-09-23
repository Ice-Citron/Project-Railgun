$# LS-DYNA Keyword file created by LS-PrePost(R) V4.10.5-23Jun2023
$# Created on May-7-2024 (22:49:07)
*KEYWORD
*TITLE
$#                                                                         title
EM Railgun example
*PARAMETER
$#   prmr1      val1     prmr2      val2     prmr3      val3     prmr4      val4
R    T_end1e-3                                                                  
R  dt_plot5e-6                                                                  
$
$--- EM
$
R    em_dt5e-6                                                                  
Iem_bemmtx3                                                                     
Iem_femmtx3                                                                     
R  em_cond25                                                                    
$--- STRUC
$
R struc_dt5e-6                                                                  
Rstruc_rho2.64e-3                                                               
R  struc_E9.7e+10                                                               
R struc_nu0.31                                                                  
*DATABASE_BINARY_D3PLOT
$#      dt      lcdt      beam     npltc    psetid
&dt_plot           0         0         0         0
*INCLUDE
mesh.k
*INCLUDE
struc.k
*INCLUDE
em.k
*INCLUDE
current.k
*EM_DATABASE_CIRCUIT
$#   outlv     dtout
         1       0.0
*EM_DATABASE_PARTDATA
$#   outlv     dtout
         1       0.0
*END
