// ----------------------------------------------------------------------------
//  EOgmaNeo
//  Copyright(c) 2017 Ogma Intelligent Systems Corp. All rights reserved.
//
//  This copy of EOgmaNeo is licensed to you under the terms described
//  in the EOGMANEO_LICENSE.md file included in this distribution.
// ----------------------------------------------------------------------------

%begin %{
#include <cmath>
#include <iostream>
%}
%module eogmaneo

%include "std_pair.i"
%include "std_string.i"
%include "std_vector.i"

%{
#include "System.h"
#include "Layer.h"
#include "Hierarchy.h"
#include "RandomEncoder.h"
#include "CornerEncoder.h"
#include "Preprocessing.h"
#ifdef SFML_FOUND
#include "VisAdapter.h"
#endif
#ifdef OPENCV_FOUND
#include "OpenCVInterop.h"
#endif
%}

%template(StdVeci) std::vector<int>;
%template(Std2DVeci) std::vector<std::vector<int> >;
%template(StdPairi) std::pair<int, int>;
%template(StdVecPairi) std::vector<std::pair<int, int> >;
%template(StdVecLayerDesc) std::vector<eogmaneo::LayerDesc>;
%template(StdVecf) std::vector<float>;
%template(Std2DVecf) std::vector<std::vector<float> >;
%template(StdVecb) std::vector<bool>;

%ignore eogmaneo::ForwardWorkItem;
%ignore eogmaneo::BackwardWorkItem;

// Handle operator overloading
%rename(get) operator();

%include "System.h"
%include "Layer.h"
%include "Hierarchy.h"
%include "RandomEncoder.h"
%include "CornerEncoder.h"
%include "Preprocessing.h"
#ifdef SFML_FOUND

%ignore eogmaneo::SDR;
%ignore eogmaneo::WeightSet;
%ignore eogmaneo::Network;
%ignore eogmaneo::Caret;

%include "VisAdapter.h"
#endif
#ifdef OPENCV_FOUND
%include "OpenCVInterop.h"
#endif
