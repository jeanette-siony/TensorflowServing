?C
??
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
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
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
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
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*	1.0.0-rc22v1.0.0-rc1-102-g1536a84-dirty?2
T
a/initial_valueConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 
e
a
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
?
a/AssignAssignaa/initial_value*
validate_shape(*
_class

loc:@a*
use_locking(*
T0*
_output_shapes
: 
L
a/readIdentitya*
_class

loc:@a*
T0*
_output_shapes
: 
T
b/initial_valueConst*
dtype0*
valueB
 *  @@*
_output_shapes
: 
e
b
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
?
b/AssignAssignbb/initial_value*
validate_shape(*
_class

loc:@b*
use_locking(*
T0*
_output_shapes
: 
L
b/readIdentityb*
_class

loc:@b*
T0*
_output_shapes
: 
T
c/initial_valueConst*
dtype0*
valueB
 *  @@*
_output_shapes
: 
e
c
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
?
c/AssignAssigncc/initial_value*
validate_shape(*
_class

loc:@c*
use_locking(*
T0*
_output_shapes
: 
L
c/readIdentityc*
_class

loc:@c*
T0*
_output_shapes
: 
M

tf_examplePlaceholder*
dtype0*
shape: *
_output_shapes
:
U
ParseExample/ConstConst*
dtype0*
valueB *
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
dtype0*
valueB *
_output_shapes
: 
h
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*
value	B Bx*
_output_shapes
: 
?
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0ParseExample/Const*
dense_shapes
:*'
_output_shapes
:?????????*
Ndense*
sparse_types
 *
Tdense
2*
Nsparse 
Z
xIdentityParseExample/ParseExample*
T0*'
_output_shapes
:?????????
G
MulMula/readx*
T0*'
_output_shapes
:?????????
G
yAddMulb/read*
T0*'
_output_shapes
:?????????
E
x2Placeholder*
dtype0*
shape: *
_output_shapes
:
;
Mul_1Mula/readx2*
T0*
_output_shapes
:
;
y2AddMul_1c/read*
T0*
_output_shapes
:
i
ConstConst*
dtype0*4
value+B) B#/tmp/original/export/assets/foo.txt*
_output_shapes
: 
e
filename_tensor/initial_valueConst*
dtype0*
valueB Bfoo.txt*
_output_shapes
: 
s
filename_tensor
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
?
filename_tensor/AssignAssignfilename_tensorfilename_tensor/initial_value*
validate_shape(*"
_class
loc:@filename_tensor*
use_locking(*
T0*
_output_shapes
: 
v
filename_tensor/readIdentityfilename_tensor*"
_class
loc:@filename_tensor*
T0*
_output_shapes
: 
T
Assign/valueConst*
dtype0*
valueB Bfoo.txt*
_output_shapes
: 
?
AssignAssignfilename_tensorAssign/value*
validate_shape(*"
_class
loc:@filename_tensor*
use_locking( *
T0*
_output_shapes
: 
I
IdentityIdentityy*
T0*'
_output_shapes
:?????????
-
initNoOp	^a/Assign	^b/Assign	^c/Assign


group_depsNoOp^Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_96db3205096a42d8ae61f70f9b0c646c/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
h
save/SaveV2/tensor_namesConst*
dtype0*
valueBBaBbBc*
_output_shapes
:
i
save/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B B *
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesabc*
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
e
save/RestoreV2/tensor_namesConst*
dtype0*
valueBBa*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/AssignAssignasave/RestoreV2*
validate_shape(*
_class

loc:@a*
use_locking(*
T0*
_output_shapes
: 
g
save/RestoreV2_1/tensor_namesConst*
dtype0*
valueBBb*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
?
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_1Assignbsave/RestoreV2_1*
validate_shape(*
_class

loc:@b*
use_locking(*
T0*
_output_shapes
: 
g
save/RestoreV2_2/tensor_namesConst*
dtype0*
valueBBc*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
?
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
?
save/Assign_2Assigncsave/RestoreV2_2*
validate_shape(*
_class

loc:@c*
use_locking(*
T0*
_output_shapes
: 
H
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
asset_filepaths
	
Const:0"`
	variablesSQ

a:0a/Assigna/read:0

b:0b/Assignb/read:0

c:0c/Assignc/read:0"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt" 
legacy_init_op


group_deps"j
trainable_variablesSQ

a:0a/Assigna/read:0

b:0b/Assignb/read:0

c:0c/Assignc/read:0*K
serving_default8

x
x:0
y
y:0tensorflow/serving/predict*q
tensorflow/serving/regressS

inputs
tf_example:0
outputs

Identity:0tensorflow/serving/regress