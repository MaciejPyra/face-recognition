??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:*
dtype0
?
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
:*
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
:*
dtype0
?
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
: *
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
: *
dtype0
?
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
: *
dtype0
?
conv2d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_64/kernel
}
$conv2d_64/kernel/Read/ReadVariableOpReadVariableOpconv2d_64/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_64/bias
m
"conv2d_64/bias/Read/ReadVariableOpReadVariableOpconv2d_64/bias*
_output_shapes
:@*
dtype0
|
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_36/kernel
u
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel* 
_output_shapes
:
??*
dtype0
s
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_36/bias
l
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes	
:?*
dtype0
|
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_37/kernel
u
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel* 
_output_shapes
:
??*
dtype0
s
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_37/bias
l
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes	
:?*
dtype0
{
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_38/kernel
t
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes
:	?*
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_60/kernel/m
?
+Adam/conv2d_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_60/bias/m
{
)Adam/conv2d_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_61/kernel/m
?
+Adam/conv2d_61/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_61/bias/m
{
)Adam/conv2d_61/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_62/kernel/m
?
+Adam/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_62/bias/m
{
)Adam/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_63/kernel/m
?
+Adam/conv2d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_63/bias/m
{
)Adam/conv2d_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_64/kernel/m
?
+Adam/conv2d_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_64/bias/m
{
)Adam/conv2d_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_36/kernel/m
?
*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_36/bias/m
z
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_37/kernel/m
?
*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_37/bias/m
z
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_38/kernel/m
?
*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/m
y
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_60/kernel/v
?
+Adam/conv2d_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_60/bias/v
{
)Adam/conv2d_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_60/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_61/kernel/v
?
+Adam/conv2d_61/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_61/bias/v
{
)Adam/conv2d_61/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_61/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_62/kernel/v
?
+Adam/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_62/bias/v
{
)Adam/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_62/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_63/kernel/v
?
+Adam/conv2d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_63/bias/v
{
)Adam/conv2d_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_63/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_64/kernel/v
?
+Adam/conv2d_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_64/bias/v
{
)Adam/conv2d_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_36/kernel/v
?
*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_36/bias/v
z
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_37/kernel/v
?
*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_37/bias/v
z
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_38/kernel/v
?
*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/v
y
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?_
value?_B?_ B?_
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
R
%	variables
&regularization_losses
'trainable_variables
(	keras_api
h

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
R
/	variables
0regularization_losses
1trainable_variables
2	keras_api
h

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
R
9	variables
:regularization_losses
;trainable_variables
<	keras_api
h

=kernel
>bias
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
R
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
h

Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
h

Qkernel
Rbias
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
h

Wkernel
Xbias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
?
]iter

^beta_1

_beta_2
	`decay
alearning_ratem?m?m? m?)m?*m?3m?4m?=m?>m?Km?Lm?Qm?Rm?Wm?Xm?v?v?v? v?)v?*v?3v?4v?=v?>v?Kv?Lv?Qv?Rv?Wv?Xv?
 
v
0
1
2
 3
)4
*5
36
47
=8
>9
K10
L11
Q12
R13
W14
X15
v
0
1
2
 3
)4
*5
36
47
=8
>9
K10
L11
Q12
R13
W14
X15
?
regularization_losses
trainable_variables
bmetrics
clayer_metrics
dnon_trainable_variables
	variables

elayers
flayer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
	variables
regularization_losses
trainable_variables
glayer_metrics
hnon_trainable_variables
imetrics

jlayers
klayer_regularization_losses
 
 
 
?
	variables
regularization_losses
trainable_variables
llayer_metrics
mnon_trainable_variables
nmetrics

olayers
player_regularization_losses
\Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
?
!	variables
"regularization_losses
#trainable_variables
qlayer_metrics
rnon_trainable_variables
smetrics

tlayers
ulayer_regularization_losses
 
 
 
?
%	variables
&regularization_losses
'trainable_variables
vlayer_metrics
wnon_trainable_variables
xmetrics

ylayers
zlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
 

)0
*1
?
+	variables
,regularization_losses
-trainable_variables
{layer_metrics
|non_trainable_variables
}metrics

~layers
layer_regularization_losses
 
 
 
?
/	variables
0regularization_losses
1trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 

30
41
?
5	variables
6regularization_losses
7trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
 
 
 
?
9	variables
:regularization_losses
;trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_64/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_64/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1
 

=0
>1
?
?	variables
@regularization_losses
Atrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
 
 
 
?
C	variables
Dregularization_losses
Etrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
 
 
 
?
G	variables
Hregularization_losses
Itrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_36/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1
 

K0
L1
?
M	variables
Nregularization_losses
Otrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_37/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

Q0
R1
 

Q0
R1
?
S	variables
Tregularization_losses
Utrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_38/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

W0
X1
 

W0
X1
?
Y	variables
Zregularization_losses
[trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 
 
f
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_60/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_61/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_64/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_64/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_36/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_60/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_60/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_61/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_61/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_62/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_62/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_63/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_63/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_64/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_64/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_36/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_36/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv2d_60_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_60_inputconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_105041
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp$conv2d_64/kernel/Read/ReadVariableOp"conv2d_64/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_60/kernel/m/Read/ReadVariableOp)Adam/conv2d_60/bias/m/Read/ReadVariableOp+Adam/conv2d_61/kernel/m/Read/ReadVariableOp)Adam/conv2d_61/bias/m/Read/ReadVariableOp+Adam/conv2d_62/kernel/m/Read/ReadVariableOp)Adam/conv2d_62/bias/m/Read/ReadVariableOp+Adam/conv2d_63/kernel/m/Read/ReadVariableOp)Adam/conv2d_63/bias/m/Read/ReadVariableOp+Adam/conv2d_64/kernel/m/Read/ReadVariableOp)Adam/conv2d_64/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp+Adam/conv2d_60/kernel/v/Read/ReadVariableOp)Adam/conv2d_60/bias/v/Read/ReadVariableOp+Adam/conv2d_61/kernel/v/Read/ReadVariableOp)Adam/conv2d_61/bias/v/Read/ReadVariableOp+Adam/conv2d_62/kernel/v/Read/ReadVariableOp)Adam/conv2d_62/bias/v/Read/ReadVariableOp+Adam/conv2d_63/kernel/v/Read/ReadVariableOp)Adam/conv2d_63/bias/v/Read/ReadVariableOp+Adam/conv2d_64/kernel/v/Read/ReadVariableOp)Adam/conv2d_64/bias/v/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
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
__inference__traced_save_105614
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_60/kernel/mAdam/conv2d_60/bias/mAdam/conv2d_61/kernel/mAdam/conv2d_61/bias/mAdam/conv2d_62/kernel/mAdam/conv2d_62/bias/mAdam/conv2d_63/kernel/mAdam/conv2d_63/bias/mAdam/conv2d_64/kernel/mAdam/conv2d_64/bias/mAdam/dense_36/kernel/mAdam/dense_36/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/dense_38/kernel/mAdam/dense_38/bias/mAdam/conv2d_60/kernel/vAdam/conv2d_60/bias/vAdam/conv2d_61/kernel/vAdam/conv2d_61/bias/vAdam/conv2d_62/kernel/vAdam/conv2d_62/bias/vAdam/conv2d_63/kernel/vAdam/conv2d_63/bias/vAdam/conv2d_64/kernel/vAdam/conv2d_64/bias/vAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/vAdam/dense_38/kernel/vAdam/dense_38/bias/v*E
Tin>
<2:*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_105795??	
?
h
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_104523

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

*__inference_conv2d_64_layer_call_fn_105349

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
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_1046562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
E__inference_conv2d_63_layer_call_and_return_conditional_losses_105320

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????   ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_53_layer_call_fn_104517

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_1045112
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_54_layer_call_fn_104529

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_1045232
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_104475

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_105041
conv2d_60_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1044692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_60_input
?
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_104679

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?>
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_104769
conv2d_60_input
conv2d_60_104555
conv2d_60_104557
conv2d_61_104583
conv2d_61_104585
conv2d_62_104611
conv2d_62_104613
conv2d_63_104639
conv2d_63_104641
conv2d_64_104667
conv2d_64_104669
dense_36_104709
dense_36_104711
dense_37_104736
dense_37_104738
dense_38_104763
dense_38_104765
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall? dense_36/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_104555conv2d_60_104557*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1045442#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1044752"
 max_pooling2d_50/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_61_104583conv2d_61_104585*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1045722#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_1044872"
 max_pooling2d_51/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_62_104611conv2d_62_104613*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1046002#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_1044992"
 max_pooling2d_52/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_63_104639conv2d_63_104641*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_1046282#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_1045112"
 max_pooling2d_53/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_64_104667conv2d_64_104669*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_1046562#
!conv2d_64/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_1045232"
 max_pooling2d_54/PartitionedCall?
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_1046792
flatten_12/PartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_36_104709dense_36_104711*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_1046982"
 dense_36/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_104736dense_37_104738*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1047252"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_104763dense_38_104765*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1047522"
 dense_38/StatefulPartitionedCall?
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_60_input
?	
?
D__inference_dense_38_layer_call_and_return_conditional_losses_104752

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_12_layer_call_fn_105249

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_1049592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

*__inference_conv2d_63_layer_call_fn_105329

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
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_1046282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????   ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_104499

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_12_layer_call_fn_105212

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_1048722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?>
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_104819
conv2d_60_input
conv2d_60_104772
conv2d_60_104774
conv2d_61_104778
conv2d_61_104780
conv2d_62_104784
conv2d_62_104786
conv2d_63_104790
conv2d_63_104792
conv2d_64_104796
conv2d_64_104798
dense_36_104803
dense_36_104805
dense_37_104808
dense_37_104810
dense_38_104813
dense_38_104815
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall? dense_36/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_104772conv2d_60_104774*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1045442#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1044752"
 max_pooling2d_50/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_61_104778conv2d_61_104780*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1045722#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_1044872"
 max_pooling2d_51/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_62_104784conv2d_62_104786*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1046002#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_1044992"
 max_pooling2d_52/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_63_104790conv2d_63_104792*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_1046282#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_1045112"
 max_pooling2d_53/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_64_104796conv2d_64_104798*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_1046562#
!conv2d_64/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_1045232"
 max_pooling2d_54/PartitionedCall?
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_1046792
flatten_12/PartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_36_104803dense_36_104805*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_1046982"
 dense_36/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_104808dense_37_104810*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1047252"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_104813dense_38_104815*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1047522"
 dense_38/StatefulPartitionedCall?
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_60_input
?

*__inference_conv2d_62_layer_call_fn_105309

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
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1046002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_105355

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_conv2d_63_layer_call_and_return_conditional_losses_104628

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????   ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?

?
.__inference_sequential_12_layer_call_fn_104907
conv2d_60_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_1048722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_60_input
?>
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_104959

inputs
conv2d_60_104912
conv2d_60_104914
conv2d_61_104918
conv2d_61_104920
conv2d_62_104924
conv2d_62_104926
conv2d_63_104930
conv2d_63_104932
conv2d_64_104936
conv2d_64_104938
dense_36_104943
dense_36_104945
dense_37_104948
dense_37_104950
dense_38_104953
dense_38_104955
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall? dense_36/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_104912conv2d_60_104914*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1045442#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1044752"
 max_pooling2d_50/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_61_104918conv2d_61_104920*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1045722#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_1044872"
 max_pooling2d_51/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_62_104924conv2d_62_104926*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1046002#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_1044992"
 max_pooling2d_52/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_63_104930conv2d_63_104932*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_1046282#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_1045112"
 max_pooling2d_53/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_64_104936conv2d_64_104938*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_1046562#
!conv2d_64/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_1045232"
 max_pooling2d_54/PartitionedCall?
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_1046792
flatten_12/PartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_36_104943dense_36_104945*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_1046982"
 dense_36/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_104948dense_37_104950*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1047252"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_104953dense_38_104955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1047522"
 dense_38/StatefulPartitionedCall?
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_104600

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?	
?
D__inference_dense_37_layer_call_and_return_conditional_losses_104725

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_52_layer_call_fn_104505

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_1044992
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_37_layer_call_and_return_conditional_losses_105391

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_60_layer_call_and_return_conditional_losses_105260

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_61_layer_call_and_return_conditional_losses_105280

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_51_layer_call_fn_104493

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_1044872
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_12_layer_call_fn_104994
conv2d_60_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_1049592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_60_input
?Y
?

I__inference_sequential_12_layer_call_and_return_conditional_losses_105175

inputs,
(conv2d_60_conv2d_readvariableop_resource-
)conv2d_60_biasadd_readvariableop_resource,
(conv2d_61_conv2d_readvariableop_resource-
)conv2d_61_biasadd_readvariableop_resource,
(conv2d_62_conv2d_readvariableop_resource-
)conv2d_62_biasadd_readvariableop_resource,
(conv2d_63_conv2d_readvariableop_resource-
)conv2d_63_biasadd_readvariableop_resource,
(conv2d_64_conv2d_readvariableop_resource-
)conv2d_64_biasadd_readvariableop_resource+
'dense_36_matmul_readvariableop_resource,
(dense_36_biasadd_readvariableop_resource+
'dense_37_matmul_readvariableop_resource,
(dense_37_biasadd_readvariableop_resource+
'dense_38_matmul_readvariableop_resource,
(dense_38_biasadd_readvariableop_resource
identity?? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_60/Conv2D/ReadVariableOp?
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_60/Conv2D?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_60/BiasAdd?
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_60/Relu?
max_pooling2d_50/MaxPoolMaxPoolconv2d_60/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_50/MaxPool?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2D!max_pooling2d_50/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_61/BiasAdd?
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_61/Relu?
max_pooling2d_51/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_51/MaxPool?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2D!max_pooling2d_51/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_62/Relu?
max_pooling2d_52/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_63/Relu?
max_pooling2d_53/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPool?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_64/Conv2D/ReadVariableOp?
conv2d_64/Conv2DConv2D!max_pooling2d_53/MaxPool:output:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_64/Conv2D?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_64/Relu?
max_pooling2d_54/MaxPoolMaxPoolconv2d_64/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_54/MaxPoolu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
flatten_12/Const?
flatten_12/ReshapeReshape!max_pooling2d_54/MaxPool:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_12/Reshape?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_36/MatMul/ReadVariableOp?
dense_36/MatMulMatMulflatten_12/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/MatMul?
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_36/BiasAdd/ReadVariableOp?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/BiasAddt
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_36/Relu?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/BiasAddt
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_37/Relu?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_38/BiasAdd|
dense_38/SoftmaxSoftmaxdense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_38/Softmax?
IdentityIdentitydense_38/Softmax:softmax:0!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
~
)__inference_dense_38_layer_call_fn_105420

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
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1047522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_37_layer_call_fn_105400

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1047252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_104487

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

*__inference_conv2d_61_layer_call_fn_105289

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
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1045722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_60_layer_call_and_return_conditional_losses_104544

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?s
?
__inference__traced_save_105614
file_prefix/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop/
+savev2_conv2d_64_kernel_read_readvariableop-
)savev2_conv2d_64_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_60_kernel_m_read_readvariableop4
0savev2_adam_conv2d_60_bias_m_read_readvariableop6
2savev2_adam_conv2d_61_kernel_m_read_readvariableop4
0savev2_adam_conv2d_61_bias_m_read_readvariableop6
2savev2_adam_conv2d_62_kernel_m_read_readvariableop4
0savev2_adam_conv2d_62_bias_m_read_readvariableop6
2savev2_adam_conv2d_63_kernel_m_read_readvariableop4
0savev2_adam_conv2d_63_bias_m_read_readvariableop6
2savev2_adam_conv2d_64_kernel_m_read_readvariableop4
0savev2_adam_conv2d_64_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableop6
2savev2_adam_conv2d_60_kernel_v_read_readvariableop4
0savev2_adam_conv2d_60_bias_v_read_readvariableop6
2savev2_adam_conv2d_61_kernel_v_read_readvariableop4
0savev2_adam_conv2d_61_bias_v_read_readvariableop6
2savev2_adam_conv2d_62_kernel_v_read_readvariableop4
0savev2_adam_conv2d_62_bias_v_read_readvariableop6
2savev2_adam_conv2d_63_kernel_v_read_readvariableop4
0savev2_adam_conv2d_63_bias_v_read_readvariableop6
2savev2_adam_conv2d_64_kernel_v_read_readvariableop4
0savev2_adam_conv2d_64_bias_v_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableop
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
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
ShardedFilename? 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop+savev2_conv2d_64_kernel_read_readvariableop)savev2_conv2d_64_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_60_kernel_m_read_readvariableop0savev2_adam_conv2d_60_bias_m_read_readvariableop2savev2_adam_conv2d_61_kernel_m_read_readvariableop0savev2_adam_conv2d_61_bias_m_read_readvariableop2savev2_adam_conv2d_62_kernel_m_read_readvariableop0savev2_adam_conv2d_62_bias_m_read_readvariableop2savev2_adam_conv2d_63_kernel_m_read_readvariableop0savev2_adam_conv2d_63_bias_m_read_readvariableop2savev2_adam_conv2d_64_kernel_m_read_readvariableop0savev2_adam_conv2d_64_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop2savev2_adam_conv2d_60_kernel_v_read_readvariableop0savev2_adam_conv2d_60_bias_v_read_readvariableop2savev2_adam_conv2d_61_kernel_v_read_readvariableop0savev2_adam_conv2d_61_bias_v_read_readvariableop2savev2_adam_conv2d_62_kernel_v_read_readvariableop0savev2_adam_conv2d_62_bias_v_read_readvariableop2savev2_adam_conv2d_63_kernel_v_read_readvariableop0savev2_adam_conv2d_63_bias_v_read_readvariableop2savev2_adam_conv2d_64_kernel_v_read_readvariableop0savev2_adam_conv2d_64_bias_v_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::: : :  : : @:@:
??:?:
??:?:	?:: : : : : : : : : ::::: : :  : : @:@:
??:?:
??:?:	?:::::: : :  : : @:@:
??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,	(
&
_output_shapes
: @: 


_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :, (
&
_output_shapes
:  : !

_output_shapes
: :,"(
&
_output_shapes
: @: #

_output_shapes
:@:&$"
 
_output_shapes
:
??:!%

_output_shapes	
:?:&&"
 
_output_shapes
:
??:!'

_output_shapes	
:?:%(!

_output_shapes
:	?: )

_output_shapes
::,*(
&
_output_shapes
:: +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
: : /

_output_shapes
: :,0(
&
_output_shapes
:  : 1

_output_shapes
: :,2(
&
_output_shapes
: @: 3

_output_shapes
:@:&4"
 
_output_shapes
:
??:!5

_output_shapes	
:?:&6"
 
_output_shapes
:
??:!7

_output_shapes	
:?:%8!

_output_shapes
:	?: 9

_output_shapes
:::

_output_shapes
: 
?

?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_105300

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_105795
file_prefix%
!assignvariableop_conv2d_60_kernel%
!assignvariableop_1_conv2d_60_bias'
#assignvariableop_2_conv2d_61_kernel%
!assignvariableop_3_conv2d_61_bias'
#assignvariableop_4_conv2d_62_kernel%
!assignvariableop_5_conv2d_62_bias'
#assignvariableop_6_conv2d_63_kernel%
!assignvariableop_7_conv2d_63_bias'
#assignvariableop_8_conv2d_64_kernel%
!assignvariableop_9_conv2d_64_bias'
#assignvariableop_10_dense_36_kernel%
!assignvariableop_11_dense_36_bias'
#assignvariableop_12_dense_37_kernel%
!assignvariableop_13_dense_37_bias'
#assignvariableop_14_dense_38_kernel%
!assignvariableop_15_dense_38_bias!
assignvariableop_16_adam_iter#
assignvariableop_17_adam_beta_1#
assignvariableop_18_adam_beta_2"
assignvariableop_19_adam_decay*
&assignvariableop_20_adam_learning_rate
assignvariableop_21_total
assignvariableop_22_count
assignvariableop_23_total_1
assignvariableop_24_count_1/
+assignvariableop_25_adam_conv2d_60_kernel_m-
)assignvariableop_26_adam_conv2d_60_bias_m/
+assignvariableop_27_adam_conv2d_61_kernel_m-
)assignvariableop_28_adam_conv2d_61_bias_m/
+assignvariableop_29_adam_conv2d_62_kernel_m-
)assignvariableop_30_adam_conv2d_62_bias_m/
+assignvariableop_31_adam_conv2d_63_kernel_m-
)assignvariableop_32_adam_conv2d_63_bias_m/
+assignvariableop_33_adam_conv2d_64_kernel_m-
)assignvariableop_34_adam_conv2d_64_bias_m.
*assignvariableop_35_adam_dense_36_kernel_m,
(assignvariableop_36_adam_dense_36_bias_m.
*assignvariableop_37_adam_dense_37_kernel_m,
(assignvariableop_38_adam_dense_37_bias_m.
*assignvariableop_39_adam_dense_38_kernel_m,
(assignvariableop_40_adam_dense_38_bias_m/
+assignvariableop_41_adam_conv2d_60_kernel_v-
)assignvariableop_42_adam_conv2d_60_bias_v/
+assignvariableop_43_adam_conv2d_61_kernel_v-
)assignvariableop_44_adam_conv2d_61_bias_v/
+assignvariableop_45_adam_conv2d_62_kernel_v-
)assignvariableop_46_adam_conv2d_62_bias_v/
+assignvariableop_47_adam_conv2d_63_kernel_v-
)assignvariableop_48_adam_conv2d_63_bias_v/
+assignvariableop_49_adam_conv2d_64_kernel_v-
)assignvariableop_50_adam_conv2d_64_bias_v.
*assignvariableop_51_adam_dense_36_kernel_v,
(assignvariableop_52_adam_dense_36_bias_v.
*assignvariableop_53_adam_dense_37_kernel_v,
(assignvariableop_54_adam_dense_37_bias_v.
*assignvariableop_55_adam_dense_38_kernel_v,
(assignvariableop_56_adam_dense_38_bias_v
identity_58??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9? 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_61_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_61_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_63_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_63_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_64_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_64_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_36_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_36_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_37_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_37_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_38_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_38_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_60_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_60_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_61_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_61_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_62_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_62_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_63_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_63_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_64_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_64_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_36_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_36_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_37_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_37_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_38_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_38_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_60_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_60_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_61_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_61_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_62_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_62_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_63_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_63_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_64_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_64_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_36_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_36_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_37_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_37_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_38_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_38_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57?

Identity_58IdentityIdentity_57:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_58"#
identity_58Identity_58:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
D__inference_dense_36_layer_call_and_return_conditional_losses_104698

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_104511

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?s
?
!__inference__wrapped_model_104469
conv2d_60_input:
6sequential_12_conv2d_60_conv2d_readvariableop_resource;
7sequential_12_conv2d_60_biasadd_readvariableop_resource:
6sequential_12_conv2d_61_conv2d_readvariableop_resource;
7sequential_12_conv2d_61_biasadd_readvariableop_resource:
6sequential_12_conv2d_62_conv2d_readvariableop_resource;
7sequential_12_conv2d_62_biasadd_readvariableop_resource:
6sequential_12_conv2d_63_conv2d_readvariableop_resource;
7sequential_12_conv2d_63_biasadd_readvariableop_resource:
6sequential_12_conv2d_64_conv2d_readvariableop_resource;
7sequential_12_conv2d_64_biasadd_readvariableop_resource9
5sequential_12_dense_36_matmul_readvariableop_resource:
6sequential_12_dense_36_biasadd_readvariableop_resource9
5sequential_12_dense_37_matmul_readvariableop_resource:
6sequential_12_dense_37_biasadd_readvariableop_resource9
5sequential_12_dense_38_matmul_readvariableop_resource:
6sequential_12_dense_38_biasadd_readvariableop_resource
identity??.sequential_12/conv2d_60/BiasAdd/ReadVariableOp?-sequential_12/conv2d_60/Conv2D/ReadVariableOp?.sequential_12/conv2d_61/BiasAdd/ReadVariableOp?-sequential_12/conv2d_61/Conv2D/ReadVariableOp?.sequential_12/conv2d_62/BiasAdd/ReadVariableOp?-sequential_12/conv2d_62/Conv2D/ReadVariableOp?.sequential_12/conv2d_63/BiasAdd/ReadVariableOp?-sequential_12/conv2d_63/Conv2D/ReadVariableOp?.sequential_12/conv2d_64/BiasAdd/ReadVariableOp?-sequential_12/conv2d_64/Conv2D/ReadVariableOp?-sequential_12/dense_36/BiasAdd/ReadVariableOp?,sequential_12/dense_36/MatMul/ReadVariableOp?-sequential_12/dense_37/BiasAdd/ReadVariableOp?,sequential_12/dense_37/MatMul/ReadVariableOp?-sequential_12/dense_38/BiasAdd/ReadVariableOp?,sequential_12/dense_38/MatMul/ReadVariableOp?
-sequential_12/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_12/conv2d_60/Conv2D/ReadVariableOp?
sequential_12/conv2d_60/Conv2DConv2Dconv2d_60_input5sequential_12/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2 
sequential_12/conv2d_60/Conv2D?
.sequential_12/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_12/conv2d_60/BiasAdd/ReadVariableOp?
sequential_12/conv2d_60/BiasAddBiasAdd'sequential_12/conv2d_60/Conv2D:output:06sequential_12/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2!
sequential_12/conv2d_60/BiasAdd?
sequential_12/conv2d_60/ReluRelu(sequential_12/conv2d_60/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
sequential_12/conv2d_60/Relu?
&sequential_12/max_pooling2d_50/MaxPoolMaxPool*sequential_12/conv2d_60/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2(
&sequential_12/max_pooling2d_50/MaxPool?
-sequential_12/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_12/conv2d_61/Conv2D/ReadVariableOp?
sequential_12/conv2d_61/Conv2DConv2D/sequential_12/max_pooling2d_50/MaxPool:output:05sequential_12/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2 
sequential_12/conv2d_61/Conv2D?
.sequential_12/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_12/conv2d_61/BiasAdd/ReadVariableOp?
sequential_12/conv2d_61/BiasAddBiasAdd'sequential_12/conv2d_61/Conv2D:output:06sequential_12/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2!
sequential_12/conv2d_61/BiasAdd?
sequential_12/conv2d_61/ReluRelu(sequential_12/conv2d_61/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
sequential_12/conv2d_61/Relu?
&sequential_12/max_pooling2d_51/MaxPoolMaxPool*sequential_12/conv2d_61/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2(
&sequential_12/max_pooling2d_51/MaxPool?
-sequential_12/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_12/conv2d_62/Conv2D/ReadVariableOp?
sequential_12/conv2d_62/Conv2DConv2D/sequential_12/max_pooling2d_51/MaxPool:output:05sequential_12/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2 
sequential_12/conv2d_62/Conv2D?
.sequential_12/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_12/conv2d_62/BiasAdd/ReadVariableOp?
sequential_12/conv2d_62/BiasAddBiasAdd'sequential_12/conv2d_62/Conv2D:output:06sequential_12/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2!
sequential_12/conv2d_62/BiasAdd?
sequential_12/conv2d_62/ReluRelu(sequential_12/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
sequential_12/conv2d_62/Relu?
&sequential_12/max_pooling2d_52/MaxPoolMaxPool*sequential_12/conv2d_62/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2(
&sequential_12/max_pooling2d_52/MaxPool?
-sequential_12/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02/
-sequential_12/conv2d_63/Conv2D/ReadVariableOp?
sequential_12/conv2d_63/Conv2DConv2D/sequential_12/max_pooling2d_52/MaxPool:output:05sequential_12/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2 
sequential_12/conv2d_63/Conv2D?
.sequential_12/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_12/conv2d_63/BiasAdd/ReadVariableOp?
sequential_12/conv2d_63/BiasAddBiasAdd'sequential_12/conv2d_63/Conv2D:output:06sequential_12/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2!
sequential_12/conv2d_63/BiasAdd?
sequential_12/conv2d_63/ReluRelu(sequential_12/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_12/conv2d_63/Relu?
&sequential_12/max_pooling2d_53/MaxPoolMaxPool*sequential_12/conv2d_63/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2(
&sequential_12/max_pooling2d_53/MaxPool?
-sequential_12/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_12_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_12/conv2d_64/Conv2D/ReadVariableOp?
sequential_12/conv2d_64/Conv2DConv2D/sequential_12/max_pooling2d_53/MaxPool:output:05sequential_12/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2 
sequential_12/conv2d_64/Conv2D?
.sequential_12/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_12_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_12/conv2d_64/BiasAdd/ReadVariableOp?
sequential_12/conv2d_64/BiasAddBiasAdd'sequential_12/conv2d_64/Conv2D:output:06sequential_12/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2!
sequential_12/conv2d_64/BiasAdd?
sequential_12/conv2d_64/ReluRelu(sequential_12/conv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_12/conv2d_64/Relu?
&sequential_12/max_pooling2d_54/MaxPoolMaxPool*sequential_12/conv2d_64/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_12/max_pooling2d_54/MaxPool?
sequential_12/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2 
sequential_12/flatten_12/Const?
 sequential_12/flatten_12/ReshapeReshape/sequential_12/max_pooling2d_54/MaxPool:output:0'sequential_12/flatten_12/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_12/flatten_12/Reshape?
,sequential_12/dense_36/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_12/dense_36/MatMul/ReadVariableOp?
sequential_12/dense_36/MatMulMatMul)sequential_12/flatten_12/Reshape:output:04sequential_12/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_12/dense_36/MatMul?
-sequential_12/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_12/dense_36/BiasAdd/ReadVariableOp?
sequential_12/dense_36/BiasAddBiasAdd'sequential_12/dense_36/MatMul:product:05sequential_12/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_12/dense_36/BiasAdd?
sequential_12/dense_36/ReluRelu'sequential_12/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_12/dense_36/Relu?
,sequential_12/dense_37/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_12/dense_37/MatMul/ReadVariableOp?
sequential_12/dense_37/MatMulMatMul)sequential_12/dense_36/Relu:activations:04sequential_12/dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_12/dense_37/MatMul?
-sequential_12/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_12/dense_37/BiasAdd/ReadVariableOp?
sequential_12/dense_37/BiasAddBiasAdd'sequential_12/dense_37/MatMul:product:05sequential_12/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_12/dense_37/BiasAdd?
sequential_12/dense_37/ReluRelu'sequential_12/dense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_12/dense_37/Relu?
,sequential_12/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_38_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_12/dense_38/MatMul/ReadVariableOp?
sequential_12/dense_38/MatMulMatMul)sequential_12/dense_37/Relu:activations:04sequential_12/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_12/dense_38/MatMul?
-sequential_12/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_12/dense_38/BiasAdd/ReadVariableOp?
sequential_12/dense_38/BiasAddBiasAdd'sequential_12/dense_38/MatMul:product:05sequential_12/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_12/dense_38/BiasAdd?
sequential_12/dense_38/SoftmaxSoftmax'sequential_12/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_12/dense_38/Softmax?
IdentityIdentity(sequential_12/dense_38/Softmax:softmax:0/^sequential_12/conv2d_60/BiasAdd/ReadVariableOp.^sequential_12/conv2d_60/Conv2D/ReadVariableOp/^sequential_12/conv2d_61/BiasAdd/ReadVariableOp.^sequential_12/conv2d_61/Conv2D/ReadVariableOp/^sequential_12/conv2d_62/BiasAdd/ReadVariableOp.^sequential_12/conv2d_62/Conv2D/ReadVariableOp/^sequential_12/conv2d_63/BiasAdd/ReadVariableOp.^sequential_12/conv2d_63/Conv2D/ReadVariableOp/^sequential_12/conv2d_64/BiasAdd/ReadVariableOp.^sequential_12/conv2d_64/Conv2D/ReadVariableOp.^sequential_12/dense_36/BiasAdd/ReadVariableOp-^sequential_12/dense_36/MatMul/ReadVariableOp.^sequential_12/dense_37/BiasAdd/ReadVariableOp-^sequential_12/dense_37/MatMul/ReadVariableOp.^sequential_12/dense_38/BiasAdd/ReadVariableOp-^sequential_12/dense_38/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2`
.sequential_12/conv2d_60/BiasAdd/ReadVariableOp.sequential_12/conv2d_60/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_60/Conv2D/ReadVariableOp-sequential_12/conv2d_60/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_61/BiasAdd/ReadVariableOp.sequential_12/conv2d_61/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_61/Conv2D/ReadVariableOp-sequential_12/conv2d_61/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_62/BiasAdd/ReadVariableOp.sequential_12/conv2d_62/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_62/Conv2D/ReadVariableOp-sequential_12/conv2d_62/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_63/BiasAdd/ReadVariableOp.sequential_12/conv2d_63/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_63/Conv2D/ReadVariableOp-sequential_12/conv2d_63/Conv2D/ReadVariableOp2`
.sequential_12/conv2d_64/BiasAdd/ReadVariableOp.sequential_12/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_12/conv2d_64/Conv2D/ReadVariableOp-sequential_12/conv2d_64/Conv2D/ReadVariableOp2^
-sequential_12/dense_36/BiasAdd/ReadVariableOp-sequential_12/dense_36/BiasAdd/ReadVariableOp2\
,sequential_12/dense_36/MatMul/ReadVariableOp,sequential_12/dense_36/MatMul/ReadVariableOp2^
-sequential_12/dense_37/BiasAdd/ReadVariableOp-sequential_12/dense_37/BiasAdd/ReadVariableOp2\
,sequential_12/dense_37/MatMul/ReadVariableOp,sequential_12/dense_37/MatMul/ReadVariableOp2^
-sequential_12/dense_38/BiasAdd/ReadVariableOp-sequential_12/dense_38/BiasAdd/ReadVariableOp2\
,sequential_12/dense_38/MatMul/ReadVariableOp,sequential_12/dense_38/MatMul/ReadVariableOp:b ^
1
_output_shapes
:???????????
)
_user_specified_nameconv2d_60_input
?>
?
I__inference_sequential_12_layer_call_and_return_conditional_losses_104872

inputs
conv2d_60_104825
conv2d_60_104827
conv2d_61_104831
conv2d_61_104833
conv2d_62_104837
conv2d_62_104839
conv2d_63_104843
conv2d_63_104845
conv2d_64_104849
conv2d_64_104851
dense_36_104856
dense_36_104858
dense_37_104861
dense_37_104863
dense_38_104866
dense_38_104868
identity??!conv2d_60/StatefulPartitionedCall?!conv2d_61/StatefulPartitionedCall?!conv2d_62/StatefulPartitionedCall?!conv2d_63/StatefulPartitionedCall?!conv2d_64/StatefulPartitionedCall? dense_36/StatefulPartitionedCall? dense_37/StatefulPartitionedCall? dense_38/StatefulPartitionedCall?
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_104825conv2d_60_104827*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1045442#
!conv2d_60/StatefulPartitionedCall?
 max_pooling2d_50/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1044752"
 max_pooling2d_50/PartitionedCall?
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_50/PartitionedCall:output:0conv2d_61_104831conv2d_61_104833*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_1045722#
!conv2d_61/StatefulPartitionedCall?
 max_pooling2d_51/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_1044872"
 max_pooling2d_51/PartitionedCall?
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_51/PartitionedCall:output:0conv2d_62_104837conv2d_62_104839*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_1046002#
!conv2d_62/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????   * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_1044992"
 max_pooling2d_52/PartitionedCall?
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_63_104843conv2d_63_104845*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_1046282#
!conv2d_63/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_1045112"
 max_pooling2d_53/PartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0conv2d_64_104849conv2d_64_104851*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_1046562#
!conv2d_64/StatefulPartitionedCall?
 max_pooling2d_54/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_1045232"
 max_pooling2d_54/PartitionedCall?
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_1046792
flatten_12/PartitionedCall?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_36_104856dense_36_104858*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_1046982"
 dense_36/StatefulPartitionedCall?
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_104861dense_37_104863*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_1047252"
 dense_37/StatefulPartitionedCall?
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_104866dense_38_104868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_1047522"
 dense_38/StatefulPartitionedCall?
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_50_layer_call_fn_104481

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_1044752
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_12_layer_call_fn_105360

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_1046792
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
D__inference_dense_36_layer_call_and_return_conditional_losses_105371

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?Y
?

I__inference_sequential_12_layer_call_and_return_conditional_losses_105108

inputs,
(conv2d_60_conv2d_readvariableop_resource-
)conv2d_60_biasadd_readvariableop_resource,
(conv2d_61_conv2d_readvariableop_resource-
)conv2d_61_biasadd_readvariableop_resource,
(conv2d_62_conv2d_readvariableop_resource-
)conv2d_62_biasadd_readvariableop_resource,
(conv2d_63_conv2d_readvariableop_resource-
)conv2d_63_biasadd_readvariableop_resource,
(conv2d_64_conv2d_readvariableop_resource-
)conv2d_64_biasadd_readvariableop_resource+
'dense_36_matmul_readvariableop_resource,
(dense_36_biasadd_readvariableop_resource+
'dense_37_matmul_readvariableop_resource,
(dense_37_biasadd_readvariableop_resource+
'dense_38_matmul_readvariableop_resource,
(dense_38_biasadd_readvariableop_resource
identity?? conv2d_60/BiasAdd/ReadVariableOp?conv2d_60/Conv2D/ReadVariableOp? conv2d_61/BiasAdd/ReadVariableOp?conv2d_61/Conv2D/ReadVariableOp? conv2d_62/BiasAdd/ReadVariableOp?conv2d_62/Conv2D/ReadVariableOp? conv2d_63/BiasAdd/ReadVariableOp?conv2d_63/Conv2D/ReadVariableOp? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_60/Conv2D/ReadVariableOp?
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_60/Conv2D?
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp?
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_60/BiasAdd?
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_60/Relu?
max_pooling2d_50/MaxPoolMaxPoolconv2d_60/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_50/MaxPool?
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_61/Conv2D/ReadVariableOp?
conv2d_61/Conv2DConv2D!max_pooling2d_50/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_61/Conv2D?
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp?
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_61/BiasAdd?
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_61/Relu?
max_pooling2d_51/MaxPoolMaxPoolconv2d_61/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_51/MaxPool?
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_62/Conv2D/ReadVariableOp?
conv2d_62/Conv2DConv2D!max_pooling2d_51/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2d_62/Conv2D?
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp?
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_62/Relu?
max_pooling2d_52/MaxPoolMaxPoolconv2d_62/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_63/Conv2D/ReadVariableOp?
conv2d_63/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_63/Conv2D?
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp?
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_63/Relu?
max_pooling2d_53/MaxPoolMaxPoolconv2d_63/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPool?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_64/Conv2D/ReadVariableOp?
conv2d_64/Conv2DConv2D!max_pooling2d_53/MaxPool:output:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_64/Conv2D?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_64/Relu?
max_pooling2d_54/MaxPoolMaxPoolconv2d_64/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_54/MaxPoolu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
flatten_12/Const?
flatten_12/ReshapeReshape!max_pooling2d_54/MaxPool:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_12/Reshape?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_36/MatMul/ReadVariableOp?
dense_36/MatMulMatMulflatten_12/Reshape:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/MatMul?
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_36/BiasAdd/ReadVariableOp?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_36/BiasAddt
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_36/Relu?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_37/MatMul/ReadVariableOp?
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/MatMul?
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_37/BiasAdd/ReadVariableOp?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_37/BiasAddt
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_37/Relu?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_38/MatMul/ReadVariableOp?
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_38/MatMul?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_38/BiasAdd/ReadVariableOp?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_38/BiasAdd|
dense_38/SoftmaxSoftmaxdense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_38/Softmax?
IdentityIdentitydense_38/Softmax:softmax:0!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_61_layer_call_and_return_conditional_losses_104572

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
~
)__inference_dense_36_layer_call_fn_105380

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
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_1046982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_38_layer_call_and_return_conditional_losses_105411

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_64_layer_call_and_return_conditional_losses_104656

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

*__inference_conv2d_60_layer_call_fn_105269

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
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_1045442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_64_layer_call_and_return_conditional_losses_105340

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_60_inputB
!serving_default_conv2d_60_input:0???????????<
dense_380
StatefulPartitionedCall:0?????????tensorflow/serving/predict:޺
?r
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?m
_tf_keras_sequential?m{"class_name": "Sequential", "name": "sequential_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_51", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_52", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_53", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_54", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_12", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_36", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_37", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_51", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_52", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_53", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_54", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_12", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_36", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_37", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
?
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_50", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

kernel
 bias
!	variables
"regularization_losses
#trainable_variables
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 16]}}
?
%	variables
&regularization_losses
'trainable_variables
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_51", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

)kernel
*bias
+	variables
,regularization_losses
-trainable_variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 16]}}
?
/	variables
0regularization_losses
1trainable_variables
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_52", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?
9	variables
:regularization_losses
;trainable_variables
<	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_53", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

=kernel
>bias
?	variables
@regularization_losses
Atrainable_variables
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 32]}}
?
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_54", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_12", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_36", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2304}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2304]}}
?

Qkernel
Rbias
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_37", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

Wkernel
Xbias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_38", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
]iter

^beta_1

_beta_2
	`decay
alearning_ratem?m?m? m?)m?*m?3m?4m?=m?>m?Km?Lm?Qm?Rm?Wm?Xm?v?v?v? v?)v?*v?3v?4v?=v?>v?Kv?Lv?Qv?Rv?Wv?Xv?"
	optimizer
 "
trackable_list_wrapper
?
0
1
2
 3
)4
*5
36
47
=8
>9
K10
L11
Q12
R13
W14
X15"
trackable_list_wrapper
?
0
1
2
 3
)4
*5
36
47
=8
>9
K10
L11
Q12
R13
W14
X15"
trackable_list_wrapper
?
regularization_losses
trainable_variables
bmetrics
clayer_metrics
dnon_trainable_variables
	variables

elayers
flayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:(2conv2d_60/kernel
:2conv2d_60/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
	variables
regularization_losses
trainable_variables
glayer_metrics
hnon_trainable_variables
imetrics

jlayers
klayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
regularization_losses
trainable_variables
llayer_metrics
mnon_trainable_variables
nmetrics

olayers
player_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_61/kernel
:2conv2d_61/bias
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
!	variables
"regularization_losses
#trainable_variables
qlayer_metrics
rnon_trainable_variables
smetrics

tlayers
ulayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
%	variables
&regularization_losses
'trainable_variables
vlayer_metrics
wnon_trainable_variables
xmetrics

ylayers
zlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_62/kernel
: 2conv2d_62/bias
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
+	variables
,regularization_losses
-trainable_variables
{layer_metrics
|non_trainable_variables
}metrics

~layers
layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
/	variables
0regularization_losses
1trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_63/kernel
: 2conv2d_63/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
5	variables
6regularization_losses
7trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
9	variables
:regularization_losses
;trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_64/kernel
:@2conv2d_64/bias
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
?
?	variables
@regularization_losses
Atrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
C	variables
Dregularization_losses
Etrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
G	variables
Hregularization_losses
Itrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_36/kernel
:?2dense_36/bias
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
M	variables
Nregularization_losses
Otrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_37/kernel
:?2dense_37/bias
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
?
S	variables
Tregularization_losses
Utrainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_38/kernel
:2dense_38/bias
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
?
Y	variables
Zregularization_losses
[trainable_variables
?layer_metrics
?non_trainable_variables
?metrics
?layers
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:-2Adam/conv2d_60/kernel/m
!:2Adam/conv2d_60/bias/m
/:-2Adam/conv2d_61/kernel/m
!:2Adam/conv2d_61/bias/m
/:- 2Adam/conv2d_62/kernel/m
!: 2Adam/conv2d_62/bias/m
/:-  2Adam/conv2d_63/kernel/m
!: 2Adam/conv2d_63/bias/m
/:- @2Adam/conv2d_64/kernel/m
!:@2Adam/conv2d_64/bias/m
(:&
??2Adam/dense_36/kernel/m
!:?2Adam/dense_36/bias/m
(:&
??2Adam/dense_37/kernel/m
!:?2Adam/dense_37/bias/m
':%	?2Adam/dense_38/kernel/m
 :2Adam/dense_38/bias/m
/:-2Adam/conv2d_60/kernel/v
!:2Adam/conv2d_60/bias/v
/:-2Adam/conv2d_61/kernel/v
!:2Adam/conv2d_61/bias/v
/:- 2Adam/conv2d_62/kernel/v
!: 2Adam/conv2d_62/bias/v
/:-  2Adam/conv2d_63/kernel/v
!: 2Adam/conv2d_63/bias/v
/:- @2Adam/conv2d_64/kernel/v
!:@2Adam/conv2d_64/bias/v
(:&
??2Adam/dense_36/kernel/v
!:?2Adam/dense_36/bias/v
(:&
??2Adam/dense_37/kernel/v
!:?2Adam/dense_37/bias/v
':%	?2Adam/dense_38/kernel/v
 :2Adam/dense_38/bias/v
?2?
!__inference__wrapped_model_104469?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
3?0
conv2d_60_input???????????
?2?
I__inference_sequential_12_layer_call_and_return_conditional_losses_105175
I__inference_sequential_12_layer_call_and_return_conditional_losses_105108
I__inference_sequential_12_layer_call_and_return_conditional_losses_104819
I__inference_sequential_12_layer_call_and_return_conditional_losses_104769?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_sequential_12_layer_call_fn_104907
.__inference_sequential_12_layer_call_fn_105212
.__inference_sequential_12_layer_call_fn_104994
.__inference_sequential_12_layer_call_fn_105249?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_conv2d_60_layer_call_and_return_conditional_losses_105260?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_60_layer_call_fn_105269?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_104475?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_50_layer_call_fn_104481?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_conv2d_61_layer_call_and_return_conditional_losses_105280?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_61_layer_call_fn_105289?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_104487?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_51_layer_call_fn_104493?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_conv2d_62_layer_call_and_return_conditional_losses_105300?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_62_layer_call_fn_105309?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_104499?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_52_layer_call_fn_104505?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_conv2d_63_layer_call_and_return_conditional_losses_105320?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_63_layer_call_fn_105329?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_104511?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_53_layer_call_fn_104517?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_conv2d_64_layer_call_and_return_conditional_losses_105340?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_64_layer_call_fn_105349?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_104523?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_54_layer_call_fn_104529?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_flatten_12_layer_call_and_return_conditional_losses_105355?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_12_layer_call_fn_105360?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_36_layer_call_and_return_conditional_losses_105371?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_36_layer_call_fn_105380?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_37_layer_call_and_return_conditional_losses_105391?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_37_layer_call_fn_105400?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_38_layer_call_and_return_conditional_losses_105411?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_38_layer_call_fn_105420?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_105041conv2d_60_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_104469? )*34=>KLQRWXB??
8?5
3?0
conv2d_60_input???????????
? "3?0
.
dense_38"?
dense_38??????????
E__inference_conv2d_60_layer_call_and_return_conditional_losses_105260p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
*__inference_conv2d_60_layer_call_fn_105269c9?6
/?,
*?'
inputs???????????
? ""?????????????
E__inference_conv2d_61_layer_call_and_return_conditional_losses_105280p 9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
*__inference_conv2d_61_layer_call_fn_105289c 9?6
/?,
*?'
inputs???????????
? ""?????????????
E__inference_conv2d_62_layer_call_and_return_conditional_losses_105300l)*7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@ 
? ?
*__inference_conv2d_62_layer_call_fn_105309_)*7?4
-?*
(?%
inputs?????????@@
? " ??????????@@ ?
E__inference_conv2d_63_layer_call_and_return_conditional_losses_105320l347?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0????????? 
? ?
*__inference_conv2d_63_layer_call_fn_105329_347?4
-?*
(?%
inputs?????????   
? " ?????????? ?
E__inference_conv2d_64_layer_call_and_return_conditional_losses_105340l=>7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
*__inference_conv2d_64_layer_call_fn_105349_=>7?4
-?*
(?%
inputs????????? 
? " ??????????@?
D__inference_dense_36_layer_call_and_return_conditional_losses_105371^KL0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_36_layer_call_fn_105380QKL0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_37_layer_call_and_return_conditional_losses_105391^QR0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_37_layer_call_fn_105400QQR0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_38_layer_call_and_return_conditional_losses_105411]WX0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_38_layer_call_fn_105420PWX0?-
&?#
!?
inputs??????????
? "???????????
F__inference_flatten_12_layer_call_and_return_conditional_losses_105355a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_12_layer_call_fn_105360T7?4
-?*
(?%
inputs?????????@
? "????????????
L__inference_max_pooling2d_50_layer_call_and_return_conditional_losses_104475?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_50_layer_call_fn_104481?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_51_layer_call_and_return_conditional_losses_104487?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_51_layer_call_fn_104493?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_104499?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_52_layer_call_fn_104505?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_104511?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_53_layer_call_fn_104517?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_54_layer_call_and_return_conditional_losses_104523?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_54_layer_call_fn_104529?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_12_layer_call_and_return_conditional_losses_104769? )*34=>KLQRWXJ?G
@?=
3?0
conv2d_60_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_12_layer_call_and_return_conditional_losses_104819? )*34=>KLQRWXJ?G
@?=
3?0
conv2d_60_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_12_layer_call_and_return_conditional_losses_105108| )*34=>KLQRWXA?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_12_layer_call_and_return_conditional_losses_105175| )*34=>KLQRWXA?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
.__inference_sequential_12_layer_call_fn_104907x )*34=>KLQRWXJ?G
@?=
3?0
conv2d_60_input???????????
p

 
? "???????????
.__inference_sequential_12_layer_call_fn_104994x )*34=>KLQRWXJ?G
@?=
3?0
conv2d_60_input???????????
p 

 
? "???????????
.__inference_sequential_12_layer_call_fn_105212o )*34=>KLQRWXA?>
7?4
*?'
inputs???????????
p

 
? "???????????
.__inference_sequential_12_layer_call_fn_105249o )*34=>KLQRWXA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
$__inference_signature_wrapper_105041? )*34=>KLQRWXU?R
? 
K?H
F
conv2d_60_input3?0
conv2d_60_input???????????"3?0
.
dense_38"?
dense_38?????????