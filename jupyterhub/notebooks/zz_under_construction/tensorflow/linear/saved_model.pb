Ī
Š
9
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T"
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Square
x"T
y"T"
Ttype:
	2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*	1.1.0-rc02b'v1.1.0-rc0-354-g2a48110'

(weights/Initializer/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
_class
loc:@weights*
valueB 

&weights/Initializer/random_uniform/minConst*
_class
loc:@weights*
valueB
 *×³Żæ*
dtype0*
_output_shapes
: 

&weights/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
loc:@weights*
valueB
 *×³Ż?
Ī
0weights/Initializer/random_uniform/RandomUniformRandomUniform(weights/Initializer/random_uniform/shape*
_output_shapes
: *
dtype0*
seed2 *
_class
loc:@weights*
T0*

seed 
ŗ
&weights/Initializer/random_uniform/subSub&weights/Initializer/random_uniform/max&weights/Initializer/random_uniform/min*
T0*
_class
loc:@weights*
_output_shapes
: 
Ä
&weights/Initializer/random_uniform/mulMul0weights/Initializer/random_uniform/RandomUniform&weights/Initializer/random_uniform/sub*
_output_shapes
: *
_class
loc:@weights*
T0
¶
"weights/Initializer/random_uniformAdd&weights/Initializer/random_uniform/mul&weights/Initializer/random_uniform/min*
T0*
_class
loc:@weights*
_output_shapes
: 

weights
VariableV2"/device:CPU:0*
_class
loc:@weights*
_output_shapes
: *
shape: *
dtype0*
shared_name *
	container 
ŗ
weights/AssignAssignweights"weights/Initializer/random_uniform"/device:CPU:0*
_output_shapes
: *
validate_shape(*
_class
loc:@weights*
T0*
use_locking(
m
weights/readIdentityweights"/device:CPU:0*
T0*
_output_shapes
: *
_class
loc:@weights

%bias/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
: *
_class
	loc:@bias*
valueB 

#bias/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
	loc:@bias*
valueB
 *×³Żæ

#bias/Initializer/random_uniform/maxConst*
_output_shapes
: *
dtype0*
_class
	loc:@bias*
valueB
 *×³Ż?
Å
-bias/Initializer/random_uniform/RandomUniformRandomUniform%bias/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
: *
_class
	loc:@bias
®
#bias/Initializer/random_uniform/subSub#bias/Initializer/random_uniform/max#bias/Initializer/random_uniform/min*
T0*
_class
	loc:@bias*
_output_shapes
: 
ø
#bias/Initializer/random_uniform/mulMul-bias/Initializer/random_uniform/RandomUniform#bias/Initializer/random_uniform/sub*
T0*
_class
	loc:@bias*
_output_shapes
: 
Ŗ
bias/Initializer/random_uniformAdd#bias/Initializer/random_uniform/mul#bias/Initializer/random_uniform/min*
_output_shapes
: *
_class
	loc:@bias*
T0

bias
VariableV2"/device:CPU:0*
shared_name *
_class
	loc:@bias*
	container *
shape: *
dtype0*
_output_shapes
: 
®
bias/AssignAssignbiasbias/Initializer/random_uniform"/device:CPU:0*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
	loc:@bias
d
	bias/readIdentitybias"/device:CPU:0*
T0*
_class
	loc:@bias*
_output_shapes
: 
g

x_observedPlaceholder"/device:CPU:0*
shape: *
dtype0*#
_output_shapes
:’’’’’’’’’
a
mulMulweights/read
x_observed"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
T0
W
addAddmul	bias/read"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
T0
g

y_observedPlaceholder"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
shape: *
dtype0
X
subSubadd
y_observed"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
T0
R
SquareSquaresub"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
T0
^
ConstConst"/device:CPU:0*
valueB: *
_output_shapes
:*
dtype0
h
MeanMeanSquareConst"/device:CPU:0*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
a
gradients/ShapeConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB 
c
gradients/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *  ?
h
gradients/FillFillgradients/Shapegradients/Const"/device:CPU:0*
T0*
_output_shapes
: 
z
!gradients/Mean_grad/Reshape/shapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
n
gradients/Mean_grad/ShapeShapeSquare"/device:CPU:0*
out_type0*
_output_shapes
:*
T0
§
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape"/device:CPU:0*

Tmultiples0*
T0*#
_output_shapes
:’’’’’’’’’
p
gradients/Mean_grad/Shape_1ShapeSquare"/device:CPU:0*
T0*
_output_shapes
:*
out_type0
m
gradients/Mean_grad/Shape_2Const"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
r
gradients/Mean_grad/ConstConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB: 
„
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const"/device:CPU:0*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
t
gradients/Mean_grad/Const_1Const"/device:CPU:0*
valueB: *
_output_shapes
:*
dtype0
©
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1"/device:CPU:0*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
n
gradients/Mean_grad/Maximum/yConst"/device:CPU:0*
value	B :*
_output_shapes
: *
dtype0

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y"/device:CPU:0*
_output_shapes
: *
T0

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum"/device:CPU:0*
T0*
_output_shapes
: 
}
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv"/device:CPU:0*
_output_shapes
: *

DstT0*

SrcT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast"/device:CPU:0*
T0*#
_output_shapes
:’’’’’’’’’

gradients/Square_grad/mul/xConst^gradients/Mean_grad/truediv"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @

gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
T0

gradients/Square_grad/mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/mul"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
T0
j
gradients/sub_grad/ShapeShapeadd"/device:CPU:0*
T0*
out_type0*
_output_shapes
:
s
gradients/sub_grad/Shape_1Shape
y_observed"/device:CPU:0*
T0*
out_type0*
_output_shapes
:
Ć
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1"/device:CPU:0*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
³
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
¢
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape"/device:CPU:0*
Tshape0*#
_output_shapes
:’’’’’’’’’*
T0
·
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1"/device:CPU:0*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
i
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1"/device:CPU:0*
T0*
_output_shapes
:
¦
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1"/device:CPU:0*
T0*#
_output_shapes
:’’’’’’’’’*
Tshape0
v
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1"/device:CPU:0
å
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps"/device:CPU:0*
T0*#
_output_shapes
:’’’’’’’’’*-
_class#
!loc:@gradients/sub_grad/Reshape
ė
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps"/device:CPU:0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*#
_output_shapes
:’’’’’’’’’*
T0
j
gradients/add_grad/ShapeShapemul"/device:CPU:0*
T0*
out_type0*
_output_shapes
:
l
gradients/add_grad/Shape_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB 
Ć
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1"/device:CPU:0*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ć
gradients/add_grad/SumSum+gradients/sub_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 
¢
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
Tshape0*
T0
Ē
gradients/add_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1"/device:CPU:0*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1"/device:CPU:0*
T0*
Tshape0*
_output_shapes
: 
v
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1"/device:CPU:0
å
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*-
_class#
!loc:@gradients/add_grad/Reshape*
T0
Ž
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps"/device:CPU:0*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1
j
gradients/mul_grad/ShapeConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB 
s
gradients/mul_grad/Shape_1Shape
x_observed"/device:CPU:0*
out_type0*
_output_shapes
:*
T0
Ć
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1"/device:CPU:0*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

gradients/mul_grad/mulMul+gradients/add_grad/tuple/control_dependency
x_observed"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
T0
®
gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs"/device:CPU:0*
_output_shapes
:*
T0*

Tidx0*
	keep_dims( 

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
: 

gradients/mul_grad/mul_1Mulweights/read+gradients/add_grad/tuple/control_dependency"/device:CPU:0*
T0*#
_output_shapes
:’’’’’’’’’
“
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1"/device:CPU:0*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ø
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1"/device:CPU:0*#
_output_shapes
:’’’’’’’’’*
Tshape0*
T0
v
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1"/device:CPU:0
Ų
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps"/device:CPU:0*
_output_shapes
: *-
_class#
!loc:@gradients/mul_grad/Reshape*
T0
ė
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps"/device:CPU:0*
T0*#
_output_shapes
:’’’’’’’’’*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
q
GradientDescent/learning_rateConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *ĶĢĢ<
’
3GradientDescent/update_weights/ApplyGradientDescentApplyGradientDescentweightsGradientDescent/learning_rate+gradients/mul_grad/tuple/control_dependency"/device:CPU:0*
_output_shapes
: *
_class
loc:@weights*
T0*
use_locking( 
ų
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1"/device:CPU:0*
use_locking( *
T0*
_class
	loc:@bias*
_output_shapes
: 

GradientDescentNoOp4^GradientDescent/update_weights/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent"/device:CPU:0
:
initNoOp^weights/Assign^bias/Assign"/device:CPU:0
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
_output_shapes
: *
T0
I
Merge/MergeSummaryMergeSummaryloss*
_output_shapes
: *
N

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_b4c99358381e4b91853abc0531cc7f14/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
}
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*"
valueBBbiasBweights
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbiasweights"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename*
T0
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
w
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBBbias*
dtype0*
_output_shapes
:
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:

save/AssignAssignbiassave/RestoreV2"/device:CPU:0*
_output_shapes
: *
validate_shape(*
_class
	loc:@bias*
T0*
use_locking(
|
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBBweights
y
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
„
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
§
save/Assign_1Assignweightssave/RestoreV2_1"/device:CPU:0*
_class
loc:@weights*
_output_shapes
: *
T0*
validate_shape(*
use_locking(
G
save/restore_shardNoOp^save/Assign^save/Assign_1"/device:CPU:0
<
save/restore_allNoOp^save/restore_shard"/device:CPU:0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"`
	variablesSQ
+
	weights:0weights/Assignweights/read:0
"
bias:0bias/Assignbias/read:0"
	summaries


loss:0"j
trainable_variablesSQ
+
	weights:0weights/Assignweights/read:0
"
bias:0bias/Assignbias/read:0"
train_op

GradientDescent"$
legacy_init_op

legacy_init_op*
serving_defaulto
-

x_observed
x_observed:0’’’’’’’’’"
y_pred
add:0’’’’’’’’’tensorflow/serving/predict*z
predicto
-

x_observed
x_observed:0’’’’’’’’’"
y_pred
add:0’’’’’’’’’tensorflow/serving/predict