# -*- coding: utf-8 -*-
'''
  fastmat/LowRank.pxd
 -------------------------------------------------- part of the fastmat package

  Header file for LowRank base class (structural description).


  Author      : sempersn
  Introduced  : 2017-02-02
 ------------------------------------------------------------------------------

   Copyright 2017 Sebastian Semper, Christoph Wagner
       https://www.tu-ilmenau.de/ems/

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

 ------------------------------------------------------------------------------
'''
import cython
cimport numpy as np

from .Product cimport Product

################################################################################
################################################## class LowRank
cdef class LowRank(Product):

    ############################################## class variables
    cdef public np.ndarray _vecS                 # matrix singular values
    cdef public np.ndarray _arrU                 # left orthogonal matrix
    cdef public np.ndarray _arrV                 # right orthogonal matrix
    cdef public list _summands                   # list of generated rank-1
    #                                            # summands

    ############################################## class methods
    cpdef np.ndarray _reference(self)