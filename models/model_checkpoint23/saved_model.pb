??
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
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
conv2d_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_123/kernel

%conv2d_123/kernel/Read/ReadVariableOpReadVariableOpconv2d_123/kernel*&
_output_shapes
:*
dtype0
v
conv2d_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_123/bias
o
#conv2d_123/bias/Read/ReadVariableOpReadVariableOpconv2d_123/bias*
_output_shapes
:*
dtype0
?
conv2d_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_124/kernel

%conv2d_124/kernel/Read/ReadVariableOpReadVariableOpconv2d_124/kernel*&
_output_shapes
:*
dtype0
v
conv2d_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_124/bias
o
#conv2d_124/bias/Read/ReadVariableOpReadVariableOpconv2d_124/bias*
_output_shapes
:*
dtype0
?
conv2d_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_125/kernel

%conv2d_125/kernel/Read/ReadVariableOpReadVariableOpconv2d_125/kernel*&
_output_shapes
: *
dtype0
v
conv2d_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_125/bias
o
#conv2d_125/bias/Read/ReadVariableOpReadVariableOpconv2d_125/bias*
_output_shapes
: *
dtype0
?
conv2d_126/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_126/kernel

%conv2d_126/kernel/Read/ReadVariableOpReadVariableOpconv2d_126/kernel*&
_output_shapes
:  *
dtype0
v
conv2d_126/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_126/bias
o
#conv2d_126/bias/Read/ReadVariableOpReadVariableOpconv2d_126/bias*
_output_shapes
: *
dtype0
?
conv2d_127/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_127/kernel

%conv2d_127/kernel/Read/ReadVariableOpReadVariableOpconv2d_127/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_127/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_127/bias
o
#conv2d_127/bias/Read/ReadVariableOpReadVariableOpconv2d_127/bias*
_output_shapes
:@*
dtype0
|
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_67/kernel
u
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel* 
_output_shapes
:
??*
dtype0
s
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_67/bias
l
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
_output_shapes	
:?*
dtype0
|
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_68/kernel
u
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel* 
_output_shapes
:
??*
dtype0
s
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_68/bias
l
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes	
:?*
dtype0
{
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_69/kernel
t
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel*
_output_shapes
:	?*
dtype0
r
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_69/bias
k
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
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
Adam/conv2d_123/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_123/kernel/m
?
,Adam/conv2d_123/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_123/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_123/bias/m
}
*Adam/conv2d_123/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_124/kernel/m
?
,Adam/conv2d_124/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/conv2d_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_124/bias/m
}
*Adam/conv2d_124/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_125/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_125/kernel/m
?
,Adam/conv2d_125/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_125/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_125/bias/m
}
*Adam/conv2d_125/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_126/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_126/kernel/m
?
,Adam/conv2d_126/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_126/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_126/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_126/bias/m
}
*Adam/conv2d_126/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_126/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_127/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_127/kernel/m
?
,Adam/conv2d_127/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_127/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_127/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_127/bias/m
}
*Adam/conv2d_127/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_127/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_67/kernel/m
?
*Adam/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_67/bias/m
z
(Adam/dense_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_68/kernel/m
?
*Adam/dense_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_68/bias/m
z
(Adam/dense_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_69/kernel/m
?
*Adam/dense_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/m
y
(Adam/dense_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_123/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_123/kernel/v
?
,Adam/conv2d_123/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_123/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_123/bias/v
}
*Adam/conv2d_123/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_123/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv2d_124/kernel/v
?
,Adam/conv2d_124/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/conv2d_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_124/bias/v
}
*Adam/conv2d_124/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_124/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_125/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_125/kernel/v
?
,Adam/conv2d_125/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_125/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_125/bias/v
}
*Adam/conv2d_125/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_125/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_126/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_126/kernel/v
?
,Adam/conv2d_126/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_126/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_126/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_126/bias/v
}
*Adam/conv2d_126/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_126/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_127/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_127/kernel/v
?
,Adam/conv2d_127/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_127/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_127/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_127/bias/v
}
*Adam/conv2d_127/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_127/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_67/kernel/v
?
*Adam/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_67/bias/v
z
(Adam/dense_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_68/kernel/v
?
*Adam/dense_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_68/bias/v
z
(Adam/dense_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_68/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_69/kernel/v
?
*Adam/dense_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_69/bias/v
y
(Adam/dense_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_69/bias/v*
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
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
R
%regularization_losses
&	variables
'trainable_variables
(	keras_api
h

)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
R
/regularization_losses
0	variables
1trainable_variables
2	keras_api
h

3kernel
4bias
5regularization_losses
6	variables
7trainable_variables
8	keras_api
R
9regularization_losses
:	variables
;trainable_variables
<	keras_api
h

=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
R
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
R
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
h

Kkernel
Lbias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
h

Qkernel
Rbias
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
h

Wkernel
Xbias
Yregularization_losses
Z	variables
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
blayer_metrics
	variables
trainable_variables

clayers
dnon_trainable_variables
emetrics
flayer_regularization_losses
 
][
VARIABLE_VALUEconv2d_123/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_123/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
glayer_metrics
regularization_losses
	variables
trainable_variables

hlayers
inon_trainable_variables
jmetrics
klayer_regularization_losses
 
 
 
?
llayer_metrics
regularization_losses
	variables
trainable_variables

mlayers
nnon_trainable_variables
ometrics
player_regularization_losses
][
VARIABLE_VALUEconv2d_124/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_124/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
?
qlayer_metrics
!regularization_losses
"	variables
#trainable_variables

rlayers
snon_trainable_variables
tmetrics
ulayer_regularization_losses
 
 
 
?
vlayer_metrics
%regularization_losses
&	variables
'trainable_variables

wlayers
xnon_trainable_variables
ymetrics
zlayer_regularization_losses
][
VARIABLE_VALUEconv2d_125/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_125/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1

)0
*1
?
{layer_metrics
+regularization_losses
,	variables
-trainable_variables

|layers
}non_trainable_variables
~metrics
layer_regularization_losses
 
 
 
?
?layer_metrics
/regularization_losses
0	variables
1trainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
][
VARIABLE_VALUEconv2d_126/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_126/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
?
?layer_metrics
5regularization_losses
6	variables
7trainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
?layer_metrics
9regularization_losses
:	variables
;trainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
][
VARIABLE_VALUEconv2d_127/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_127/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

=0
>1

=0
>1
?
?layer_metrics
?regularization_losses
@	variables
Atrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
?layer_metrics
Cregularization_losses
D	variables
Etrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
 
 
 
?
?layer_metrics
Gregularization_losses
H	variables
Itrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_67/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1

K0
L1
?
?layer_metrics
Mregularization_losses
N	variables
Otrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_68/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_68/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Q0
R1

Q0
R1
?
?layer_metrics
Sregularization_losses
T	variables
Utrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_69/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_69/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

W0
X1

W0
X1
?
?layer_metrics
Yregularization_losses
Z	variables
[trainable_variables
?layers
?non_trainable_variables
?metrics
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

?0
?1
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
?~
VARIABLE_VALUEAdam/conv2d_123/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_123/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_124/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_124/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_125/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_125/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_126/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_126/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_127/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_127/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_69/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_123/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_123/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_124/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_124/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_125/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_125/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_126/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_126/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_127/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_127/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_68/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_68/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_69/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_69/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_123_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_123_inputconv2d_123/kernelconv2d_123/biasconv2d_124/kernelconv2d_124/biasconv2d_125/kernelconv2d_125/biasconv2d_126/kernelconv2d_126/biasconv2d_127/kernelconv2d_127/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/bias*
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
$__inference_signature_wrapper_444058
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_123/kernel/Read/ReadVariableOp#conv2d_123/bias/Read/ReadVariableOp%conv2d_124/kernel/Read/ReadVariableOp#conv2d_124/bias/Read/ReadVariableOp%conv2d_125/kernel/Read/ReadVariableOp#conv2d_125/bias/Read/ReadVariableOp%conv2d_126/kernel/Read/ReadVariableOp#conv2d_126/bias/Read/ReadVariableOp%conv2d_127/kernel/Read/ReadVariableOp#conv2d_127/bias/Read/ReadVariableOp#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOp#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_123/kernel/m/Read/ReadVariableOp*Adam/conv2d_123/bias/m/Read/ReadVariableOp,Adam/conv2d_124/kernel/m/Read/ReadVariableOp*Adam/conv2d_124/bias/m/Read/ReadVariableOp,Adam/conv2d_125/kernel/m/Read/ReadVariableOp*Adam/conv2d_125/bias/m/Read/ReadVariableOp,Adam/conv2d_126/kernel/m/Read/ReadVariableOp*Adam/conv2d_126/bias/m/Read/ReadVariableOp,Adam/conv2d_127/kernel/m/Read/ReadVariableOp*Adam/conv2d_127/bias/m/Read/ReadVariableOp*Adam/dense_67/kernel/m/Read/ReadVariableOp(Adam/dense_67/bias/m/Read/ReadVariableOp*Adam/dense_68/kernel/m/Read/ReadVariableOp(Adam/dense_68/bias/m/Read/ReadVariableOp*Adam/dense_69/kernel/m/Read/ReadVariableOp(Adam/dense_69/bias/m/Read/ReadVariableOp,Adam/conv2d_123/kernel/v/Read/ReadVariableOp*Adam/conv2d_123/bias/v/Read/ReadVariableOp,Adam/conv2d_124/kernel/v/Read/ReadVariableOp*Adam/conv2d_124/bias/v/Read/ReadVariableOp,Adam/conv2d_125/kernel/v/Read/ReadVariableOp*Adam/conv2d_125/bias/v/Read/ReadVariableOp,Adam/conv2d_126/kernel/v/Read/ReadVariableOp*Adam/conv2d_126/bias/v/Read/ReadVariableOp,Adam/conv2d_127/kernel/v/Read/ReadVariableOp*Adam/conv2d_127/bias/v/Read/ReadVariableOp*Adam/dense_67/kernel/v/Read/ReadVariableOp(Adam/dense_67/bias/v/Read/ReadVariableOp*Adam/dense_68/kernel/v/Read/ReadVariableOp(Adam/dense_68/bias/v/Read/ReadVariableOp*Adam/dense_69/kernel/v/Read/ReadVariableOp(Adam/dense_69/bias/v/Read/ReadVariableOpConst*F
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
__inference__traced_save_444911
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_123/kernelconv2d_123/biasconv2d_124/kernelconv2d_124/biasconv2d_125/kernelconv2d_125/biasconv2d_126/kernelconv2d_126/biasconv2d_127/kernelconv2d_127/biasdense_67/kerneldense_67/biasdense_68/kerneldense_68/biasdense_69/kerneldense_69/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_123/kernel/mAdam/conv2d_123/bias/mAdam/conv2d_124/kernel/mAdam/conv2d_124/bias/mAdam/conv2d_125/kernel/mAdam/conv2d_125/bias/mAdam/conv2d_126/kernel/mAdam/conv2d_126/bias/mAdam/conv2d_127/kernel/mAdam/conv2d_127/bias/mAdam/dense_67/kernel/mAdam/dense_67/bias/mAdam/dense_68/kernel/mAdam/dense_68/bias/mAdam/dense_69/kernel/mAdam/dense_69/bias/mAdam/conv2d_123/kernel/vAdam/conv2d_123/bias/vAdam/conv2d_124/kernel/vAdam/conv2d_124/bias/vAdam/conv2d_125/kernel/vAdam/conv2d_125/bias/vAdam/conv2d_126/kernel/vAdam/conv2d_126/bias/vAdam/conv2d_127/kernel/vAdam/conv2d_127/bias/vAdam/dense_67/kernel/vAdam/dense_67/bias/vAdam/dense_68/kernel/vAdam/dense_68/bias/vAdam/dense_69/kernel/vAdam/dense_69/bias/v*E
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
"__inference__traced_restore_445092??
?
~
)__inference_dense_69_layer_call_fn_444629

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
D__inference_dense_69_layer_call_and_return_conditional_losses_4435292
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
N
2__inference_max_pooling2d_122_layer_call_fn_443258

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_4432522
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
__inference_loss_fn_1_444651@
<conv2d_124_kernel_regularizer_square_readvariableop_resource
identity??3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_124_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
IdentityIdentity%conv2d_124/kernel/Regularizer/mul:z:04^conv2d_124/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp
?
?
D__inference_dense_69_layer_call_and_return_conditional_losses_444620

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_444417

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_444662@
<conv2d_125_kernel_regularizer_square_readvariableop_resource
identity??3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_125_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
IdentityIdentity%conv2d_125/kernel/Regularizer/mul:z:04^conv2d_125/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp
?
N
2__inference_max_pooling2d_118_layer_call_fn_443210

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_4432042
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
?
b
F__inference_flatten_24_layer_call_and_return_conditional_losses_443438

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
ِ
?	
I__inference_sequential_24_layer_call_and_return_conditional_losses_443692
conv2d_123_input
conv2d_123_443597
conv2d_123_443599
conv2d_124_443603
conv2d_124_443605
conv2d_125_443609
conv2d_125_443611
conv2d_126_443615
conv2d_126_443617
conv2d_127_443621
conv2d_127_443623
dense_67_443628
dense_67_443630
dense_68_443633
dense_68_443635
dense_69_443638
dense_69_443640
identity??"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputconv2d_123_443597conv2d_123_443599*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_4432792$
"conv2d_123/StatefulPartitionedCall?
!max_pooling2d_118/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_4432042#
!max_pooling2d_118/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_118/PartitionedCall:output:0conv2d_124_443603conv2d_124_443605*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_4433132$
"conv2d_124/StatefulPartitionedCall?
!max_pooling2d_119/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_4432162#
!max_pooling2d_119/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_119/PartitionedCall:output:0conv2d_125_443609conv2d_125_443611*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_4433472$
"conv2d_125/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_4432282#
!max_pooling2d_120/PartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_126_443615conv2d_126_443617*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_4433812$
"conv2d_126/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_4432402#
!max_pooling2d_121/PartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_127_443621conv2d_127_443623*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_4434152$
"conv2d_127/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_4432522#
!max_pooling2d_122/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_24_layer_call_and_return_conditional_losses_4434382
flatten_24/PartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_67_443628dense_67_443630*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_4434632"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_443633dense_68_443635*
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
D__inference_dense_68_layer_call_and_return_conditional_losses_4434962"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_443638dense_69_443640*
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
D__inference_dense_69_layer_call_and_return_conditional_losses_4435292"
 dense_69/StatefulPartitionedCall?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_443597*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_124_443603*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_443609*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_126_443615*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_443621*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_443628* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_443633* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_443638*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_123_input
?
?
+__inference_conv2d_124_layer_call_fn_444426

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_4433132
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
__inference_loss_fn_7_444717>
:dense_69_kernel_regularizer_square_readvariableop_resource
identity??1dense_69/kernel/Regularizer/Square/ReadVariableOp?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_69_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentity#dense_69/kernel/Regularizer/mul:z:02^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp
?
?
F__inference_conv2d_123_layer_call_and_return_conditional_losses_443279

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
F__inference_conv2d_126_layer_call_and_return_conditional_losses_443381

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????   ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?s
?
__inference__traced_save_444911
file_prefix0
,savev2_conv2d_123_kernel_read_readvariableop.
*savev2_conv2d_123_bias_read_readvariableop0
,savev2_conv2d_124_kernel_read_readvariableop.
*savev2_conv2d_124_bias_read_readvariableop0
,savev2_conv2d_125_kernel_read_readvariableop.
*savev2_conv2d_125_bias_read_readvariableop0
,savev2_conv2d_126_kernel_read_readvariableop.
*savev2_conv2d_126_bias_read_readvariableop0
,savev2_conv2d_127_kernel_read_readvariableop.
*savev2_conv2d_127_bias_read_readvariableop.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_123_kernel_m_read_readvariableop5
1savev2_adam_conv2d_123_bias_m_read_readvariableop7
3savev2_adam_conv2d_124_kernel_m_read_readvariableop5
1savev2_adam_conv2d_124_bias_m_read_readvariableop7
3savev2_adam_conv2d_125_kernel_m_read_readvariableop5
1savev2_adam_conv2d_125_bias_m_read_readvariableop7
3savev2_adam_conv2d_126_kernel_m_read_readvariableop5
1savev2_adam_conv2d_126_bias_m_read_readvariableop7
3savev2_adam_conv2d_127_kernel_m_read_readvariableop5
1savev2_adam_conv2d_127_bias_m_read_readvariableop5
1savev2_adam_dense_67_kernel_m_read_readvariableop3
/savev2_adam_dense_67_bias_m_read_readvariableop5
1savev2_adam_dense_68_kernel_m_read_readvariableop3
/savev2_adam_dense_68_bias_m_read_readvariableop5
1savev2_adam_dense_69_kernel_m_read_readvariableop3
/savev2_adam_dense_69_bias_m_read_readvariableop7
3savev2_adam_conv2d_123_kernel_v_read_readvariableop5
1savev2_adam_conv2d_123_bias_v_read_readvariableop7
3savev2_adam_conv2d_124_kernel_v_read_readvariableop5
1savev2_adam_conv2d_124_bias_v_read_readvariableop7
3savev2_adam_conv2d_125_kernel_v_read_readvariableop5
1savev2_adam_conv2d_125_bias_v_read_readvariableop7
3savev2_adam_conv2d_126_kernel_v_read_readvariableop5
1savev2_adam_conv2d_126_bias_v_read_readvariableop7
3savev2_adam_conv2d_127_kernel_v_read_readvariableop5
1savev2_adam_conv2d_127_bias_v_read_readvariableop5
1savev2_adam_dense_67_kernel_v_read_readvariableop3
/savev2_adam_dense_67_bias_v_read_readvariableop5
1savev2_adam_dense_68_kernel_v_read_readvariableop3
/savev2_adam_dense_68_bias_v_read_readvariableop5
1savev2_adam_dense_69_kernel_v_read_readvariableop3
/savev2_adam_dense_69_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_123_kernel_read_readvariableop*savev2_conv2d_123_bias_read_readvariableop,savev2_conv2d_124_kernel_read_readvariableop*savev2_conv2d_124_bias_read_readvariableop,savev2_conv2d_125_kernel_read_readvariableop*savev2_conv2d_125_bias_read_readvariableop,savev2_conv2d_126_kernel_read_readvariableop*savev2_conv2d_126_bias_read_readvariableop,savev2_conv2d_127_kernel_read_readvariableop*savev2_conv2d_127_bias_read_readvariableop*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_123_kernel_m_read_readvariableop1savev2_adam_conv2d_123_bias_m_read_readvariableop3savev2_adam_conv2d_124_kernel_m_read_readvariableop1savev2_adam_conv2d_124_bias_m_read_readvariableop3savev2_adam_conv2d_125_kernel_m_read_readvariableop1savev2_adam_conv2d_125_bias_m_read_readvariableop3savev2_adam_conv2d_126_kernel_m_read_readvariableop1savev2_adam_conv2d_126_bias_m_read_readvariableop3savev2_adam_conv2d_127_kernel_m_read_readvariableop1savev2_adam_conv2d_127_bias_m_read_readvariableop1savev2_adam_dense_67_kernel_m_read_readvariableop/savev2_adam_dense_67_bias_m_read_readvariableop1savev2_adam_dense_68_kernel_m_read_readvariableop/savev2_adam_dense_68_bias_m_read_readvariableop1savev2_adam_dense_69_kernel_m_read_readvariableop/savev2_adam_dense_69_bias_m_read_readvariableop3savev2_adam_conv2d_123_kernel_v_read_readvariableop1savev2_adam_conv2d_123_bias_v_read_readvariableop3savev2_adam_conv2d_124_kernel_v_read_readvariableop1savev2_adam_conv2d_124_bias_v_read_readvariableop3savev2_adam_conv2d_125_kernel_v_read_readvariableop1savev2_adam_conv2d_125_bias_v_read_readvariableop3savev2_adam_conv2d_126_kernel_v_read_readvariableop1savev2_adam_conv2d_126_bias_v_read_readvariableop3savev2_adam_conv2d_127_kernel_v_read_readvariableop1savev2_adam_conv2d_127_bias_v_read_readvariableop1savev2_adam_dense_67_kernel_v_read_readvariableop/savev2_adam_dense_67_bias_v_read_readvariableop1savev2_adam_dense_68_kernel_v_read_readvariableop/savev2_adam_dense_68_bias_v_read_readvariableop1savev2_adam_dense_69_kernel_v_read_readvariableop/savev2_adam_dense_69_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?
i
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_443228

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
?
+__inference_conv2d_125_layer_call_fn_444458

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
GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_4433472
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
?

?
.__inference_sequential_24_layer_call_fn_443828
conv2d_123_input
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_24_layer_call_and_return_conditional_losses_4437932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_123_input
?
?
+__inference_conv2d_127_layer_call_fn_444522

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
GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_4434152
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
?
i
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_443216

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
?
__inference_loss_fn_4_444684@
<conv2d_127_kernel_regularizer_square_readvariableop_resource
identity??3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_127_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentity%conv2d_127/kernel/Regularizer/mul:z:04^conv2d_127/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp
?t
?
!__inference__wrapped_model_443198
conv2d_123_input;
7sequential_24_conv2d_123_conv2d_readvariableop_resource<
8sequential_24_conv2d_123_biasadd_readvariableop_resource;
7sequential_24_conv2d_124_conv2d_readvariableop_resource<
8sequential_24_conv2d_124_biasadd_readvariableop_resource;
7sequential_24_conv2d_125_conv2d_readvariableop_resource<
8sequential_24_conv2d_125_biasadd_readvariableop_resource;
7sequential_24_conv2d_126_conv2d_readvariableop_resource<
8sequential_24_conv2d_126_biasadd_readvariableop_resource;
7sequential_24_conv2d_127_conv2d_readvariableop_resource<
8sequential_24_conv2d_127_biasadd_readvariableop_resource9
5sequential_24_dense_67_matmul_readvariableop_resource:
6sequential_24_dense_67_biasadd_readvariableop_resource9
5sequential_24_dense_68_matmul_readvariableop_resource:
6sequential_24_dense_68_biasadd_readvariableop_resource9
5sequential_24_dense_69_matmul_readvariableop_resource:
6sequential_24_dense_69_biasadd_readvariableop_resource
identity??/sequential_24/conv2d_123/BiasAdd/ReadVariableOp?.sequential_24/conv2d_123/Conv2D/ReadVariableOp?/sequential_24/conv2d_124/BiasAdd/ReadVariableOp?.sequential_24/conv2d_124/Conv2D/ReadVariableOp?/sequential_24/conv2d_125/BiasAdd/ReadVariableOp?.sequential_24/conv2d_125/Conv2D/ReadVariableOp?/sequential_24/conv2d_126/BiasAdd/ReadVariableOp?.sequential_24/conv2d_126/Conv2D/ReadVariableOp?/sequential_24/conv2d_127/BiasAdd/ReadVariableOp?.sequential_24/conv2d_127/Conv2D/ReadVariableOp?-sequential_24/dense_67/BiasAdd/ReadVariableOp?,sequential_24/dense_67/MatMul/ReadVariableOp?-sequential_24/dense_68/BiasAdd/ReadVariableOp?,sequential_24/dense_68/MatMul/ReadVariableOp?-sequential_24/dense_69/BiasAdd/ReadVariableOp?,sequential_24/dense_69/MatMul/ReadVariableOp?
.sequential_24/conv2d_123/Conv2D/ReadVariableOpReadVariableOp7sequential_24_conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.sequential_24/conv2d_123/Conv2D/ReadVariableOp?
sequential_24/conv2d_123/Conv2DConv2Dconv2d_123_input6sequential_24/conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2!
sequential_24/conv2d_123/Conv2D?
/sequential_24/conv2d_123/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_24/conv2d_123/BiasAdd/ReadVariableOp?
 sequential_24/conv2d_123/BiasAddBiasAdd(sequential_24/conv2d_123/Conv2D:output:07sequential_24/conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 sequential_24/conv2d_123/BiasAdd?
sequential_24/conv2d_123/ReluRelu)sequential_24/conv2d_123/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
sequential_24/conv2d_123/Relu?
'sequential_24/max_pooling2d_118/MaxPoolMaxPool+sequential_24/conv2d_123/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2)
'sequential_24/max_pooling2d_118/MaxPool?
.sequential_24/conv2d_124/Conv2D/ReadVariableOpReadVariableOp7sequential_24_conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype020
.sequential_24/conv2d_124/Conv2D/ReadVariableOp?
sequential_24/conv2d_124/Conv2DConv2D0sequential_24/max_pooling2d_118/MaxPool:output:06sequential_24/conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2!
sequential_24/conv2d_124/Conv2D?
/sequential_24/conv2d_124/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_conv2d_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_24/conv2d_124/BiasAdd/ReadVariableOp?
 sequential_24/conv2d_124/BiasAddBiasAdd(sequential_24/conv2d_124/Conv2D:output:07sequential_24/conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2"
 sequential_24/conv2d_124/BiasAdd?
sequential_24/conv2d_124/ReluRelu)sequential_24/conv2d_124/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
sequential_24/conv2d_124/Relu?
'sequential_24/max_pooling2d_119/MaxPoolMaxPool+sequential_24/conv2d_124/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2)
'sequential_24/max_pooling2d_119/MaxPool?
.sequential_24/conv2d_125/Conv2D/ReadVariableOpReadVariableOp7sequential_24_conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_24/conv2d_125/Conv2D/ReadVariableOp?
sequential_24/conv2d_125/Conv2DConv2D0sequential_24/max_pooling2d_119/MaxPool:output:06sequential_24/conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2!
sequential_24/conv2d_125/Conv2D?
/sequential_24/conv2d_125/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_conv2d_125_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_24/conv2d_125/BiasAdd/ReadVariableOp?
 sequential_24/conv2d_125/BiasAddBiasAdd(sequential_24/conv2d_125/Conv2D:output:07sequential_24/conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2"
 sequential_24/conv2d_125/BiasAdd?
sequential_24/conv2d_125/ReluRelu)sequential_24/conv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
sequential_24/conv2d_125/Relu?
'sequential_24/max_pooling2d_120/MaxPoolMaxPool+sequential_24/conv2d_125/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2)
'sequential_24/max_pooling2d_120/MaxPool?
.sequential_24/conv2d_126/Conv2D/ReadVariableOpReadVariableOp7sequential_24_conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.sequential_24/conv2d_126/Conv2D/ReadVariableOp?
sequential_24/conv2d_126/Conv2DConv2D0sequential_24/max_pooling2d_120/MaxPool:output:06sequential_24/conv2d_126/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2!
sequential_24/conv2d_126/Conv2D?
/sequential_24/conv2d_126/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_conv2d_126_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_24/conv2d_126/BiasAdd/ReadVariableOp?
 sequential_24/conv2d_126/BiasAddBiasAdd(sequential_24/conv2d_126/Conv2D:output:07sequential_24/conv2d_126/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2"
 sequential_24/conv2d_126/BiasAdd?
sequential_24/conv2d_126/ReluRelu)sequential_24/conv2d_126/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_24/conv2d_126/Relu?
'sequential_24/max_pooling2d_121/MaxPoolMaxPool+sequential_24/conv2d_126/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2)
'sequential_24/max_pooling2d_121/MaxPool?
.sequential_24/conv2d_127/Conv2D/ReadVariableOpReadVariableOp7sequential_24_conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_24/conv2d_127/Conv2D/ReadVariableOp?
sequential_24/conv2d_127/Conv2DConv2D0sequential_24/max_pooling2d_121/MaxPool:output:06sequential_24/conv2d_127/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2!
sequential_24/conv2d_127/Conv2D?
/sequential_24/conv2d_127/BiasAdd/ReadVariableOpReadVariableOp8sequential_24_conv2d_127_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_24/conv2d_127/BiasAdd/ReadVariableOp?
 sequential_24/conv2d_127/BiasAddBiasAdd(sequential_24/conv2d_127/Conv2D:output:07sequential_24/conv2d_127/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2"
 sequential_24/conv2d_127/BiasAdd?
sequential_24/conv2d_127/ReluRelu)sequential_24/conv2d_127/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential_24/conv2d_127/Relu?
'sequential_24/max_pooling2d_122/MaxPoolMaxPool+sequential_24/conv2d_127/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2)
'sequential_24/max_pooling2d_122/MaxPool?
sequential_24/flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2 
sequential_24/flatten_24/Const?
 sequential_24/flatten_24/ReshapeReshape0sequential_24/max_pooling2d_122/MaxPool:output:0'sequential_24/flatten_24/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_24/flatten_24/Reshape?
,sequential_24/dense_67/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_67_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_24/dense_67/MatMul/ReadVariableOp?
sequential_24/dense_67/MatMulMatMul)sequential_24/flatten_24/Reshape:output:04sequential_24/dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_24/dense_67/MatMul?
-sequential_24/dense_67/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_24/dense_67/BiasAdd/ReadVariableOp?
sequential_24/dense_67/BiasAddBiasAdd'sequential_24/dense_67/MatMul:product:05sequential_24/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_24/dense_67/BiasAdd?
sequential_24/dense_67/ReluRelu'sequential_24/dense_67/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_24/dense_67/Relu?
,sequential_24/dense_68/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_68_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_24/dense_68/MatMul/ReadVariableOp?
sequential_24/dense_68/MatMulMatMul)sequential_24/dense_67/Relu:activations:04sequential_24/dense_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_24/dense_68/MatMul?
-sequential_24/dense_68/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_24/dense_68/BiasAdd/ReadVariableOp?
sequential_24/dense_68/BiasAddBiasAdd'sequential_24/dense_68/MatMul:product:05sequential_24/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_24/dense_68/BiasAdd?
sequential_24/dense_68/ReluRelu'sequential_24/dense_68/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_24/dense_68/Relu?
,sequential_24/dense_69/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_69_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_24/dense_69/MatMul/ReadVariableOp?
sequential_24/dense_69/MatMulMatMul)sequential_24/dense_68/Relu:activations:04sequential_24/dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_24/dense_69/MatMul?
-sequential_24/dense_69/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_24/dense_69/BiasAdd/ReadVariableOp?
sequential_24/dense_69/BiasAddBiasAdd'sequential_24/dense_69/MatMul:product:05sequential_24/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_24/dense_69/BiasAdd?
sequential_24/dense_69/SoftmaxSoftmax'sequential_24/dense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_24/dense_69/Softmax?
IdentityIdentity(sequential_24/dense_69/Softmax:softmax:00^sequential_24/conv2d_123/BiasAdd/ReadVariableOp/^sequential_24/conv2d_123/Conv2D/ReadVariableOp0^sequential_24/conv2d_124/BiasAdd/ReadVariableOp/^sequential_24/conv2d_124/Conv2D/ReadVariableOp0^sequential_24/conv2d_125/BiasAdd/ReadVariableOp/^sequential_24/conv2d_125/Conv2D/ReadVariableOp0^sequential_24/conv2d_126/BiasAdd/ReadVariableOp/^sequential_24/conv2d_126/Conv2D/ReadVariableOp0^sequential_24/conv2d_127/BiasAdd/ReadVariableOp/^sequential_24/conv2d_127/Conv2D/ReadVariableOp.^sequential_24/dense_67/BiasAdd/ReadVariableOp-^sequential_24/dense_67/MatMul/ReadVariableOp.^sequential_24/dense_68/BiasAdd/ReadVariableOp-^sequential_24/dense_68/MatMul/ReadVariableOp.^sequential_24/dense_69/BiasAdd/ReadVariableOp-^sequential_24/dense_69/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2b
/sequential_24/conv2d_123/BiasAdd/ReadVariableOp/sequential_24/conv2d_123/BiasAdd/ReadVariableOp2`
.sequential_24/conv2d_123/Conv2D/ReadVariableOp.sequential_24/conv2d_123/Conv2D/ReadVariableOp2b
/sequential_24/conv2d_124/BiasAdd/ReadVariableOp/sequential_24/conv2d_124/BiasAdd/ReadVariableOp2`
.sequential_24/conv2d_124/Conv2D/ReadVariableOp.sequential_24/conv2d_124/Conv2D/ReadVariableOp2b
/sequential_24/conv2d_125/BiasAdd/ReadVariableOp/sequential_24/conv2d_125/BiasAdd/ReadVariableOp2`
.sequential_24/conv2d_125/Conv2D/ReadVariableOp.sequential_24/conv2d_125/Conv2D/ReadVariableOp2b
/sequential_24/conv2d_126/BiasAdd/ReadVariableOp/sequential_24/conv2d_126/BiasAdd/ReadVariableOp2`
.sequential_24/conv2d_126/Conv2D/ReadVariableOp.sequential_24/conv2d_126/Conv2D/ReadVariableOp2b
/sequential_24/conv2d_127/BiasAdd/ReadVariableOp/sequential_24/conv2d_127/BiasAdd/ReadVariableOp2`
.sequential_24/conv2d_127/Conv2D/ReadVariableOp.sequential_24/conv2d_127/Conv2D/ReadVariableOp2^
-sequential_24/dense_67/BiasAdd/ReadVariableOp-sequential_24/dense_67/BiasAdd/ReadVariableOp2\
,sequential_24/dense_67/MatMul/ReadVariableOp,sequential_24/dense_67/MatMul/ReadVariableOp2^
-sequential_24/dense_68/BiasAdd/ReadVariableOp-sequential_24/dense_68/BiasAdd/ReadVariableOp2\
,sequential_24/dense_68/MatMul/ReadVariableOp,sequential_24/dense_68/MatMul/ReadVariableOp2^
-sequential_24/dense_69/BiasAdd/ReadVariableOp-sequential_24/dense_69/BiasAdd/ReadVariableOp2\
,sequential_24/dense_69/MatMul/ReadVariableOp,sequential_24/dense_69/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_123_input
ِ
?	
I__inference_sequential_24_layer_call_and_return_conditional_losses_443594
conv2d_123_input
conv2d_123_443290
conv2d_123_443292
conv2d_124_443324
conv2d_124_443326
conv2d_125_443358
conv2d_125_443360
conv2d_126_443392
conv2d_126_443394
conv2d_127_443426
conv2d_127_443428
dense_67_443474
dense_67_443476
dense_68_443507
dense_68_443509
dense_69_443540
dense_69_443542
identity??"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputconv2d_123_443290conv2d_123_443292*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_4432792$
"conv2d_123/StatefulPartitionedCall?
!max_pooling2d_118/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_4432042#
!max_pooling2d_118/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_118/PartitionedCall:output:0conv2d_124_443324conv2d_124_443326*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_4433132$
"conv2d_124/StatefulPartitionedCall?
!max_pooling2d_119/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_4432162#
!max_pooling2d_119/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_119/PartitionedCall:output:0conv2d_125_443358conv2d_125_443360*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_4433472$
"conv2d_125/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_4432282#
!max_pooling2d_120/PartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_126_443392conv2d_126_443394*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_4433812$
"conv2d_126/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_4432402#
!max_pooling2d_121/PartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_127_443426conv2d_127_443428*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_4434152$
"conv2d_127/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_4432522#
!max_pooling2d_122/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_24_layer_call_and_return_conditional_losses_4434382
flatten_24/PartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_67_443474dense_67_443476*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_4434632"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_443507dense_68_443509*
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
D__inference_dense_68_layer_call_and_return_conditional_losses_4434962"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_443540dense_69_443542*
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
D__inference_dense_69_layer_call_and_return_conditional_losses_4435292"
 dense_69/StatefulPartitionedCall?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_443290*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_124_443324*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_443358*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_126_443392*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_443426*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_443474* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_443507* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_443540*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_123_input
?
~
)__inference_dense_68_layer_call_fn_444597

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
D__inference_dense_68_layer_call_and_return_conditional_losses_4434962
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
?
?
F__inference_conv2d_123_layer_call_and_return_conditional_losses_444385

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_24_layer_call_fn_444362

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
I__inference_sequential_24_layer_call_and_return_conditional_losses_4439282
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
?
?
D__inference_dense_68_layer_call_and_return_conditional_losses_444588

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_445092
file_prefix&
"assignvariableop_conv2d_123_kernel&
"assignvariableop_1_conv2d_123_bias(
$assignvariableop_2_conv2d_124_kernel&
"assignvariableop_3_conv2d_124_bias(
$assignvariableop_4_conv2d_125_kernel&
"assignvariableop_5_conv2d_125_bias(
$assignvariableop_6_conv2d_126_kernel&
"assignvariableop_7_conv2d_126_bias(
$assignvariableop_8_conv2d_127_kernel&
"assignvariableop_9_conv2d_127_bias'
#assignvariableop_10_dense_67_kernel%
!assignvariableop_11_dense_67_bias'
#assignvariableop_12_dense_68_kernel%
!assignvariableop_13_dense_68_bias'
#assignvariableop_14_dense_69_kernel%
!assignvariableop_15_dense_69_bias!
assignvariableop_16_adam_iter#
assignvariableop_17_adam_beta_1#
assignvariableop_18_adam_beta_2"
assignvariableop_19_adam_decay*
&assignvariableop_20_adam_learning_rate
assignvariableop_21_total
assignvariableop_22_count
assignvariableop_23_total_1
assignvariableop_24_count_10
,assignvariableop_25_adam_conv2d_123_kernel_m.
*assignvariableop_26_adam_conv2d_123_bias_m0
,assignvariableop_27_adam_conv2d_124_kernel_m.
*assignvariableop_28_adam_conv2d_124_bias_m0
,assignvariableop_29_adam_conv2d_125_kernel_m.
*assignvariableop_30_adam_conv2d_125_bias_m0
,assignvariableop_31_adam_conv2d_126_kernel_m.
*assignvariableop_32_adam_conv2d_126_bias_m0
,assignvariableop_33_adam_conv2d_127_kernel_m.
*assignvariableop_34_adam_conv2d_127_bias_m.
*assignvariableop_35_adam_dense_67_kernel_m,
(assignvariableop_36_adam_dense_67_bias_m.
*assignvariableop_37_adam_dense_68_kernel_m,
(assignvariableop_38_adam_dense_68_bias_m.
*assignvariableop_39_adam_dense_69_kernel_m,
(assignvariableop_40_adam_dense_69_bias_m0
,assignvariableop_41_adam_conv2d_123_kernel_v.
*assignvariableop_42_adam_conv2d_123_bias_v0
,assignvariableop_43_adam_conv2d_124_kernel_v.
*assignvariableop_44_adam_conv2d_124_bias_v0
,assignvariableop_45_adam_conv2d_125_kernel_v.
*assignvariableop_46_adam_conv2d_125_bias_v0
,assignvariableop_47_adam_conv2d_126_kernel_v.
*assignvariableop_48_adam_conv2d_126_bias_v0
,assignvariableop_49_adam_conv2d_127_kernel_v.
*assignvariableop_50_adam_conv2d_127_bias_v.
*assignvariableop_51_adam_dense_67_kernel_v,
(assignvariableop_52_adam_dense_67_bias_v.
*assignvariableop_53_adam_dense_68_kernel_v,
(assignvariableop_54_adam_dense_68_bias_v.
*assignvariableop_55_adam_dense_69_kernel_v,
(assignvariableop_56_adam_dense_69_bias_v
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
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_123_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_123_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_124_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_124_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_125_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_125_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_126_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_126_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_conv2d_127_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_127_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_67_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_67_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_68_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_68_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_69_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_69_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_conv2d_123_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_conv2d_123_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_conv2d_124_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_124_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_125_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_125_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_126_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_126_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_127_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_127_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_67_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_67_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_68_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_68_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_69_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_69_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_conv2d_123_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_123_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_conv2d_124_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_conv2d_124_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adam_conv2d_125_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_conv2d_125_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_conv2d_126_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_conv2d_126_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_conv2d_127_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_conv2d_127_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_67_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_67_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_68_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_68_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_69_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_69_bias_vIdentity_56:output:0"/device:CPU:0*
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
?
i
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_443240

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
??
?	
I__inference_sequential_24_layer_call_and_return_conditional_losses_443793

inputs
conv2d_123_443698
conv2d_123_443700
conv2d_124_443704
conv2d_124_443706
conv2d_125_443710
conv2d_125_443712
conv2d_126_443716
conv2d_126_443718
conv2d_127_443722
conv2d_127_443724
dense_67_443729
dense_67_443731
dense_68_443734
dense_68_443736
dense_69_443739
dense_69_443741
identity??"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_123_443698conv2d_123_443700*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_4432792$
"conv2d_123/StatefulPartitionedCall?
!max_pooling2d_118/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_4432042#
!max_pooling2d_118/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_118/PartitionedCall:output:0conv2d_124_443704conv2d_124_443706*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_4433132$
"conv2d_124/StatefulPartitionedCall?
!max_pooling2d_119/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_4432162#
!max_pooling2d_119/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_119/PartitionedCall:output:0conv2d_125_443710conv2d_125_443712*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_4433472$
"conv2d_125/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_4432282#
!max_pooling2d_120/PartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_126_443716conv2d_126_443718*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_4433812$
"conv2d_126/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_4432402#
!max_pooling2d_121/PartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_127_443722conv2d_127_443724*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_4434152$
"conv2d_127/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_4432522#
!max_pooling2d_122/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_24_layer_call_and_return_conditional_losses_4434382
flatten_24/PartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_67_443729dense_67_443731*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_4434632"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_443734dense_68_443736*
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
D__inference_dense_68_layer_call_and_return_conditional_losses_4434962"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_443739dense_69_443741*
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
D__inference_dense_69_layer_call_and_return_conditional_losses_4435292"
 dense_69/StatefulPartitionedCall?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_443698*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_124_443704*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_443710*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_126_443716*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_443722*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_443729* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_443734* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_443739*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
N
2__inference_max_pooling2d_121_layer_call_fn_443246

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_4432402
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
$__inference_signature_wrapper_444058
conv2d_123_input
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
!__inference__wrapped_model_4431982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_123_input
?

?
.__inference_sequential_24_layer_call_fn_444325

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
I__inference_sequential_24_layer_call_and_return_conditional_losses_4437932
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
?
i
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_443252

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
?
?
F__inference_conv2d_126_layer_call_and_return_conditional_losses_444481

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????   ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????   
 
_user_specified_nameinputs
?
?
F__inference_conv2d_127_layer_call_and_return_conditional_losses_444513

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
F__inference_conv2d_125_layer_call_and_return_conditional_losses_443347

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
F__inference_conv2d_127_layer_call_and_return_conditional_losses_443415

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_loss_fn_6_444706>
:dense_68_kernel_regularizer_square_readvariableop_resource
identity??1dense_68/kernel/Regularizer/Square/ReadVariableOp?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_68_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
IdentityIdentity#dense_68/kernel/Regularizer/mul:z:02^dense_68/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp
??
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_444173

inputs-
)conv2d_123_conv2d_readvariableop_resource.
*conv2d_123_biasadd_readvariableop_resource-
)conv2d_124_conv2d_readvariableop_resource.
*conv2d_124_biasadd_readvariableop_resource-
)conv2d_125_conv2d_readvariableop_resource.
*conv2d_125_biasadd_readvariableop_resource-
)conv2d_126_conv2d_readvariableop_resource.
*conv2d_126_biasadd_readvariableop_resource-
)conv2d_127_conv2d_readvariableop_resource.
*conv2d_127_biasadd_readvariableop_resource+
'dense_67_matmul_readvariableop_resource,
(dense_67_biasadd_readvariableop_resource+
'dense_68_matmul_readvariableop_resource,
(dense_68_biasadd_readvariableop_resource+
'dense_69_matmul_readvariableop_resource,
(dense_69_biasadd_readvariableop_resource
identity??!conv2d_123/BiasAdd/ReadVariableOp? conv2d_123/Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?!conv2d_124/BiasAdd/ReadVariableOp? conv2d_124/Conv2D/ReadVariableOp?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?!conv2d_125/BiasAdd/ReadVariableOp? conv2d_125/Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?!conv2d_126/BiasAdd/ReadVariableOp? conv2d_126/Conv2D/ReadVariableOp?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?!conv2d_127/BiasAdd/ReadVariableOp? conv2d_127/Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_123/Conv2D/ReadVariableOp?
conv2d_123/Conv2DConv2Dinputs(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_123/Conv2D?
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_123/BiasAdd/ReadVariableOp?
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_123/BiasAdd?
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_123/Relu?
max_pooling2d_118/MaxPoolMaxPoolconv2d_123/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_118/MaxPool?
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_124/Conv2D/ReadVariableOp?
conv2d_124/Conv2DConv2D"max_pooling2d_118/MaxPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_124/Conv2D?
!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_124/BiasAdd/ReadVariableOp?
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_124/BiasAdd?
conv2d_124/ReluReluconv2d_124/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_124/Relu?
max_pooling2d_119/MaxPoolMaxPoolconv2d_124/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_119/MaxPool?
 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_125/Conv2D/ReadVariableOp?
conv2d_125/Conv2DConv2D"max_pooling2d_119/MaxPool:output:0(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2d_125/Conv2D?
!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_125/BiasAdd/ReadVariableOp?
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_125/BiasAdd?
conv2d_125/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_125/Relu?
max_pooling2d_120/MaxPoolMaxPoolconv2d_125/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2
max_pooling2d_120/MaxPool?
 conv2d_126/Conv2D/ReadVariableOpReadVariableOp)conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_126/Conv2D/ReadVariableOp?
conv2d_126/Conv2DConv2D"max_pooling2d_120/MaxPool:output:0(conv2d_126/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_126/Conv2D?
!conv2d_126/BiasAdd/ReadVariableOpReadVariableOp*conv2d_126_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_126/BiasAdd/ReadVariableOp?
conv2d_126/BiasAddBiasAddconv2d_126/Conv2D:output:0)conv2d_126/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_126/BiasAdd?
conv2d_126/ReluReluconv2d_126/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_126/Relu?
max_pooling2d_121/MaxPoolMaxPoolconv2d_126/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_121/MaxPool?
 conv2d_127/Conv2D/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_127/Conv2D/ReadVariableOp?
conv2d_127/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_127/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_127/Conv2D?
!conv2d_127/BiasAdd/ReadVariableOpReadVariableOp*conv2d_127_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_127/BiasAdd/ReadVariableOp?
conv2d_127/BiasAddBiasAddconv2d_127/Conv2D:output:0)conv2d_127/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_127/BiasAdd?
conv2d_127/ReluReluconv2d_127/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_127/Relu?
max_pooling2d_122/MaxPoolMaxPoolconv2d_127/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_122/MaxPoolu
flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
flatten_24/Const?
flatten_24/ReshapeReshape"max_pooling2d_122/MaxPool:output:0flatten_24/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_24/Reshape?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMulflatten_24/Reshape:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_67/BiasAddt
dense_67/ReluReludense_67/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_67/Relu?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMuldense_67/Relu:activations:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_68/BiasAddt
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_68/Relu?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMulMatMuldense_68/Relu:activations:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/BiasAdd|
dense_69/SoftmaxSoftmaxdense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_69/Softmax?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentitydense_69/Softmax:softmax:0"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp"^conv2d_126/BiasAdd/ReadVariableOp!^conv2d_126/Conv2D/ReadVariableOp4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp"^conv2d_127/BiasAdd/ReadVariableOp!^conv2d_127/Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_126/BiasAdd/ReadVariableOp!conv2d_126/BiasAdd/ReadVariableOp2D
 conv2d_126/Conv2D/ReadVariableOp conv2d_126/Conv2D/ReadVariableOp2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_127/BiasAdd/ReadVariableOp!conv2d_127/BiasAdd/ReadVariableOp2D
 conv2d_127/Conv2D/ReadVariableOp conv2d_127/Conv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_24_layer_call_fn_444533

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
F__inference_flatten_24_layer_call_and_return_conditional_losses_4434382
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
__inference_loss_fn_0_444640@
<conv2d_123_kernel_regularizer_square_readvariableop_resource
identity??3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_123_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
IdentityIdentity%conv2d_123/kernel/Regularizer/mul:z:04^conv2d_123/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_5_444695>
:dense_67_kernel_regularizer_square_readvariableop_resource
identity??1dense_67/kernel/Regularizer/Square/ReadVariableOp?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_67_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
IdentityIdentity#dense_67/kernel/Regularizer/mul:z:02^dense_67/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp
?
N
2__inference_max_pooling2d_119_layer_call_fn_443222

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_4432162
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
~
)__inference_dense_67_layer_call_fn_444565

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
D__inference_dense_67_layer_call_and_return_conditional_losses_4434632
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
?
b
F__inference_flatten_24_layer_call_and_return_conditional_losses_444528

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
?
?
F__inference_conv2d_125_layer_call_and_return_conditional_losses_444449

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:?????????@@ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
D__inference_dense_67_layer_call_and_return_conditional_losses_444556

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_68_layer_call_and_return_conditional_losses_443496

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_126_layer_call_fn_444490

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
GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_4433812
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
?
?
D__inference_dense_69_layer_call_and_return_conditional_losses_443529

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?	
I__inference_sequential_24_layer_call_and_return_conditional_losses_443928

inputs
conv2d_123_443833
conv2d_123_443835
conv2d_124_443839
conv2d_124_443841
conv2d_125_443845
conv2d_125_443847
conv2d_126_443851
conv2d_126_443853
conv2d_127_443857
conv2d_127_443859
dense_67_443864
dense_67_443866
dense_68_443869
dense_68_443871
dense_69_443874
dense_69_443876
identity??"conv2d_123/StatefulPartitionedCall?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?"conv2d_124/StatefulPartitionedCall?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?"conv2d_125/StatefulPartitionedCall?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?"conv2d_126/StatefulPartitionedCall?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?"conv2d_127/StatefulPartitionedCall?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?1dense_67/kernel/Regularizer/Square/ReadVariableOp? dense_68/StatefulPartitionedCall?1dense_68/kernel/Regularizer/Square/ReadVariableOp? dense_69/StatefulPartitionedCall?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"conv2d_123/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_123_443833conv2d_123_443835*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_4432792$
"conv2d_123/StatefulPartitionedCall?
!max_pooling2d_118/PartitionedCallPartitionedCall+conv2d_123/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_4432042#
!max_pooling2d_118/PartitionedCall?
"conv2d_124/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_118/PartitionedCall:output:0conv2d_124_443839conv2d_124_443841*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_124_layer_call_and_return_conditional_losses_4433132$
"conv2d_124/StatefulPartitionedCall?
!max_pooling2d_119/PartitionedCallPartitionedCall+conv2d_124/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_4432162#
!max_pooling2d_119/PartitionedCall?
"conv2d_125/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_119/PartitionedCall:output:0conv2d_125_443845conv2d_125_443847*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_125_layer_call_and_return_conditional_losses_4433472$
"conv2d_125/StatefulPartitionedCall?
!max_pooling2d_120/PartitionedCallPartitionedCall+conv2d_125/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_4432282#
!max_pooling2d_120/PartitionedCall?
"conv2d_126/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_120/PartitionedCall:output:0conv2d_126_443851conv2d_126_443853*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_126_layer_call_and_return_conditional_losses_4433812$
"conv2d_126/StatefulPartitionedCall?
!max_pooling2d_121/PartitionedCallPartitionedCall+conv2d_126/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_4432402#
!max_pooling2d_121/PartitionedCall?
"conv2d_127/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_121/PartitionedCall:output:0conv2d_127_443857conv2d_127_443859*
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_127_layer_call_and_return_conditional_losses_4434152$
"conv2d_127/StatefulPartitionedCall?
!max_pooling2d_122/PartitionedCallPartitionedCall+conv2d_127/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_4432522#
!max_pooling2d_122/PartitionedCall?
flatten_24/PartitionedCallPartitionedCall*max_pooling2d_122/PartitionedCall:output:0*
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
F__inference_flatten_24_layer_call_and_return_conditional_losses_4434382
flatten_24/PartitionedCall?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall#flatten_24/PartitionedCall:output:0dense_67_443864dense_67_443866*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_4434632"
 dense_67/StatefulPartitionedCall?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall)dense_67/StatefulPartitionedCall:output:0dense_68_443869dense_68_443871*
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
D__inference_dense_68_layer_call_and_return_conditional_losses_4434962"
 dense_68/StatefulPartitionedCall?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0dense_69_443874dense_69_443876*
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
D__inference_dense_69_layer_call_and_return_conditional_losses_4435292"
 dense_69/StatefulPartitionedCall?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_123_443833*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_124_443839*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_125_443845*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_126_443851*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_127_443857*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_443864* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_68_443869* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_69_443874*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentity)dense_69/StatefulPartitionedCall:output:0#^conv2d_123/StatefulPartitionedCall4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp#^conv2d_124/StatefulPartitionedCall4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp#^conv2d_125/StatefulPartitionedCall4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp#^conv2d_126/StatefulPartitionedCall4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp#^conv2d_127/StatefulPartitionedCall4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall2^dense_67/kernel/Regularizer/Square/ReadVariableOp!^dense_68/StatefulPartitionedCall2^dense_68/kernel/Regularizer/Square/ReadVariableOp!^dense_69/StatefulPartitionedCall2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2H
"conv2d_123/StatefulPartitionedCall"conv2d_123/StatefulPartitionedCall2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_124/StatefulPartitionedCall"conv2d_124/StatefulPartitionedCall2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_125/StatefulPartitionedCall"conv2d_125/StatefulPartitionedCall2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_126/StatefulPartitionedCall"conv2d_126/StatefulPartitionedCall2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp2H
"conv2d_127/StatefulPartitionedCall"conv2d_127/StatefulPartitionedCall2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_24_layer_call_fn_443963
conv2d_123_input
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
I__inference_sequential_24_layer_call_and_return_conditional_losses_4439282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_123_input
?
?
F__inference_conv2d_124_layer_call_and_return_conditional_losses_443313

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
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
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_24_layer_call_and_return_conditional_losses_444288

inputs-
)conv2d_123_conv2d_readvariableop_resource.
*conv2d_123_biasadd_readvariableop_resource-
)conv2d_124_conv2d_readvariableop_resource.
*conv2d_124_biasadd_readvariableop_resource-
)conv2d_125_conv2d_readvariableop_resource.
*conv2d_125_biasadd_readvariableop_resource-
)conv2d_126_conv2d_readvariableop_resource.
*conv2d_126_biasadd_readvariableop_resource-
)conv2d_127_conv2d_readvariableop_resource.
*conv2d_127_biasadd_readvariableop_resource+
'dense_67_matmul_readvariableop_resource,
(dense_67_biasadd_readvariableop_resource+
'dense_68_matmul_readvariableop_resource,
(dense_68_biasadd_readvariableop_resource+
'dense_69_matmul_readvariableop_resource,
(dense_69_biasadd_readvariableop_resource
identity??!conv2d_123/BiasAdd/ReadVariableOp? conv2d_123/Conv2D/ReadVariableOp?3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?!conv2d_124/BiasAdd/ReadVariableOp? conv2d_124/Conv2D/ReadVariableOp?3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?!conv2d_125/BiasAdd/ReadVariableOp? conv2d_125/Conv2D/ReadVariableOp?3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?!conv2d_126/BiasAdd/ReadVariableOp? conv2d_126/Conv2D/ReadVariableOp?3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?!conv2d_127/BiasAdd/ReadVariableOp? conv2d_127/Conv2D/ReadVariableOp?3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?1dense_68/kernel/Regularizer/Square/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?1dense_69/kernel/Regularizer/Square/ReadVariableOp?
 conv2d_123/Conv2D/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_123/Conv2D/ReadVariableOp?
conv2d_123/Conv2DConv2Dinputs(conv2d_123/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_123/Conv2D?
!conv2d_123/BiasAdd/ReadVariableOpReadVariableOp*conv2d_123_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_123/BiasAdd/ReadVariableOp?
conv2d_123/BiasAddBiasAddconv2d_123/Conv2D:output:0)conv2d_123/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_123/BiasAdd?
conv2d_123/ReluReluconv2d_123/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_123/Relu?
max_pooling2d_118/MaxPoolMaxPoolconv2d_123/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_118/MaxPool?
 conv2d_124/Conv2D/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 conv2d_124/Conv2D/ReadVariableOp?
conv2d_124/Conv2DConv2D"max_pooling2d_118/MaxPool:output:0(conv2d_124/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_124/Conv2D?
!conv2d_124/BiasAdd/ReadVariableOpReadVariableOp*conv2d_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!conv2d_124/BiasAdd/ReadVariableOp?
conv2d_124/BiasAddBiasAddconv2d_124/Conv2D:output:0)conv2d_124/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_124/BiasAdd?
conv2d_124/ReluReluconv2d_124/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_124/Relu?
max_pooling2d_119/MaxPoolMaxPoolconv2d_124/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_119/MaxPool?
 conv2d_125/Conv2D/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_125/Conv2D/ReadVariableOp?
conv2d_125/Conv2DConv2D"max_pooling2d_119/MaxPool:output:0(conv2d_125/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ *
paddingSAME*
strides
2
conv2d_125/Conv2D?
!conv2d_125/BiasAdd/ReadVariableOpReadVariableOp*conv2d_125_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_125/BiasAdd/ReadVariableOp?
conv2d_125/BiasAddBiasAddconv2d_125/Conv2D:output:0)conv2d_125/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_125/BiasAdd?
conv2d_125/ReluReluconv2d_125/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@ 2
conv2d_125/Relu?
max_pooling2d_120/MaxPoolMaxPoolconv2d_125/Relu:activations:0*/
_output_shapes
:?????????   *
ksize
*
paddingVALID*
strides
2
max_pooling2d_120/MaxPool?
 conv2d_126/Conv2D/ReadVariableOpReadVariableOp)conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_126/Conv2D/ReadVariableOp?
conv2d_126/Conv2DConv2D"max_pooling2d_120/MaxPool:output:0(conv2d_126/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
2
conv2d_126/Conv2D?
!conv2d_126/BiasAdd/ReadVariableOpReadVariableOp*conv2d_126_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_126/BiasAdd/ReadVariableOp?
conv2d_126/BiasAddBiasAddconv2d_126/Conv2D:output:0)conv2d_126/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_126/BiasAdd?
conv2d_126/ReluReluconv2d_126/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_126/Relu?
max_pooling2d_121/MaxPoolMaxPoolconv2d_126/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_121/MaxPool?
 conv2d_127/Conv2D/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_127/Conv2D/ReadVariableOp?
conv2d_127/Conv2DConv2D"max_pooling2d_121/MaxPool:output:0(conv2d_127/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_127/Conv2D?
!conv2d_127/BiasAdd/ReadVariableOpReadVariableOp*conv2d_127_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_127/BiasAdd/ReadVariableOp?
conv2d_127/BiasAddBiasAddconv2d_127/Conv2D:output:0)conv2d_127/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_127/BiasAdd?
conv2d_127/ReluReluconv2d_127/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_127/Relu?
max_pooling2d_122/MaxPoolMaxPoolconv2d_127/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_122/MaxPoolu
flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 	  2
flatten_24/Const?
flatten_24/ReshapeReshape"max_pooling2d_122/MaxPool:output:0flatten_24/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_24/Reshape?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMulflatten_24/Reshape:output:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_67/BiasAddt
dense_67/ReluReludense_67/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_67/Relu?
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_68/MatMul/ReadVariableOp?
dense_68/MatMulMatMuldense_67/Relu:activations:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_68/MatMul?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_68/BiasAdd/ReadVariableOp?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_68/BiasAddt
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_68/Relu?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_69/MatMul/ReadVariableOp?
dense_69/MatMulMatMuldense_68/Relu:activations:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/MatMul?
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_69/BiasAdd/ReadVariableOp?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_69/BiasAdd|
dense_69/SoftmaxSoftmaxdense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_69/Softmax?
3conv2d_123/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_123_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_123/kernel/Regularizer/SquareSquare;conv2d_123/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_123/kernel/Regularizer/Square?
#conv2d_123/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_123/kernel/Regularizer/Const?
!conv2d_123/kernel/Regularizer/SumSum(conv2d_123/kernel/Regularizer/Square:y:0,conv2d_123/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/Sum?
#conv2d_123/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_123/kernel/Regularizer/mul/x?
!conv2d_123/kernel/Regularizer/mulMul,conv2d_123/kernel/Regularizer/mul/x:output:0*conv2d_123/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_123/kernel/Regularizer/mul?
3conv2d_124/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_124_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype025
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_124/kernel/Regularizer/SquareSquare;conv2d_124/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:2&
$conv2d_124/kernel/Regularizer/Square?
#conv2d_124/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_124/kernel/Regularizer/Const?
!conv2d_124/kernel/Regularizer/SumSum(conv2d_124/kernel/Regularizer/Square:y:0,conv2d_124/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/Sum?
#conv2d_124/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_124/kernel/Regularizer/mul/x?
!conv2d_124/kernel/Regularizer/mulMul,conv2d_124/kernel/Regularizer/mul/x:output:0*conv2d_124/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_124/kernel/Regularizer/mul?
3conv2d_125/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_125_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_125/kernel/Regularizer/SquareSquare;conv2d_125/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2&
$conv2d_125/kernel/Regularizer/Square?
#conv2d_125/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_125/kernel/Regularizer/Const?
!conv2d_125/kernel/Regularizer/SumSum(conv2d_125/kernel/Regularizer/Square:y:0,conv2d_125/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/Sum?
#conv2d_125/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_125/kernel/Regularizer/mul/x?
!conv2d_125/kernel/Regularizer/mulMul,conv2d_125/kernel/Regularizer/mul/x:output:0*conv2d_125/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_125/kernel/Regularizer/mul?
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_126_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
3conv2d_127/kernel/Regularizer/Square/ReadVariableOpReadVariableOp)conv2d_127_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_127/kernel/Regularizer/SquareSquare;conv2d_127/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2&
$conv2d_127/kernel/Regularizer/Square?
#conv2d_127/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_127/kernel/Regularizer/Const?
!conv2d_127/kernel/Regularizer/SumSum(conv2d_127/kernel/Regularizer/Square:y:0,conv2d_127/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/Sum?
#conv2d_127/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_127/kernel/Regularizer/mul/x?
!conv2d_127/kernel/Regularizer/mulMul,conv2d_127/kernel/Regularizer/mul/x:output:0*conv2d_127/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_127/kernel/Regularizer/mul?
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
1dense_68/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_68/kernel/Regularizer/Square/ReadVariableOp?
"dense_68/kernel/Regularizer/SquareSquare9dense_68/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_68/kernel/Regularizer/Square?
!dense_68/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_68/kernel/Regularizer/Const?
dense_68/kernel/Regularizer/SumSum&dense_68/kernel/Regularizer/Square:y:0*dense_68/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/Sum?
!dense_68/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_68/kernel/Regularizer/mul/x?
dense_68/kernel/Regularizer/mulMul*dense_68/kernel/Regularizer/mul/x:output:0(dense_68/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_68/kernel/Regularizer/mul?
1dense_69/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype023
1dense_69/kernel/Regularizer/Square/ReadVariableOp?
"dense_69/kernel/Regularizer/SquareSquare9dense_69/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2$
"dense_69/kernel/Regularizer/Square?
!dense_69/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_69/kernel/Regularizer/Const?
dense_69/kernel/Regularizer/SumSum&dense_69/kernel/Regularizer/Square:y:0*dense_69/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/Sum?
!dense_69/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_69/kernel/Regularizer/mul/x?
dense_69/kernel/Regularizer/mulMul*dense_69/kernel/Regularizer/mul/x:output:0(dense_69/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_69/kernel/Regularizer/mul?
IdentityIdentitydense_69/Softmax:softmax:0"^conv2d_123/BiasAdd/ReadVariableOp!^conv2d_123/Conv2D/ReadVariableOp4^conv2d_123/kernel/Regularizer/Square/ReadVariableOp"^conv2d_124/BiasAdd/ReadVariableOp!^conv2d_124/Conv2D/ReadVariableOp4^conv2d_124/kernel/Regularizer/Square/ReadVariableOp"^conv2d_125/BiasAdd/ReadVariableOp!^conv2d_125/Conv2D/ReadVariableOp4^conv2d_125/kernel/Regularizer/Square/ReadVariableOp"^conv2d_126/BiasAdd/ReadVariableOp!^conv2d_126/Conv2D/ReadVariableOp4^conv2d_126/kernel/Regularizer/Square/ReadVariableOp"^conv2d_127/BiasAdd/ReadVariableOp!^conv2d_127/Conv2D/ReadVariableOp4^conv2d_127/kernel/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp2^dense_68/kernel/Regularizer/Square/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp2^dense_69/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:???????????::::::::::::::::2F
!conv2d_123/BiasAdd/ReadVariableOp!conv2d_123/BiasAdd/ReadVariableOp2D
 conv2d_123/Conv2D/ReadVariableOp conv2d_123/Conv2D/ReadVariableOp2j
3conv2d_123/kernel/Regularizer/Square/ReadVariableOp3conv2d_123/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_124/BiasAdd/ReadVariableOp!conv2d_124/BiasAdd/ReadVariableOp2D
 conv2d_124/Conv2D/ReadVariableOp conv2d_124/Conv2D/ReadVariableOp2j
3conv2d_124/kernel/Regularizer/Square/ReadVariableOp3conv2d_124/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_125/BiasAdd/ReadVariableOp!conv2d_125/BiasAdd/ReadVariableOp2D
 conv2d_125/Conv2D/ReadVariableOp conv2d_125/Conv2D/ReadVariableOp2j
3conv2d_125/kernel/Regularizer/Square/ReadVariableOp3conv2d_125/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_126/BiasAdd/ReadVariableOp!conv2d_126/BiasAdd/ReadVariableOp2D
 conv2d_126/Conv2D/ReadVariableOp conv2d_126/Conv2D/ReadVariableOp2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_127/BiasAdd/ReadVariableOp!conv2d_127/BiasAdd/ReadVariableOp2D
 conv2d_127/Conv2D/ReadVariableOp conv2d_127/Conv2D/ReadVariableOp2j
3conv2d_127/kernel/Regularizer/Square/ReadVariableOp3conv2d_127/kernel/Regularizer/Square/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2f
1dense_68/kernel/Regularizer/Square/ReadVariableOp1dense_68/kernel/Regularizer/Square/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2f
1dense_69/kernel/Regularizer/Square/ReadVariableOp1dense_69/kernel/Regularizer/Square/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_dense_67_layer_call_and_return_conditional_losses_443463

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?1dense_67/kernel/Regularizer/Square/ReadVariableOp?
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
1dense_67/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1dense_67/kernel/Regularizer/Square/ReadVariableOp?
"dense_67/kernel/Regularizer/SquareSquare9dense_67/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2$
"dense_67/kernel/Regularizer/Square?
!dense_67/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_67/kernel/Regularizer/Const?
dense_67/kernel/Regularizer/SumSum&dense_67/kernel/Regularizer/Square:y:0*dense_67/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/Sum?
!dense_67/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!dense_67/kernel/Regularizer/mul/x?
dense_67/kernel/Regularizer/mulMul*dense_67/kernel/Regularizer/mul/x:output:0(dense_67/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_67/kernel/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_67/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_67/kernel/Regularizer/Square/ReadVariableOp1dense_67/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_443204

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
N
2__inference_max_pooling2d_120_layer_call_fn_443234

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
GPU 2J 8? *V
fQRO
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_4432282
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
?
?
+__inference_conv2d_123_layer_call_fn_444394

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
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
GPU 2J 8? *O
fJRH
F__inference_conv2d_123_layer_call_and_return_conditional_losses_4432792
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
__inference_loss_fn_3_444673@
<conv2d_126_kernel_regularizer_square_readvariableop_resource
identity??3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
3conv2d_126/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<conv2d_126_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:  *
dtype025
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp?
$conv2d_126/kernel/Regularizer/SquareSquare;conv2d_126/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:  2&
$conv2d_126/kernel/Regularizer/Square?
#conv2d_126/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#conv2d_126/kernel/Regularizer/Const?
!conv2d_126/kernel/Regularizer/SumSum(conv2d_126/kernel/Regularizer/Square:y:0,conv2d_126/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/Sum?
#conv2d_126/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;2%
#conv2d_126/kernel/Regularizer/mul/x?
!conv2d_126/kernel/Regularizer/mulMul,conv2d_126/kernel/Regularizer/mul/x:output:0*conv2d_126/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv2d_126/kernel/Regularizer/mul?
IdentityIdentity%conv2d_126/kernel/Regularizer/mul:z:04^conv2d_126/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2j
3conv2d_126/kernel/Regularizer/Square/ReadVariableOp3conv2d_126/kernel/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_123_inputC
"serving_default_conv2d_123_input:0???????????<
dense_690
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?y
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
	variables
trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?u
_tf_keras_sequential?t{"class_name": "Sequential", "name": "sequential_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_123_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_123", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_118", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_119", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_125", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_120", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_126", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_121", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_127", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_122", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_24", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_69", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_123_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_123", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_118", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_119", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_125", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_120", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_126", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_121", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_127", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_122", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_24", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_69", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_123", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_123", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_118", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_118", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_124", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 128, 16]}}
?
%regularization_losses
&	variables
'trainable_variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_119", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_119", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


)kernel
*bias
+regularization_losses
,	variables
-trainable_variables
.	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_125", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_125", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 64, 16]}}
?
/regularization_losses
0	variables
1trainable_variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_120", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_120", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


3kernel
4bias
5regularization_losses
6	variables
7trainable_variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_126", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_126", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
?
9regularization_losses
:	variables
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_121", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_121", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


=kernel
>bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_127", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_127", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.004999999888241291}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 32]}}
?
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_122", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_122", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_24", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

Kkernel
Lbias
Mregularization_losses
N	variables
Otrainable_variables
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_67", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2304}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2304]}}
?

Qkernel
Rbias
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_68", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_68", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?

Wkernel
Xbias
Yregularization_losses
Z	variables
[trainable_variables
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_69", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_69", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?
]iter

^beta_1

_beta_2
	`decay
alearning_ratem?m?m? m?)m?*m?3m?4m?=m?>m?Km?Lm?Qm?Rm?Wm?Xm?v?v?v? v?)v?*v?3v?4v?=v?>v?Kv?Lv?Qv?Rv?Wv?Xv?"
	optimizer
`
?0
?1
?2
?3
?4
?5
?6
?7"
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
blayer_metrics
	variables
trainable_variables

clayers
dnon_trainable_variables
emetrics
flayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)2conv2d_123/kernel
:2conv2d_123/bias
(
?0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
glayer_metrics
regularization_losses
	variables
trainable_variables

hlayers
inon_trainable_variables
jmetrics
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
llayer_metrics
regularization_losses
	variables
trainable_variables

mlayers
nnon_trainable_variables
ometrics
player_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)2conv2d_124/kernel
:2conv2d_124/bias
(
?0"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
qlayer_metrics
!regularization_losses
"	variables
#trainable_variables

rlayers
snon_trainable_variables
tmetrics
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
vlayer_metrics
%regularization_losses
&	variables
'trainable_variables

wlayers
xnon_trainable_variables
ymetrics
zlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 2conv2d_125/kernel
: 2conv2d_125/bias
(
?0"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
{layer_metrics
+regularization_losses
,	variables
-trainable_variables

|layers
}non_trainable_variables
~metrics
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
?layer_metrics
/regularization_losses
0	variables
1trainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_126/kernel
: 2conv2d_126/bias
(
?0"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
?layer_metrics
5regularization_losses
6	variables
7trainable_variables
?layers
?non_trainable_variables
?metrics
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
?layer_metrics
9regularization_losses
:	variables
;trainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_127/kernel
:@2conv2d_127/bias
(
?0"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
?
?layer_metrics
?regularization_losses
@	variables
Atrainable_variables
?layers
?non_trainable_variables
?metrics
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
?layer_metrics
Cregularization_losses
D	variables
Etrainable_variables
?layers
?non_trainable_variables
?metrics
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
?layer_metrics
Gregularization_losses
H	variables
Itrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_67/kernel
:?2dense_67/bias
(
?0"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
?layer_metrics
Mregularization_losses
N	variables
Otrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_68/kernel
:?2dense_68/bias
(
?0"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
?
?layer_metrics
Sregularization_losses
T	variables
Utrainable_variables
?layers
?non_trainable_variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_69/kernel
:2dense_69/bias
(
?0"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
?
?layer_metrics
Yregularization_losses
Z	variables
[trainable_variables
?layers
?non_trainable_variables
?metrics
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
 "
trackable_dict_wrapper
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
0
?0
?1"
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
(
?0"
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
(
?0"
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
(
?0"
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
(
?0"
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
(
?0"
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
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
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
0:.2Adam/conv2d_123/kernel/m
": 2Adam/conv2d_123/bias/m
0:.2Adam/conv2d_124/kernel/m
": 2Adam/conv2d_124/bias/m
0:. 2Adam/conv2d_125/kernel/m
":  2Adam/conv2d_125/bias/m
0:.  2Adam/conv2d_126/kernel/m
":  2Adam/conv2d_126/bias/m
0:. @2Adam/conv2d_127/kernel/m
": @2Adam/conv2d_127/bias/m
(:&
??2Adam/dense_67/kernel/m
!:?2Adam/dense_67/bias/m
(:&
??2Adam/dense_68/kernel/m
!:?2Adam/dense_68/bias/m
':%	?2Adam/dense_69/kernel/m
 :2Adam/dense_69/bias/m
0:.2Adam/conv2d_123/kernel/v
": 2Adam/conv2d_123/bias/v
0:.2Adam/conv2d_124/kernel/v
": 2Adam/conv2d_124/bias/v
0:. 2Adam/conv2d_125/kernel/v
":  2Adam/conv2d_125/bias/v
0:.  2Adam/conv2d_126/kernel/v
":  2Adam/conv2d_126/bias/v
0:. @2Adam/conv2d_127/kernel/v
": @2Adam/conv2d_127/bias/v
(:&
??2Adam/dense_67/kernel/v
!:?2Adam/dense_67/bias/v
(:&
??2Adam/dense_68/kernel/v
!:?2Adam/dense_68/bias/v
':%	?2Adam/dense_69/kernel/v
 :2Adam/dense_69/bias/v
?2?
.__inference_sequential_24_layer_call_fn_444362
.__inference_sequential_24_layer_call_fn_443963
.__inference_sequential_24_layer_call_fn_444325
.__inference_sequential_24_layer_call_fn_443828?
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
!__inference__wrapped_model_443198?
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
annotations? *9?6
4?1
conv2d_123_input???????????
?2?
I__inference_sequential_24_layer_call_and_return_conditional_losses_444173
I__inference_sequential_24_layer_call_and_return_conditional_losses_443692
I__inference_sequential_24_layer_call_and_return_conditional_losses_444288
I__inference_sequential_24_layer_call_and_return_conditional_losses_443594?
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
+__inference_conv2d_123_layer_call_fn_444394?
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
F__inference_conv2d_123_layer_call_and_return_conditional_losses_444385?
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
2__inference_max_pooling2d_118_layer_call_fn_443210?
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
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_443204?
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
+__inference_conv2d_124_layer_call_fn_444426?
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
F__inference_conv2d_124_layer_call_and_return_conditional_losses_444417?
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
2__inference_max_pooling2d_119_layer_call_fn_443222?
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
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_443216?
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
+__inference_conv2d_125_layer_call_fn_444458?
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
F__inference_conv2d_125_layer_call_and_return_conditional_losses_444449?
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
2__inference_max_pooling2d_120_layer_call_fn_443234?
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
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_443228?
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
+__inference_conv2d_126_layer_call_fn_444490?
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
F__inference_conv2d_126_layer_call_and_return_conditional_losses_444481?
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
2__inference_max_pooling2d_121_layer_call_fn_443246?
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
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_443240?
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
+__inference_conv2d_127_layer_call_fn_444522?
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
F__inference_conv2d_127_layer_call_and_return_conditional_losses_444513?
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
2__inference_max_pooling2d_122_layer_call_fn_443258?
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
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_443252?
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
+__inference_flatten_24_layer_call_fn_444533?
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
F__inference_flatten_24_layer_call_and_return_conditional_losses_444528?
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
)__inference_dense_67_layer_call_fn_444565?
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
D__inference_dense_67_layer_call_and_return_conditional_losses_444556?
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
)__inference_dense_68_layer_call_fn_444597?
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
D__inference_dense_68_layer_call_and_return_conditional_losses_444588?
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
)__inference_dense_69_layer_call_fn_444629?
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
D__inference_dense_69_layer_call_and_return_conditional_losses_444620?
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
__inference_loss_fn_0_444640?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_444651?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_444662?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_444673?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_444684?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_444695?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_6_444706?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_7_444717?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_444058conv2d_123_input"?
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
!__inference__wrapped_model_443198? )*34=>KLQRWXC?@
9?6
4?1
conv2d_123_input???????????
? "3?0
.
dense_69"?
dense_69??????????
F__inference_conv2d_123_layer_call_and_return_conditional_losses_444385p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_conv2d_123_layer_call_fn_444394c9?6
/?,
*?'
inputs???????????
? ""?????????????
F__inference_conv2d_124_layer_call_and_return_conditional_losses_444417p 9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
+__inference_conv2d_124_layer_call_fn_444426c 9?6
/?,
*?'
inputs???????????
? ""?????????????
F__inference_conv2d_125_layer_call_and_return_conditional_losses_444449l)*7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@ 
? ?
+__inference_conv2d_125_layer_call_fn_444458_)*7?4
-?*
(?%
inputs?????????@@
? " ??????????@@ ?
F__inference_conv2d_126_layer_call_and_return_conditional_losses_444481l347?4
-?*
(?%
inputs?????????   
? "-?*
#? 
0????????? 
? ?
+__inference_conv2d_126_layer_call_fn_444490_347?4
-?*
(?%
inputs?????????   
? " ?????????? ?
F__inference_conv2d_127_layer_call_and_return_conditional_losses_444513l=>7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
+__inference_conv2d_127_layer_call_fn_444522_=>7?4
-?*
(?%
inputs????????? 
? " ??????????@?
D__inference_dense_67_layer_call_and_return_conditional_losses_444556^KL0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_67_layer_call_fn_444565QKL0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_68_layer_call_and_return_conditional_losses_444588^QR0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_dense_68_layer_call_fn_444597QQR0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_69_layer_call_and_return_conditional_losses_444620]WX0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_69_layer_call_fn_444629PWX0?-
&?#
!?
inputs??????????
? "???????????
F__inference_flatten_24_layer_call_and_return_conditional_losses_444528a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? ?
+__inference_flatten_24_layer_call_fn_444533T7?4
-?*
(?%
inputs?????????@
? "???????????;
__inference_loss_fn_0_444640?

? 
? "? ;
__inference_loss_fn_1_444651?

? 
? "? ;
__inference_loss_fn_2_444662)?

? 
? "? ;
__inference_loss_fn_3_4446733?

? 
? "? ;
__inference_loss_fn_4_444684=?

? 
? "? ;
__inference_loss_fn_5_444695K?

? 
? "? ;
__inference_loss_fn_6_444706Q?

? 
? "? ;
__inference_loss_fn_7_444717W?

? 
? "? ?
M__inference_max_pooling2d_118_layer_call_and_return_conditional_losses_443204?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_118_layer_call_fn_443210?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_119_layer_call_and_return_conditional_losses_443216?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_119_layer_call_fn_443222?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_120_layer_call_and_return_conditional_losses_443228?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_120_layer_call_fn_443234?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_121_layer_call_and_return_conditional_losses_443240?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_121_layer_call_fn_443246?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
M__inference_max_pooling2d_122_layer_call_and_return_conditional_losses_443252?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
2__inference_max_pooling2d_122_layer_call_fn_443258?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_24_layer_call_and_return_conditional_losses_443594? )*34=>KLQRWXK?H
A?>
4?1
conv2d_123_input???????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_24_layer_call_and_return_conditional_losses_443692? )*34=>KLQRWXK?H
A?>
4?1
conv2d_123_input???????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_24_layer_call_and_return_conditional_losses_444173| )*34=>KLQRWXA?>
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
I__inference_sequential_24_layer_call_and_return_conditional_losses_444288| )*34=>KLQRWXA?>
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
.__inference_sequential_24_layer_call_fn_443828y )*34=>KLQRWXK?H
A?>
4?1
conv2d_123_input???????????
p

 
? "???????????
.__inference_sequential_24_layer_call_fn_443963y )*34=>KLQRWXK?H
A?>
4?1
conv2d_123_input???????????
p 

 
? "???????????
.__inference_sequential_24_layer_call_fn_444325o )*34=>KLQRWXA?>
7?4
*?'
inputs???????????
p

 
? "???????????
.__inference_sequential_24_layer_call_fn_444362o )*34=>KLQRWXA?>
7?4
*?'
inputs???????????
p 

 
? "???????????
$__inference_signature_wrapper_444058? )*34=>KLQRWXW?T
? 
M?J
H
conv2d_123_input4?1
conv2d_123_input???????????"3?0
.
dense_69"?
dense_69?????????