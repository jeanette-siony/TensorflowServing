??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.4.02unknown8Ͻ
V
aVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namea
O
a/Read/ReadVariableOpReadVariableOpa*
_output_shapes
: *
dtype0
V
bVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameb
O
b/Read/ReadVariableOpReadVariableOpb*
_output_shapes
: *
dtype0
V
cVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namec
O
c/Read/ReadVariableOpReadVariableOpc*
_output_shapes
: *
dtype0
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
R
Variable/AssignAssignVariableOpVariableasset_path_initializer*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0

NoOpNoOp^Variable/Assign
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
0
a
b
c
	asset

signatures
31
VARIABLE_VALUEaa/.ATTRIBUTES/VARIABLE_VALUE
31
VARIABLE_VALUEbb/.ATTRIBUTES/VARIABLE_VALUE
31
VARIABLE_VALUEcc/.ATTRIBUTES/VARIABLE_VALUE
 
 
a
classify_x2_to_y3_inputsPlaceholder*
_output_shapes
:*
dtype0*
shape:
?
StatefulPartitionedCallStatefulPartitionedCallclassify_x2_to_y3_inputsac*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_240
q
classify_x_to_y_inputsPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallclassify_x_to_y_inputsab*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_218
`
regress_x2_to_y3_inputsPlaceholder*
_output_shapes
:*
dtype0*
shape:
?
StatefulPartitionedCall_2StatefulPartitionedCallregress_x2_to_y3_inputsac*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_186
p
regress_x_to_y_inputsPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_3StatefulPartitionedCallregress_x_to_y_inputsab*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_132
q
regress_x_to_y2_inputsPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_4StatefulPartitionedCallregress_x_to_y2_inputsac*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_164
Z
serving_default_xPlaceholder*
_output_shapes
:*
dtype0*
shape:
?
StatefulPartitionedCall_5StatefulPartitionedCallserving_default_xab*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_signature_wrapper_262
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_6StatefulPartitionedCallsaver_filenamea/Read/ReadVariableOpb/Read/ReadVariableOpc/Read/ReadVariableOpConst*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference__traced_save_308
?
StatefulPartitionedCall_7StatefulPartitionedCallsaver_filenameabc*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_restore_327??
?
}
__inference_regress_x2y3_175

inputs
mul_readvariableop_resource
add_readvariableop_resource
identity?|
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype02
Mul/ReadVariableOpZ
MulMulMul/ReadVariableOp:value:0inputs*
T0*
_output_shapes
:2
Mul|
Add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
Add/ReadVariableOp[
AddAddMul:z:0Add/ReadVariableOp:value:0*
T0*
_output_shapes
:2
AddN
IdentityIdentityAdd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
::::B >

_output_shapes
:
 
_user_specified_nameinputs
?
?
__inference__traced_restore_327
file_prefix
assignvariableop_a
assignvariableop_1_b
assignvariableop_2_c

identity_4??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Ba/.ATTRIBUTES/VARIABLE_VALUEBb/.ATTRIBUTES/VARIABLE_VALUEBc/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_aIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_cIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_3?

Identity_4IdentityIdentity_3:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*
T0*
_output_shapes
: 2

Identity_4"!

identity_4Identity_4:output:0*!
_input_shapes
: :::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
__inference__traced_save_308
file_prefix 
savev2_a_read_readvariableop 
savev2_b_read_readvariableop 
savev2_c_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const?
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_30a3ca99112c47c99a4a8c3718c39a8a/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?Ba/.ATTRIBUTES/VARIABLE_VALUEBb/.ATTRIBUTES/VARIABLE_VALUEBc/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_a_read_readvariableopsavev2_b_read_readvariableopsavev2_c_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes

: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
|
__inference_regress_xy2_153

inputs
mul_readvariableop_resource
add_readvariableop_resource
identity?k
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ParseExample/Constw
ParseExample/key_x2Const*
_output_shapes
:*
dtype0*
valueB*    2
ParseExample/key_x2?
ParseExample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:2
ParseExample/Reshape/shape?
ParseExample/ReshapeReshapeParseExample/key_x2:output:0#ParseExample/Reshape/shape:output:0*
T0*
_output_shapes
:2
ParseExample/Reshape?
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 2#
!ParseExample/ParseExampleV2/names?
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 2)
'ParseExample/ParseExampleV2/sparse_keys?
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBxBx22(
&ParseExample/ParseExampleV2/dense_keys?
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 2)
'ParseExample/ParseExampleV2/ragged_keys?
ParseExample/ParseExampleV2ParseExampleV2inputs*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0ParseExample/Reshape:output:0*
Tdense
2*:
_output_shapes(
&:?????????:?????????*
dense_shapes
::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 2
ParseExample/ParseExampleV2|
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype02
Mul/ReadVariableOp?
MulMulMul/ReadVariableOp:value:0*ParseExample/ParseExampleV2:dense_values:0*
T0*'
_output_shapes
:?????????2
Mul|
Add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
Add/ReadVariableOph
AddAddMul:z:0Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Add[
IdentityIdentityAdd:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
{
__inference_regress_xy_121

inputs
mul_readvariableop_resource
add_readvariableop_resource
identity?k
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ParseExample/Constw
ParseExample/key_x2Const*
_output_shapes
:*
dtype0*
valueB*    2
ParseExample/key_x2?
ParseExample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:2
ParseExample/Reshape/shape?
ParseExample/ReshapeReshapeParseExample/key_x2:output:0#ParseExample/Reshape/shape:output:0*
T0*
_output_shapes
:2
ParseExample/Reshape?
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 2#
!ParseExample/ParseExampleV2/names?
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 2)
'ParseExample/ParseExampleV2/sparse_keys?
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBxBx22(
&ParseExample/ParseExampleV2/dense_keys?
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 2)
'ParseExample/ParseExampleV2/ragged_keys?
ParseExample/ParseExampleV2ParseExampleV2inputs*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0ParseExample/Reshape:output:0*
Tdense
2*:
_output_shapes(
&:?????????:?????????*
dense_shapes
::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 2
ParseExample/ParseExampleV2|
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype02
Mul/ReadVariableOp?
MulMulMul/ReadVariableOp:value:0*ParseExample/ParseExampleV2:dense_values:0*
T0*'
_output_shapes
:?????????2
Mul|
Add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
Add/ReadVariableOph
AddAddMul:z:0Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Add[
IdentityIdentityAdd:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
__inference_classify_x2y3_229

inputs
mul_readvariableop_resource
add_readvariableop_resource
identity?|
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype02
Mul/ReadVariableOpZ
MulMulMul/ReadVariableOp:value:0inputs*
T0*
_output_shapes
:2
Mul|
Add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
Add/ReadVariableOp[
AddAddMul:z:0Add/ReadVariableOp:value:0*
T0*
_output_shapes
:2
AddN
IdentityIdentityAdd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
::::B >

_output_shapes
:
 
_user_specified_nameinputs
?
v
!__inference_signature_wrapper_218

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_classify_xy_2072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
v
!__inference_signature_wrapper_186

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_regress_x2y3_1752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall:B >

_output_shapes
:
 
_user_specified_nameinputs
?
v
!__inference_signature_wrapper_164

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_regress_xy2_1532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
v
!__inference_signature_wrapper_132

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_regress_xy_1212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
|
__inference_classify_xy_207

inputs
mul_readvariableop_resource
add_readvariableop_resource
identity?k
ParseExample/ConstConst*
_output_shapes
: *
dtype0*
valueB 2
ParseExample/Constw
ParseExample/key_x2Const*
_output_shapes
:*
dtype0*
valueB*    2
ParseExample/key_x2?
ParseExample/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:2
ParseExample/Reshape/shape?
ParseExample/ReshapeReshapeParseExample/key_x2:output:0#ParseExample/Reshape/shape:output:0*
T0*
_output_shapes
:2
ParseExample/Reshape?
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 2#
!ParseExample/ParseExampleV2/names?
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 2)
'ParseExample/ParseExampleV2/sparse_keys?
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*
valueBBxBx22(
&ParseExample/ParseExampleV2/dense_keys?
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 2)
'ParseExample/ParseExampleV2/ragged_keys?
ParseExample/ParseExampleV2ParseExampleV2inputs*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0ParseExample/Reshape:output:0*
Tdense
2*:
_output_shapes(
&:?????????:?????????*
dense_shapes
::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 2
ParseExample/ParseExampleV2|
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype02
Mul/ReadVariableOp?
MulMulMul/ReadVariableOp:value:0*ParseExample/ParseExampleV2:dense_values:0*
T0*'
_output_shapes
:?????????2
Mul|
Add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
Add/ReadVariableOph
AddAddMul:z:0Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Add[
IdentityIdentityAdd:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:::K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
q
!__inference_signature_wrapper_262
x
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? * 
fR
__inference_predict_2512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall:= 9

_output_shapes
:

_user_specified_namex
?
s
__inference_predict_251
x
mul_readvariableop_resource
add_readvariableop_resource
identity?|
Mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
: *
dtype02
Mul/ReadVariableOpU
MulMulMul/ReadVariableOp:value:0x*
T0*
_output_shapes
:2
Mul|
Add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
Add/ReadVariableOp[
AddAddMul:z:0Add/ReadVariableOp:value:0*
T0*
_output_shapes
:2
AddN
IdentityIdentityAdd:z:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
::::= 9

_output_shapes
:

_user_specified_namex
?
v
!__inference_signature_wrapper_240

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference_classify_x2y3_2292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*!
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall:B >

_output_shapes
:
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_6:0StatefulPartitionedCall_78"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
classify_x2_to_y3{
.
inputs$
classify_x2_to_y3_inputs:0-
scores#
StatefulPartitionedCall:0tensorflow/serving/predict*?
classify_x_to_y?
5
inputs+
classify_x_to_y_inputs:0?????????<
scores2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict*?
regress_x2_to_y3}
-
inputs#
regress_x2_to_y3_inputs:00
outputs%
StatefulPartitionedCall_2:0tensorflow/serving/predict*?
regress_x_to_y?
4
inputs*
regress_x_to_y_inputs:0?????????=
outputs2
StatefulPartitionedCall_3:0?????????tensorflow/serving/predict*?
regress_x_to_y2?
5
inputs+
regress_x_to_y2_inputs:0?????????=
outputs2
StatefulPartitionedCall_4:0?????????tensorflow/serving/predict*
serving_defaultl
"
x
serving_default_x:0*
y%
StatefulPartitionedCall_5:0tensorflow/serving/predict2%

asset_path_initializer:0foo.txt:?
?
a
b
c
	asset

signatures
classify_x2y3
classify_xy
predict
	regress_x2y3


regress_xy
regress_xy2"
_generic_user_object
:	 2a
:	 2b
:	 2c
* 
?
regress_x_to_y
regress_x_to_y2
regress_x2_to_y3
classify_x_to_y
classify_x2_to_y3
serving_default"
signature_map
?2?
__inference_classify_x2y3_229?
???
FullArgSpec
args?
jself
jx2
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
?
inputs
?2?
__inference_classify_xy_207?
???
FullArgSpec'
args?
jself
jserialized_proto
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *!?
?
inputs?????????
?2?
__inference_predict_251?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
?
?2?
__inference_regress_x2y3_175?
???
FullArgSpec
args?
jself
jx2
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
?
inputs
?2?
__inference_regress_xy_121?
???
FullArgSpec'
args?
jself
jserialized_proto
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *!?
?
inputs?????????
?2?
__inference_regress_xy2_153?
???
FullArgSpec'
args?
jself
jserialized_proto
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *!?
?
inputs?????????
/B-
!__inference_signature_wrapper_132inputs
/B-
!__inference_signature_wrapper_164inputs
/B-
!__inference_signature_wrapper_186inputs
/B-
!__inference_signature_wrapper_218inputs
/B-
!__inference_signature_wrapper_240inputs
*B(
!__inference_signature_wrapper_262xm
__inference_classify_x2y3_229L"?
?
?
inputs
? ""?

scores?
scores?
__inference_classify_xy_207b+?(
!?
?
inputs?????????
? "/?,
*
scores ?
scores?????????X
__inference_predict_251=?
?
?
x
? "?

y?
yn
__inference_regress_x2y3_175N"?
?
?
inputs
? "$?!

outputs?
outputs?
__inference_regress_xy2_153d+?(
!?
?
inputs?????????
? "1?.
,
outputs!?
outputs??????????
__inference_regress_xy_121d+?(
!?
?
inputs?????????
? "1?.
,
outputs!?
outputs??????????
!__inference_signature_wrapper_132n5?2
? 
+?(
&
inputs?
inputs?????????"1?.
,
outputs!?
outputs??????????
!__inference_signature_wrapper_164n5?2
? 
+?(
&
inputs?
inputs?????????"1?.
,
outputs!?
outputs?????????}
!__inference_signature_wrapper_186X,?)
? 
"?

inputs?
inputs"$?!

outputs?
outputs?
!__inference_signature_wrapper_218l5?2
? 
+?(
&
inputs?
inputs?????????"/?,
*
scores ?
scores?????????{
!__inference_signature_wrapper_240V,?)
? 
"?

inputs?
inputs""?

scores?
scoresg
!__inference_signature_wrapper_262B"?
? 
?

x?
x"?

y?
y