$# LS-DYNA Keyword file created by LS-PrePost(R) V4.10.5-23Jun2023
$# Created on May-7-2024 (22:36:44)
*KEYWORD
*TITLE
$#                                                                         title
EM Railgun example
*EM_CONTROL
$--------1---------2---------3---------4---------5---------6---------7---------8
$    emsol
$#   emsol     numls   macrodt   dimtype    nperio         -   ncylfem   ncylbem
         1       100       0.0         0         2                5000      5000
*EM_CONTROL_CONTACT
$--------1---------2---------3---------4---------5---------6---------7---------8
$   EMcont
$#    emct    cconly     ctype    cotype      eps1      eps2      eps3        d0
         1         0         0         0       0.3       0.3       0.3       0.0
*EM_CONTROL_TIMESTEP
$#  tstype    dtcons      lcid    factor     tsmin     tsmas     rlcsf    mecats
         1&em_dt             0       1.0       0.0       0.0        25         0
*EM_CIRCUIT_ROGO
$#  rogoid     setid   settype    curtyp
         4         4         1         1
*EM_SOLVER_BEMMAT
$#   matid    unused    unused    unused    unused    unused    unused    reltol
         1                                                            1.00000E-6
*EM_SOLVER_BEMMAT
$#   matid    unused    unused    unused    unused    unused    unused    reltol
         2                                                            1.00000E-6
*EM_SOLVER_BEM
$#  reltol    maxite     stype    precon   uselast  ncyclbem
1.00000E-6      1000         2         2         1&em_bemmtx
*EM_SOLVER_FEM
$#  reltol    maxite     stype    precon   uselast  ncyclfem
     0.001      1000         1         1         1&em_femmtx
*EM_OUTPUT
$     matS      matF      solS      solF      mesh
$#    mats      matf      sols      solf      mesh       mem    timing
         2         2         2         2         0         0         0
*EM_DATABASE_GLOBALENERGY
$#   outlv     dtout
         1       0.0
*EM_MAT_001
$   em_mid     mtype     sigma     eosId skinDepth
$#     mid     mtype     sigma     eosid    unused  eplambda    deatht   rdltype
         1         2&em_cond           0                 0.01.00000E28         0
*EM_MAT_001
$#     mid     mtype     sigma     eosid    unused  eplambda    deatht   rdltype
         2         2&em_cond           0                 0.01.00000E28         0
*EM_MAT_001
$#     mid     mtype     sigma     eosid    unused  eplambda    deatht   rdltype
         3         2&em_cond           0                 0.01.00000E28         0
*EM_CIRCUIT
$--------1---------2---------3---------4---------5---------6---------7---------8
$   circid  circtype      lcid
$#  circid   circtyp      lcid       r/f       l/a      c/t0        v0        t0
         1         3         4       0.55.00000E-5       1.01.500000E8       0.0
$# sidcurr    sidvin   sidvout    partid
         4         1         2         0
*END
