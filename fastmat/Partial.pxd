# -*- coding: utf-8 -*-
'''
  fastmat/Partial.pxd
 -------------------------------------------------- part of the fastmat package

  Header file for Partial class (structural description).


  Author      : wcw
  Introduced  : 2016-10-27
 ------------------------------------------------------------------------------

   Copyright 2016 Sebastian Semper, Christoph Wagner
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

from .Matrix cimport Matrix

################################################################################
################################################## class Partial
cdef class Partial(Matrix):

    ############################################## class variables
    cdef public np.ndarray _indicesN             # Support indices in N-dim
    cdef public np.ndarray _indicesM             # Support indices in M-dim
    cdef bint _pruneN                            # selective support for N-dim
    cdef bint _pruneM                            # selective support for M-dim

    ############################################## class methods
    cpdef np.ndarray _forward(self, np.ndarray)
    cpdef np.ndarray _backward(self, np.ndarray)
    cpdef np.ndarray _reference(self)