Љ%
а
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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
$
DisableCopyOnRead
resource
ћ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%ЭЬL>"
Ttype0:
2

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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
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
Sigmoid
x"T
y"T"
Ttype:

2
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8У
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

Adam/v/conv2d_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_106/bias
}
*Adam/v/conv2d_106/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_106/bias*
_output_shapes
:*
dtype0

Adam/m/conv2d_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_106/bias
}
*Adam/m/conv2d_106/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_106/bias*
_output_shapes
:*
dtype0

Adam/v/conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/v/conv2d_106/kernel

,Adam/v/conv2d_106/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_106/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/m/conv2d_106/kernel

,Adam/m/conv2d_106/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_106/kernel*&
_output_shapes
: *
dtype0

"Adam/v/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_17/beta

6Adam/v/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_17/beta*
_output_shapes
: *
dtype0

"Adam/m/batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_17/beta

6Adam/m/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_17/beta*
_output_shapes
: *
dtype0

#Adam/v/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_17/gamma

7Adam/v/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_17/gamma*
_output_shapes
: *
dtype0

#Adam/m/batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_17/gamma

7Adam/m/batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_17/gamma*
_output_shapes
: *
dtype0

Adam/v/conv2d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_105/bias
}
*Adam/v/conv2d_105/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_105/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_105/bias
}
*Adam/m/conv2d_105/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_105/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/v/conv2d_105/kernel

,Adam/v/conv2d_105/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_105/kernel*&
_output_shapes
:@ *
dtype0

Adam/m/conv2d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameAdam/m/conv2d_105/kernel

,Adam/m/conv2d_105/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_105/kernel*&
_output_shapes
:@ *
dtype0

"Adam/v/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_16/beta

6Adam/v/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_16/beta*
_output_shapes
:@*
dtype0

"Adam/m/batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_16/beta

6Adam/m/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_16/beta*
_output_shapes
:@*
dtype0

#Adam/v/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_16/gamma

7Adam/v/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_16/gamma*
_output_shapes
:@*
dtype0

#Adam/m/batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_16/gamma

7Adam/m/batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_16/gamma*
_output_shapes
:@*
dtype0

Adam/v/conv2d_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/v/conv2d_104/bias
}
*Adam/v/conv2d_104/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_104/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/m/conv2d_104/bias
}
*Adam/m/conv2d_104/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_104/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/v/conv2d_104/kernel

,Adam/v/conv2d_104/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_104/kernel*'
_output_shapes
:@*
dtype0

Adam/m/conv2d_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/m/conv2d_104/kernel

,Adam/m/conv2d_104/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_104/kernel*'
_output_shapes
:@*
dtype0

"Adam/v/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_15/beta

6Adam/v/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_15/beta*
_output_shapes	
:*
dtype0

"Adam/m/batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_15/beta

6Adam/m/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_15/beta*
_output_shapes	
:*
dtype0

#Adam/v/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_15/gamma

7Adam/v/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_15/gamma*
_output_shapes	
:*
dtype0

#Adam/m/batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_15/gamma

7Adam/m/batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_15/gamma*
_output_shapes	
:*
dtype0

Adam/v/conv2d_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_103/bias
~
*Adam/v/conv2d_103/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_103/bias*
_output_shapes	
:*
dtype0

Adam/m/conv2d_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_103/bias
~
*Adam/m/conv2d_103/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_103/bias*
_output_shapes	
:*
dtype0

Adam/v/conv2d_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/conv2d_103/kernel

,Adam/v/conv2d_103/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_103/kernel*(
_output_shapes
:*
dtype0

Adam/m/conv2d_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/conv2d_103/kernel

,Adam/m/conv2d_103/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_103/kernel*(
_output_shapes
:*
dtype0

"Adam/v/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_14/beta

6Adam/v/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_14/beta*
_output_shapes	
:*
dtype0

"Adam/m/batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_14/beta

6Adam/m/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_14/beta*
_output_shapes	
:*
dtype0

#Adam/v/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_14/gamma

7Adam/v/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_14/gamma*
_output_shapes	
:*
dtype0

#Adam/m/batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_14/gamma

7Adam/m/batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_14/gamma*
_output_shapes	
:*
dtype0

Adam/v/conv2d_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/conv2d_102/bias
~
*Adam/v/conv2d_102/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_102/bias*
_output_shapes	
:*
dtype0

Adam/m/conv2d_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/conv2d_102/bias
~
*Adam/m/conv2d_102/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_102/bias*
_output_shapes	
:*
dtype0

Adam/v/conv2d_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/v/conv2d_102/kernel

,Adam/v/conv2d_102/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_102/kernel*'
_output_shapes
:@*
dtype0

Adam/m/conv2d_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/m/conv2d_102/kernel

,Adam/m/conv2d_102/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_102/kernel*'
_output_shapes
:@*
dtype0

"Adam/v/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_13/beta

6Adam/v/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_13/beta*
_output_shapes
:@*
dtype0

"Adam/m/batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_13/beta

6Adam/m/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_13/beta*
_output_shapes
:@*
dtype0

#Adam/v/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_13/gamma

7Adam/v/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_13/gamma*
_output_shapes
:@*
dtype0

#Adam/m/batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_13/gamma

7Adam/m/batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_13/gamma*
_output_shapes
:@*
dtype0

Adam/v/conv2d_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/v/conv2d_101/bias
}
*Adam/v/conv2d_101/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_101/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/m/conv2d_101/bias
}
*Adam/m/conv2d_101/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_101/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/v/conv2d_101/kernel

,Adam/v/conv2d_101/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_101/kernel*&
_output_shapes
: @*
dtype0

Adam/m/conv2d_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/m/conv2d_101/kernel

,Adam/m/conv2d_101/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_101/kernel*&
_output_shapes
: @*
dtype0

"Adam/v/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_12/beta

6Adam/v/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_12/beta*
_output_shapes
: *
dtype0

"Adam/m/batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_12/beta

6Adam/m/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_12/beta*
_output_shapes
: *
dtype0

#Adam/v/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_12/gamma

7Adam/v/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_12/gamma*
_output_shapes
: *
dtype0

#Adam/m/batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_12/gamma

7Adam/m/batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_12/gamma*
_output_shapes
: *
dtype0

Adam/v/conv2d_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_100/bias
}
*Adam/v/conv2d_100/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_100/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_100/bias
}
*Adam/m/conv2d_100/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_100/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/v/conv2d_100/kernel

,Adam/v/conv2d_100/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_100/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/m/conv2d_100/kernel

,Adam/m/conv2d_100/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_100/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
v
conv2d_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_106/bias
o
#conv2d_106/bias/Read/ReadVariableOpReadVariableOpconv2d_106/bias*
_output_shapes
:*
dtype0

conv2d_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_106/kernel

%conv2d_106/kernel/Read/ReadVariableOpReadVariableOpconv2d_106/kernel*&
_output_shapes
: *
dtype0
Є
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_17/moving_variance

:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes
: *
dtype0

"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_17/moving_mean

6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_17/beta

/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes
: *
dtype0

batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_17/gamma

0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes
: *
dtype0
v
conv2d_105/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_105/bias
o
#conv2d_105/bias/Read/ReadVariableOpReadVariableOpconv2d_105/bias*
_output_shapes
: *
dtype0

conv2d_105/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *"
shared_nameconv2d_105/kernel

%conv2d_105/kernel/Read/ReadVariableOpReadVariableOpconv2d_105/kernel*&
_output_shapes
:@ *
dtype0
Є
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_16/moving_variance

:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_16/moving_mean

6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_16/beta

/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
:@*
dtype0

batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_16/gamma

0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
:@*
dtype0
v
conv2d_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_104/bias
o
#conv2d_104/bias/Read/ReadVariableOpReadVariableOpconv2d_104/bias*
_output_shapes
:@*
dtype0

conv2d_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv2d_104/kernel

%conv2d_104/kernel/Read/ReadVariableOpReadVariableOpconv2d_104/kernel*'
_output_shapes
:@*
dtype0
Ѕ
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_15/moving_variance

:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes	
:*
dtype0

"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_15/moving_mean

6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_15/beta

/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes	
:*
dtype0

batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_15/gamma

0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes	
:*
dtype0
w
conv2d_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_103/bias
p
#conv2d_103/bias/Read/ReadVariableOpReadVariableOpconv2d_103/bias*
_output_shapes	
:*
dtype0

conv2d_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv2d_103/kernel

%conv2d_103/kernel/Read/ReadVariableOpReadVariableOpconv2d_103/kernel*(
_output_shapes
:*
dtype0
Ѕ
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_14/moving_variance

:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes	
:*
dtype0

"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_14/moving_mean

6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_14/beta

/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes	
:*
dtype0

batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_14/gamma

0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes	
:*
dtype0
w
conv2d_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_102/bias
p
#conv2d_102/bias/Read/ReadVariableOpReadVariableOpconv2d_102/bias*
_output_shapes	
:*
dtype0

conv2d_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv2d_102/kernel

%conv2d_102/kernel/Read/ReadVariableOpReadVariableOpconv2d_102/kernel*'
_output_shapes
:@*
dtype0
Є
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_13/moving_variance

:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_13/moving_mean

6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_13/beta

/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:@*
dtype0

batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_13/gamma

0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:@*
dtype0
v
conv2d_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_101/bias
o
#conv2d_101/bias/Read/ReadVariableOpReadVariableOpconv2d_101/bias*
_output_shapes
:@*
dtype0

conv2d_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_101/kernel

%conv2d_101/kernel/Read/ReadVariableOpReadVariableOpconv2d_101/kernel*&
_output_shapes
: @*
dtype0
Є
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_12/moving_variance

:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
: *
dtype0

"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_12/moving_mean

6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_12/beta

/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
: *
dtype0

batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_12/gamma

0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
: *
dtype0
v
conv2d_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_100/bias
o
#conv2d_100/bias/Read/ReadVariableOpReadVariableOpconv2d_100/bias*
_output_shapes
: *
dtype0

conv2d_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_100/kernel

%conv2d_100/kernel/Read/ReadVariableOpReadVariableOpconv2d_100/kernel*&
_output_shapes
: *
dtype0
M
serving_default_input_1Placeholder*
_output_shapes
:*
dtype0
Т
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_100/kernelconv2d_100/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_101/kernelconv2d_101/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_102/kernelconv2d_102/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_103/kernelconv2d_103/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_104/kernelconv2d_104/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_105/kernelconv2d_105/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_106/kernelconv2d_106/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_4711326

NoOpNoOp
ьф
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Іф
valueфBф Bф
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures*
Њ
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21
"22
#23
$24
%25
&26
'27
(28
)29
*30
+31
,32
-33
.34
/35
036
137*
Ъ
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
!15
$16
%17
&18
'19
*20
+21
,22
-23
024
125*
* 
А
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

7trace_0
8trace_1* 

9trace_0
:trace_1* 
* 
Ъ
;layer_with_weights-0
;layer-0
<layer_with_weights-1
<layer-1
=layer-2
>layer-3
?layer_with_weights-2
?layer-4
@layer_with_weights-3
@layer-5
Alayer-6
Blayer-7
Clayer_with_weights-4
Clayer-8
Dlayer_with_weights-5
Dlayer-9
Elayer-10
Flayer-11
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses*
ђ
Mlayer_with_weights-0
Mlayer-0
Nlayer_with_weights-1
Nlayer-1
Olayer-2
Player-3
Qlayer_with_weights-2
Qlayer-4
Rlayer_with_weights-3
Rlayer-5
Slayer-6
Tlayer-7
Ulayer_with_weights-4
Ulayer-8
Vlayer_with_weights-5
Vlayer-9
Wlayer-10
Xlayer-11
Ylayer_with_weights-6
Ylayer-12
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*

`
_variables
a_iterations
b_learning_rate
c_index_dict
d
_momentums
e_velocities
f_update_step_xla*

gserving_default* 
QK
VARIABLE_VALUEconv2d_100/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_100/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_12/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_12/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"batch_normalization_12/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&batch_normalization_12/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_101/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_101/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_13/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_13/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_13/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_13/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_102/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_102/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_14/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_14/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_14/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_14/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_103/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_103/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_15/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_15/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_15/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_15/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_104/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_104/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_16/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_16/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_16/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_16/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_105/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_105/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_17/gamma'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_17/beta'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_17/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_17/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEconv2d_106/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_106/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
Z
0
1
2
3
4
5
"6
#7
(8
)9
.10
/11*

0
	1*

h0*
* 
* 
* 
* 
* 
* 
Ш
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

kernel
bias
 o_jit_compiled_convolution_op*
е
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
vaxis
	gamma
beta
moving_mean
moving_variance*

w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses* 

}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op*
м
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	gamma
beta
moving_mean
moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Я
	variables
trainable_variables
regularization_losses
 	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses

kernel
bias
!Ѓ_jit_compiled_convolution_op*
м
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses
	Њaxis
	gamma
beta
moving_mean
moving_variance*

Ћ	variables
Ќtrainable_variables
­regularization_losses
Ў	keras_api
Џ__call__
+А&call_and_return_all_conditional_losses* 

Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses* 

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17*
Z
0
1
2
3
4
5
6
7
8
9
10
11*
* 

Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*
:
Мtrace_0
Нtrace_1
Оtrace_2
Пtrace_3* 
:
Рtrace_0
Сtrace_1
Тtrace_2
Уtrace_3* 
Я
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses

kernel
bias
!Ъ_jit_compiled_convolution_op*
м
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
	бaxis
	 gamma
!beta
"moving_mean
#moving_variance*

в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses* 

и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses* 
Я
о	variables
пtrainable_variables
рregularization_losses
с	keras_api
т__call__
+у&call_and_return_all_conditional_losses

$kernel
%bias
!ф_jit_compiled_convolution_op*
м
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses
	ыaxis
	&gamma
'beta
(moving_mean
)moving_variance*

ь	variables
эtrainable_variables
юregularization_losses
я	keras_api
№__call__
+ё&call_and_return_all_conditional_losses* 

ђ	variables
ѓtrainable_variables
єregularization_losses
ѕ	keras_api
і__call__
+ї&call_and_return_all_conditional_losses* 
Я
ј	variables
љtrainable_variables
њregularization_losses
ћ	keras_api
ќ__call__
+§&call_and_return_all_conditional_losses

*kernel
+bias
!ў_jit_compiled_convolution_op*
м
џ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	,gamma
-beta
.moving_mean
/moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
Я
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

0kernel
1bias
!_jit_compiled_convolution_op*

0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119*
j
0
1
 2
!3
$4
%5
&6
'7
*8
+9
,10
-11
012
113*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

trace_0
trace_1* 

 trace_0
Ёtrace_1* 
ж
a0
Ђ1
Ѓ2
Є3
Ѕ4
І5
Ї6
Ј7
Љ8
Њ9
Ћ10
Ќ11
­12
Ў13
Џ14
А15
Б16
В17
Г18
Д19
Е20
Ж21
З22
И23
Й24
К25
Л26
М27
Н28
О29
П30
Р31
С32
Т33
У34
Ф35
Х36
Ц37
Ч38
Ш39
Щ40
Ъ41
Ы42
Ь43
Э44
Ю45
Я46
а47
б48
в49
г50
д51
е52*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
ф
Ђ0
Є1
І2
Ј3
Њ4
Ќ5
Ў6
А7
В8
Д9
Ж10
И11
К12
М13
О14
Р15
Т16
Ф17
Ц18
Ш19
Ъ20
Ь21
Ю22
а23
в24
д25*
ф
Ѓ0
Ѕ1
Ї2
Љ3
Ћ4
­5
Џ6
Б7
Г8
Е9
З10
Й11
Л12
Н13
П14
С15
У16
Х17
Ч18
Щ19
Ы20
Э21
Я22
б23
г24
е25*
Ќ
жtrace_0
зtrace_1
иtrace_2
йtrace_3
кtrace_4
лtrace_5
мtrace_6
нtrace_7
оtrace_8
пtrace_9
рtrace_10
сtrace_11* 
* 
<
т	variables
у	keras_api

фtotal

хcount*

0
1*

0
1*
* 

цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

ыtrace_0* 

ьtrace_0* 
* 
 
0
1
2
3*

0
1*
* 

эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

ђtrace_0
ѓtrace_1* 

єtrace_0
ѕtrace_1* 
* 
* 
* 
* 

іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

ћtrace_0* 

ќtrace_0* 
* 
* 
* 

§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
 
0
1
2
3*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

 trace_0* 

Ёtrace_0* 

0
1*

0
1*
* 

Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
	variables
trainable_variables
regularization_losses
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses*

Їtrace_0* 

Јtrace_0* 
* 
 
0
1
2
3*

0
1*
* 

Љnon_trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses*

Ўtrace_0
Џtrace_1* 

Аtrace_0
Бtrace_1* 
* 
* 
* 
* 

Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Ћ	variables
Ќtrainable_variables
­regularization_losses
Џ__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses* 

Зtrace_0* 

Иtrace_0* 
* 
* 
* 

Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses* 

Оtrace_0* 

Пtrace_0* 
.
0
1
2
3
4
5*
Z
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 

Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses*

Хtrace_0* 

Цtrace_0* 
* 
 
 0
!1
"2
#3*

 0
!1*
* 

Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses*

Ьtrace_0
Эtrace_1* 

Юtrace_0
Яtrace_1* 
* 
* 
* 
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses* 

еtrace_0* 

жtrace_0* 
* 
* 
* 

зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses* 

мtrace_0* 

нtrace_0* 

$0
%1*

$0
%1*
* 

оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
о	variables
пtrainable_variables
рregularization_losses
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses*

уtrace_0* 

фtrace_0* 
* 
 
&0
'1
(2
)3*

&0
'1*
* 

хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses*

ъtrace_0
ыtrace_1* 

ьtrace_0
эtrace_1* 
* 
* 
* 
* 

юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
ь	variables
эtrainable_variables
юregularization_losses
№__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses* 

ѓtrace_0* 

єtrace_0* 
* 
* 
* 

ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
љlayer_metrics
ђ	variables
ѓtrainable_variables
єregularization_losses
і__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses* 

њtrace_0* 

ћtrace_0* 

*0
+1*

*0
+1*
* 

ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
ј	variables
љtrainable_variables
њregularization_losses
ќ__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
 
,0
-1
.2
/3*

,0
-1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
џ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

00
11*

00
11*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

 trace_0* 
* 
.
"0
#1
(2
)3
.4
/5*
b
M0
N1
O2
P3
Q4
R5
S6
T7
U8
V9
W10
X11
Y12*
* 
* 
* 
* 
* 
* 
* 
c]
VARIABLE_VALUEAdam/m/conv2d_100/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_100/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_100/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_100/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_12/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_12/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_12/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_12/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_101/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_101/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_101/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_101/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_13/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_13/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_13/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_13/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv2d_102/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_102/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_102/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_102/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_14/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_14/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_14/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_14/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv2d_103/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_103/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_103/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_103/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_15/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_15/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_15/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_15/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv2d_104/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_104/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_104/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_104/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_16/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_16/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_16/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_16/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv2d_105/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_105/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_105/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_105/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_17/gamma2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_17/gamma2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_17/beta2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_17/beta2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/conv2d_106/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/conv2d_106/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_106/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_106/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

ф0
х1*

т	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

"0
#1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

(0
)1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

.0
/1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ѓ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_100/kernelconv2d_100/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_101/kernelconv2d_101/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_102/kernelconv2d_102/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_103/kernelconv2d_103/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_104/kernelconv2d_104/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_105/kernelconv2d_105/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_106/kernelconv2d_106/bias	iterationlearning_rateAdam/m/conv2d_100/kernelAdam/v/conv2d_100/kernelAdam/m/conv2d_100/biasAdam/v/conv2d_100/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv2d_101/kernelAdam/v/conv2d_101/kernelAdam/m/conv2d_101/biasAdam/v/conv2d_101/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv2d_102/kernelAdam/v/conv2d_102/kernelAdam/m/conv2d_102/biasAdam/v/conv2d_102/bias#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/conv2d_103/kernelAdam/v/conv2d_103/kernelAdam/m/conv2d_103/biasAdam/v/conv2d_103/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/betaAdam/m/conv2d_104/kernelAdam/v/conv2d_104/kernelAdam/m/conv2d_104/biasAdam/v/conv2d_104/bias#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/conv2d_105/kernelAdam/v/conv2d_105/kernelAdam/m/conv2d_105/biasAdam/v/conv2d_105/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/betaAdam/m/conv2d_106/kernelAdam/v/conv2d_106/kernelAdam/m/conv2d_106/biasAdam/v/conv2d_106/biastotalcountConst*k
Tind
b2`*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_4712781
ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_100/kernelconv2d_100/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_101/kernelconv2d_101/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_102/kernelconv2d_102/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_103/kernelconv2d_103/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_104/kernelconv2d_104/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_105/kernelconv2d_105/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_106/kernelconv2d_106/bias	iterationlearning_rateAdam/m/conv2d_100/kernelAdam/v/conv2d_100/kernelAdam/m/conv2d_100/biasAdam/v/conv2d_100/bias#Adam/m/batch_normalization_12/gamma#Adam/v/batch_normalization_12/gamma"Adam/m/batch_normalization_12/beta"Adam/v/batch_normalization_12/betaAdam/m/conv2d_101/kernelAdam/v/conv2d_101/kernelAdam/m/conv2d_101/biasAdam/v/conv2d_101/bias#Adam/m/batch_normalization_13/gamma#Adam/v/batch_normalization_13/gamma"Adam/m/batch_normalization_13/beta"Adam/v/batch_normalization_13/betaAdam/m/conv2d_102/kernelAdam/v/conv2d_102/kernelAdam/m/conv2d_102/biasAdam/v/conv2d_102/bias#Adam/m/batch_normalization_14/gamma#Adam/v/batch_normalization_14/gamma"Adam/m/batch_normalization_14/beta"Adam/v/batch_normalization_14/betaAdam/m/conv2d_103/kernelAdam/v/conv2d_103/kernelAdam/m/conv2d_103/biasAdam/v/conv2d_103/bias#Adam/m/batch_normalization_15/gamma#Adam/v/batch_normalization_15/gamma"Adam/m/batch_normalization_15/beta"Adam/v/batch_normalization_15/betaAdam/m/conv2d_104/kernelAdam/v/conv2d_104/kernelAdam/m/conv2d_104/biasAdam/v/conv2d_104/bias#Adam/m/batch_normalization_16/gamma#Adam/v/batch_normalization_16/gamma"Adam/m/batch_normalization_16/beta"Adam/v/batch_normalization_16/betaAdam/m/conv2d_105/kernelAdam/v/conv2d_105/kernelAdam/m/conv2d_105/biasAdam/v/conv2d_105/bias#Adam/m/batch_normalization_17/gamma#Adam/v/batch_normalization_17/gamma"Adam/m/batch_normalization_17/beta"Adam/v/batch_normalization_17/betaAdam/m/conv2d_106/kernelAdam/v/conv2d_106/kernelAdam/m/conv2d_106/biasAdam/v/conv2d_106/biastotalcount*j
Tinc
a2_*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_4713072ЃЯ
в

S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4710340

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
в

S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712148

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


г
8__inference_batch_normalization_17_layer_call_fn_4712099

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4710322
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	4712089:'#
!
_user_specified_name	4712091:'#
!
_user_specified_name	4712093:'#
!
_user_specified_name	4712095
б
g
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4710414

inputs
identityr
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<z
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

L
0__inference_leaky_re_lu_91_layer_call_fn_4711937

inputs
identityд
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4710414{
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к


G__inference_conv2d_101_layer_call_and_return_conditional_losses_4709916

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ @@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ @@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ @@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ @ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
,

K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710846
input_1/
sequential_32_4710767: #
sequential_32_4710769: #
sequential_32_4710771: #
sequential_32_4710773: #
sequential_32_4710775: #
sequential_32_4710777: /
sequential_32_4710779: @#
sequential_32_4710781:@#
sequential_32_4710783:@#
sequential_32_4710785:@#
sequential_32_4710787:@#
sequential_32_4710789:@0
sequential_32_4710791:@$
sequential_32_4710793:	$
sequential_32_4710795:	$
sequential_32_4710797:	$
sequential_32_4710799:	$
sequential_32_4710801:	1
sequential_33_4710804:$
sequential_33_4710806:	$
sequential_33_4710808:	$
sequential_33_4710810:	$
sequential_33_4710812:	$
sequential_33_4710814:	0
sequential_33_4710816:@#
sequential_33_4710818:@#
sequential_33_4710820:@#
sequential_33_4710822:@#
sequential_33_4710824:@#
sequential_33_4710826:@/
sequential_33_4710828:@ #
sequential_33_4710830: #
sequential_33_4710832: #
sequential_33_4710834: #
sequential_33_4710836: #
sequential_33_4710838: /
sequential_33_4710840: #
sequential_33_4710842:
identityЂ%sequential_32/StatefulPartitionedCallЂ%sequential_33/StatefulPartitionedCallА
%sequential_32/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_32_4710767sequential_32_4710769sequential_32_4710771sequential_32_4710773sequential_32_4710775sequential_32_4710777sequential_32_4710779sequential_32_4710781sequential_32_4710783sequential_32_4710785sequential_32_4710787sequential_32_4710789sequential_32_4710791sequential_32_4710793sequential_32_4710795sequential_32_4710797sequential_32_4710799sequential_32_4710801*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710766
%sequential_33/StatefulPartitionedCallStatefulPartitionedCall.sequential_32/StatefulPartitionedCall:output:0sequential_33_4710804sequential_33_4710806sequential_33_4710808sequential_33_4710810sequential_33_4710812sequential_33_4710814sequential_33_4710816sequential_33_4710818sequential_33_4710820sequential_33_4710822sequential_33_4710824sequential_33_4710826sequential_33_4710828sequential_33_4710830sequential_33_4710832sequential_33_4710834sequential_33_4710836sequential_33_4710838sequential_33_4710840sequential_33_4710842* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710496
IdentityIdentity.sequential_33/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџr
NoOpNoOp&^sequential_32/StatefulPartitionedCall&^sequential_33/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_32/StatefulPartitionedCall%sequential_32/StatefulPartitionedCall2N
%sequential_33/StatefulPartitionedCall%sequential_33/StatefulPartitionedCall:A =

_output_shapes
:
!
_user_specified_name	input_1:'#
!
_user_specified_name	4710767:'#
!
_user_specified_name	4710769:'#
!
_user_specified_name	4710771:'#
!
_user_specified_name	4710773:'#
!
_user_specified_name	4710775:'#
!
_user_specified_name	4710777:'#
!
_user_specified_name	4710779:'#
!
_user_specified_name	4710781:'	#
!
_user_specified_name	4710783:'
#
!
_user_specified_name	4710785:'#
!
_user_specified_name	4710787:'#
!
_user_specified_name	4710789:'#
!
_user_specified_name	4710791:'#
!
_user_specified_name	4710793:'#
!
_user_specified_name	4710795:'#
!
_user_specified_name	4710797:'#
!
_user_specified_name	4710799:'#
!
_user_specified_name	4710801:'#
!
_user_specified_name	4710804:'#
!
_user_specified_name	4710806:'#
!
_user_specified_name	4710808:'#
!
_user_specified_name	4710810:'#
!
_user_specified_name	4710812:'#
!
_user_specified_name	4710814:'#
!
_user_specified_name	4710816:'#
!
_user_specified_name	4710818:'#
!
_user_specified_name	4710820:'#
!
_user_specified_name	4710822:'#
!
_user_specified_name	4710824:'#
!
_user_specified_name	4710826:'#
!
_user_specified_name	4710828:' #
!
_user_specified_name	4710830:'!#
!
_user_specified_name	4710832:'"#
!
_user_specified_name	4710834:'##
!
_user_specified_name	4710836:'$#
!
_user_specified_name	4710838:'%#
!
_user_specified_name	4710840:'&#
!
_user_specified_name	4710842
Е

G__inference_conv2d_105_layer_call_and_return_conditional_losses_4710457

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

g
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4711639

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџ@ *
alpha%
з#<h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@ :X T
0
_output_shapes
:џџџџџџџџџ@ 
 
_user_specified_nameinputs
т
Ђ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4710182

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


г
8__inference_batch_normalization_17_layer_call_fn_4712112

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4710340
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	4712102:'#
!
_user_specified_name	4712104:'#
!
_user_specified_name	4712106:'#
!
_user_specified_name	4712108
љu
у
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710766

inputsC
)conv2d_100_conv2d_readvariableop_resource: 8
*conv2d_100_biasadd_readvariableop_resource: <
.batch_normalization_12_readvariableop_resource: >
0batch_normalization_12_readvariableop_1_resource: M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_101_conv2d_readvariableop_resource: @8
*conv2d_101_biasadd_readvariableop_resource:@<
.batch_normalization_13_readvariableop_resource:@>
0batch_normalization_13_readvariableop_1_resource:@M
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@D
)conv2d_102_conv2d_readvariableop_resource:@9
*conv2d_102_biasadd_readvariableop_resource:	=
.batch_normalization_14_readvariableop_resource:	?
0batch_normalization_14_readvariableop_1_resource:	N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	
identityЂ%batch_normalization_12/AssignNewValueЂ'batch_normalization_12/AssignNewValue_1Ђ6batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_12/ReadVariableOpЂ'batch_normalization_12/ReadVariableOp_1Ђ%batch_normalization_13/AssignNewValueЂ'batch_normalization_13/AssignNewValue_1Ђ6batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_13/ReadVariableOpЂ'batch_normalization_13/ReadVariableOp_1Ђ%batch_normalization_14/AssignNewValueЂ'batch_normalization_14/AssignNewValue_1Ђ6batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_14/ReadVariableOpЂ'batch_normalization_14/ReadVariableOp_1Ђ!conv2d_100/BiasAdd/ReadVariableOpЂ conv2d_100/Conv2D/ReadVariableOpЂ!conv2d_101/BiasAdd/ReadVariableOpЂ conv2d_101/Conv2D/ReadVariableOpЂ!conv2d_102/BiasAdd/ReadVariableOpЂ conv2d_102/Conv2D/ReadVariableOp
 conv2d_100/Conv2D/ReadVariableOpReadVariableOp)conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0С
conv2d_100/Conv2DConv2Dinputs(conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

!conv2d_100/BiasAdd/ReadVariableOpReadVariableOp*conv2d_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
conv2d_100/BiasAddBiasAddconv2d_100/Conv2D:output:0)conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
: *
dtype0В
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ж
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_100/BiasAdd:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_12/AssignNewValueAssignVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource4batch_normalization_12/FusedBatchNormV3:batch_mean:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_12/AssignNewValue_1AssignVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_12/FusedBatchNormV3:batch_variance:09^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ѕ
leaky_re_lu_88/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<Щ
max_pooling2d_44/MaxPoolMaxPool&leaky_re_lu_88/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize
*
paddingSAME*
strides

 conv2d_101/Conv2D/ReadVariableOpReadVariableOp)conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0м
conv2d_101/Conv2DConv2D!max_pooling2d_44/MaxPool:output:0(conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides

!conv2d_101/BiasAdd/ReadVariableOpReadVariableOp*conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
conv2d_101/BiasAddBiasAddconv2d_101/Conv2D:output:0)conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_101/BiasAdd:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ѕ
leaky_re_lu_89/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<Щ
max_pooling2d_45/MaxPoolMaxPool&leaky_re_lu_89/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize
*
paddingSAME*
strides

 conv2d_102/Conv2D/ReadVariableOpReadVariableOp)conv2d_102_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0н
conv2d_102/Conv2DConv2D!max_pooling2d_45/MaxPool:output:0(conv2d_102/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides

!conv2d_102/BiasAdd/ReadVariableOpReadVariableOp*conv2d_102_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Б
conv2d_102/BiasAddBiasAddconv2d_102/Conv2D:output:0)conv2d_102/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0у
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_102/BiasAdd:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(І
leaky_re_lu_90/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<Ъ
max_pooling2d_46/MaxPoolMaxPool&leaky_re_lu_90/LeakyRelu:activations:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides

IdentityIdentity!max_pooling2d_46/MaxPool:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџП
NoOpNoOp&^batch_normalization_12/AssignNewValue(^batch_normalization_12/AssignNewValue_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1"^conv2d_100/BiasAdd/ReadVariableOp!^conv2d_100/Conv2D/ReadVariableOp"^conv2d_101/BiasAdd/ReadVariableOp!^conv2d_101/Conv2D/ReadVariableOp"^conv2d_102/BiasAdd/ReadVariableOp!^conv2d_102/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:: : : : : : : : : : : : : : : : : : 2N
%batch_normalization_12/AssignNewValue%batch_normalization_12/AssignNewValue2R
'batch_normalization_12/AssignNewValue_1'batch_normalization_12/AssignNewValue_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12F
!conv2d_100/BiasAdd/ReadVariableOp!conv2d_100/BiasAdd/ReadVariableOp2D
 conv2d_100/Conv2D/ReadVariableOp conv2d_100/Conv2D/ReadVariableOp2F
!conv2d_101/BiasAdd/ReadVariableOp!conv2d_101/BiasAdd/ReadVariableOp2D
 conv2d_101/Conv2D/ReadVariableOp conv2d_101/Conv2D/ReadVariableOp2F
!conv2d_102/BiasAdd/ReadVariableOp!conv2d_102/BiasAdd/ReadVariableOp2D
 conv2d_102/Conv2D/ReadVariableOp conv2d_102/Conv2D/ReadVariableOp:@ <

_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
П
N
2__inference_up_sampling2d_46_layer_call_fn_4712163

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4710378
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ђ

G__inference_conv2d_106_layer_call_and_return_conditional_losses_4712195

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
с


G__inference_conv2d_102_layer_call_and_return_conditional_losses_4709947

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ЉЙ
Ц@
#__inference__traced_restore_4713072
file_prefix<
"assignvariableop_conv2d_100_kernel: 0
"assignvariableop_1_conv2d_100_bias: =
/assignvariableop_2_batch_normalization_12_gamma: <
.assignvariableop_3_batch_normalization_12_beta: C
5assignvariableop_4_batch_normalization_12_moving_mean: G
9assignvariableop_5_batch_normalization_12_moving_variance: >
$assignvariableop_6_conv2d_101_kernel: @0
"assignvariableop_7_conv2d_101_bias:@=
/assignvariableop_8_batch_normalization_13_gamma:@<
.assignvariableop_9_batch_normalization_13_beta:@D
6assignvariableop_10_batch_normalization_13_moving_mean:@H
:assignvariableop_11_batch_normalization_13_moving_variance:@@
%assignvariableop_12_conv2d_102_kernel:@2
#assignvariableop_13_conv2d_102_bias:	?
0assignvariableop_14_batch_normalization_14_gamma:	>
/assignvariableop_15_batch_normalization_14_beta:	E
6assignvariableop_16_batch_normalization_14_moving_mean:	I
:assignvariableop_17_batch_normalization_14_moving_variance:	A
%assignvariableop_18_conv2d_103_kernel:2
#assignvariableop_19_conv2d_103_bias:	?
0assignvariableop_20_batch_normalization_15_gamma:	>
/assignvariableop_21_batch_normalization_15_beta:	E
6assignvariableop_22_batch_normalization_15_moving_mean:	I
:assignvariableop_23_batch_normalization_15_moving_variance:	@
%assignvariableop_24_conv2d_104_kernel:@1
#assignvariableop_25_conv2d_104_bias:@>
0assignvariableop_26_batch_normalization_16_gamma:@=
/assignvariableop_27_batch_normalization_16_beta:@D
6assignvariableop_28_batch_normalization_16_moving_mean:@H
:assignvariableop_29_batch_normalization_16_moving_variance:@?
%assignvariableop_30_conv2d_105_kernel:@ 1
#assignvariableop_31_conv2d_105_bias: >
0assignvariableop_32_batch_normalization_17_gamma: =
/assignvariableop_33_batch_normalization_17_beta: D
6assignvariableop_34_batch_normalization_17_moving_mean: H
:assignvariableop_35_batch_normalization_17_moving_variance: ?
%assignvariableop_36_conv2d_106_kernel: 1
#assignvariableop_37_conv2d_106_bias:'
assignvariableop_38_iteration:	 +
!assignvariableop_39_learning_rate: F
,assignvariableop_40_adam_m_conv2d_100_kernel: F
,assignvariableop_41_adam_v_conv2d_100_kernel: 8
*assignvariableop_42_adam_m_conv2d_100_bias: 8
*assignvariableop_43_adam_v_conv2d_100_bias: E
7assignvariableop_44_adam_m_batch_normalization_12_gamma: E
7assignvariableop_45_adam_v_batch_normalization_12_gamma: D
6assignvariableop_46_adam_m_batch_normalization_12_beta: D
6assignvariableop_47_adam_v_batch_normalization_12_beta: F
,assignvariableop_48_adam_m_conv2d_101_kernel: @F
,assignvariableop_49_adam_v_conv2d_101_kernel: @8
*assignvariableop_50_adam_m_conv2d_101_bias:@8
*assignvariableop_51_adam_v_conv2d_101_bias:@E
7assignvariableop_52_adam_m_batch_normalization_13_gamma:@E
7assignvariableop_53_adam_v_batch_normalization_13_gamma:@D
6assignvariableop_54_adam_m_batch_normalization_13_beta:@D
6assignvariableop_55_adam_v_batch_normalization_13_beta:@G
,assignvariableop_56_adam_m_conv2d_102_kernel:@G
,assignvariableop_57_adam_v_conv2d_102_kernel:@9
*assignvariableop_58_adam_m_conv2d_102_bias:	9
*assignvariableop_59_adam_v_conv2d_102_bias:	F
7assignvariableop_60_adam_m_batch_normalization_14_gamma:	F
7assignvariableop_61_adam_v_batch_normalization_14_gamma:	E
6assignvariableop_62_adam_m_batch_normalization_14_beta:	E
6assignvariableop_63_adam_v_batch_normalization_14_beta:	H
,assignvariableop_64_adam_m_conv2d_103_kernel:H
,assignvariableop_65_adam_v_conv2d_103_kernel:9
*assignvariableop_66_adam_m_conv2d_103_bias:	9
*assignvariableop_67_adam_v_conv2d_103_bias:	F
7assignvariableop_68_adam_m_batch_normalization_15_gamma:	F
7assignvariableop_69_adam_v_batch_normalization_15_gamma:	E
6assignvariableop_70_adam_m_batch_normalization_15_beta:	E
6assignvariableop_71_adam_v_batch_normalization_15_beta:	G
,assignvariableop_72_adam_m_conv2d_104_kernel:@G
,assignvariableop_73_adam_v_conv2d_104_kernel:@8
*assignvariableop_74_adam_m_conv2d_104_bias:@8
*assignvariableop_75_adam_v_conv2d_104_bias:@E
7assignvariableop_76_adam_m_batch_normalization_16_gamma:@E
7assignvariableop_77_adam_v_batch_normalization_16_gamma:@D
6assignvariableop_78_adam_m_batch_normalization_16_beta:@D
6assignvariableop_79_adam_v_batch_normalization_16_beta:@F
,assignvariableop_80_adam_m_conv2d_105_kernel:@ F
,assignvariableop_81_adam_v_conv2d_105_kernel:@ 8
*assignvariableop_82_adam_m_conv2d_105_bias: 8
*assignvariableop_83_adam_v_conv2d_105_bias: E
7assignvariableop_84_adam_m_batch_normalization_17_gamma: E
7assignvariableop_85_adam_v_batch_normalization_17_gamma: D
6assignvariableop_86_adam_m_batch_normalization_17_beta: D
6assignvariableop_87_adam_v_batch_normalization_17_beta: F
,assignvariableop_88_adam_m_conv2d_106_kernel: F
,assignvariableop_89_adam_v_conv2d_106_kernel: 8
*assignvariableop_90_adam_m_conv2d_106_bias:8
*assignvariableop_91_adam_v_conv2d_106_bias:#
assignvariableop_92_total: #
assignvariableop_93_count: 
identity_95ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_79ЂAssignVariableOp_8ЂAssignVariableOp_80ЂAssignVariableOp_81ЂAssignVariableOp_82ЂAssignVariableOp_83ЂAssignVariableOp_84ЂAssignVariableOp_85ЂAssignVariableOp_86ЂAssignVariableOp_87ЂAssignVariableOp_88ЂAssignVariableOp_89ЂAssignVariableOp_9ЂAssignVariableOp_90ЂAssignVariableOp_91ЂAssignVariableOp_92ЂAssignVariableOp_93ѓ#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:_*
dtype0*#
value#B#_B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHБ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:_*
dtype0*г
valueЩBЦ_B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ќ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesџ
ќ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*m
dtypesc
a2_	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_100_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_100_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_12_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_12_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_12_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_12_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_101_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_101_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_13_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_13_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_13_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_13_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_102_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_102_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_14_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_14_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_14_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_14_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_103_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_103_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_15_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_15_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_15_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_15_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_104_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_104_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_16_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_16_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_16_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_16_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_30AssignVariableOp%assignvariableop_30_conv2d_105_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_31AssignVariableOp#assignvariableop_31_conv2d_105_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_17_gammaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_17_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_17_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_17_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv2d_106_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv2d_106_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_38AssignVariableOpassignvariableop_38_iterationIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_39AssignVariableOp!assignvariableop_39_learning_rateIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_40AssignVariableOp,assignvariableop_40_adam_m_conv2d_100_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_41AssignVariableOp,assignvariableop_41_adam_v_conv2d_100_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_m_conv2d_100_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_v_conv2d_100_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_44AssignVariableOp7assignvariableop_44_adam_m_batch_normalization_12_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_v_batch_normalization_12_gammaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_m_batch_normalization_12_betaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_v_batch_normalization_12_betaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_48AssignVariableOp,assignvariableop_48_adam_m_conv2d_101_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_v_conv2d_101_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_m_conv2d_101_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_v_conv2d_101_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_52AssignVariableOp7assignvariableop_52_adam_m_batch_normalization_13_gammaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_v_batch_normalization_13_gammaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_m_batch_normalization_13_betaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_v_batch_normalization_13_betaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_56AssignVariableOp,assignvariableop_56_adam_m_conv2d_102_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_57AssignVariableOp,assignvariableop_57_adam_v_conv2d_102_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_m_conv2d_102_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_v_conv2d_102_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_60AssignVariableOp7assignvariableop_60_adam_m_batch_normalization_14_gammaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_v_batch_normalization_14_gammaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_m_batch_normalization_14_betaIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_v_batch_normalization_14_betaIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_64AssignVariableOp,assignvariableop_64_adam_m_conv2d_103_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_v_conv2d_103_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_66AssignVariableOp*assignvariableop_66_adam_m_conv2d_103_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_v_conv2d_103_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_68AssignVariableOp7assignvariableop_68_adam_m_batch_normalization_15_gammaIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_v_batch_normalization_15_gammaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_m_batch_normalization_15_betaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_v_batch_normalization_15_betaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_72AssignVariableOp,assignvariableop_72_adam_m_conv2d_104_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_v_conv2d_104_kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_m_conv2d_104_biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_v_conv2d_104_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_76AssignVariableOp7assignvariableop_76_adam_m_batch_normalization_16_gammaIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_v_batch_normalization_16_gammaIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_m_batch_normalization_16_betaIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_v_batch_normalization_16_betaIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_80AssignVariableOp,assignvariableop_80_adam_m_conv2d_105_kernelIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_v_conv2d_105_kernelIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_m_conv2d_105_biasIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_v_conv2d_105_biasIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_84AssignVariableOp7assignvariableop_84_adam_m_batch_normalization_17_gammaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_v_batch_normalization_17_gammaIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_m_batch_normalization_17_betaIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_87AssignVariableOp6assignvariableop_87_adam_v_batch_normalization_17_betaIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_88AssignVariableOp,assignvariableop_88_adam_m_conv2d_106_kernelIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_v_conv2d_106_kernelIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_m_conv2d_106_biasIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_91AssignVariableOp*assignvariableop_91_adam_v_conv2d_106_biasIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_92AssignVariableOpassignvariableop_92_totalIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_93AssignVariableOpassignvariableop_93_countIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 у
Identity_94Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_95IdentityIdentity_94:output:0^NoOp_1*
T0*
_output_shapes
: Ќ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93*
_output_shapes
 "#
identity_95Identity_95:output:0*(
_construction_contextkEagerRuntime*г
_input_shapesС
О: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_93:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:1-
+
_user_specified_nameconv2d_100/kernel:/+
)
_user_specified_nameconv2d_100/bias:<8
6
_user_specified_namebatch_normalization_12/gamma:;7
5
_user_specified_namebatch_normalization_12/beta:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:1-
+
_user_specified_nameconv2d_101/kernel:/+
)
_user_specified_nameconv2d_101/bias:<	8
6
_user_specified_namebatch_normalization_13/gamma:;
7
5
_user_specified_namebatch_normalization_13/beta:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:1-
+
_user_specified_nameconv2d_102/kernel:/+
)
_user_specified_nameconv2d_102/bias:<8
6
_user_specified_namebatch_normalization_14/gamma:;7
5
_user_specified_namebatch_normalization_14/beta:B>
<
_user_specified_name$"batch_normalization_14/moving_mean:FB
@
_user_specified_name(&batch_normalization_14/moving_variance:1-
+
_user_specified_nameconv2d_103/kernel:/+
)
_user_specified_nameconv2d_103/bias:<8
6
_user_specified_namebatch_normalization_15/gamma:;7
5
_user_specified_namebatch_normalization_15/beta:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:1-
+
_user_specified_nameconv2d_104/kernel:/+
)
_user_specified_nameconv2d_104/bias:<8
6
_user_specified_namebatch_normalization_16/gamma:;7
5
_user_specified_namebatch_normalization_16/beta:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:1-
+
_user_specified_nameconv2d_105/kernel:/ +
)
_user_specified_nameconv2d_105/bias:<!8
6
_user_specified_namebatch_normalization_17/gamma:;"7
5
_user_specified_namebatch_normalization_17/beta:B#>
<
_user_specified_name$"batch_normalization_17/moving_mean:F$B
@
_user_specified_name(&batch_normalization_17/moving_variance:1%-
+
_user_specified_nameconv2d_106/kernel:/&+
)
_user_specified_nameconv2d_106/bias:)'%
#
_user_specified_name	iteration:-()
'
_user_specified_namelearning_rate:8)4
2
_user_specified_nameAdam/m/conv2d_100/kernel:8*4
2
_user_specified_nameAdam/v/conv2d_100/kernel:6+2
0
_user_specified_nameAdam/m/conv2d_100/bias:6,2
0
_user_specified_nameAdam/v/conv2d_100/bias:C-?
=
_user_specified_name%#Adam/m/batch_normalization_12/gamma:C.?
=
_user_specified_name%#Adam/v/batch_normalization_12/gamma:B/>
<
_user_specified_name$"Adam/m/batch_normalization_12/beta:B0>
<
_user_specified_name$"Adam/v/batch_normalization_12/beta:814
2
_user_specified_nameAdam/m/conv2d_101/kernel:824
2
_user_specified_nameAdam/v/conv2d_101/kernel:632
0
_user_specified_nameAdam/m/conv2d_101/bias:642
0
_user_specified_nameAdam/v/conv2d_101/bias:C5?
=
_user_specified_name%#Adam/m/batch_normalization_13/gamma:C6?
=
_user_specified_name%#Adam/v/batch_normalization_13/gamma:B7>
<
_user_specified_name$"Adam/m/batch_normalization_13/beta:B8>
<
_user_specified_name$"Adam/v/batch_normalization_13/beta:894
2
_user_specified_nameAdam/m/conv2d_102/kernel:8:4
2
_user_specified_nameAdam/v/conv2d_102/kernel:6;2
0
_user_specified_nameAdam/m/conv2d_102/bias:6<2
0
_user_specified_nameAdam/v/conv2d_102/bias:C=?
=
_user_specified_name%#Adam/m/batch_normalization_14/gamma:C>?
=
_user_specified_name%#Adam/v/batch_normalization_14/gamma:B?>
<
_user_specified_name$"Adam/m/batch_normalization_14/beta:B@>
<
_user_specified_name$"Adam/v/batch_normalization_14/beta:8A4
2
_user_specified_nameAdam/m/conv2d_103/kernel:8B4
2
_user_specified_nameAdam/v/conv2d_103/kernel:6C2
0
_user_specified_nameAdam/m/conv2d_103/bias:6D2
0
_user_specified_nameAdam/v/conv2d_103/bias:CE?
=
_user_specified_name%#Adam/m/batch_normalization_15/gamma:CF?
=
_user_specified_name%#Adam/v/batch_normalization_15/gamma:BG>
<
_user_specified_name$"Adam/m/batch_normalization_15/beta:BH>
<
_user_specified_name$"Adam/v/batch_normalization_15/beta:8I4
2
_user_specified_nameAdam/m/conv2d_104/kernel:8J4
2
_user_specified_nameAdam/v/conv2d_104/kernel:6K2
0
_user_specified_nameAdam/m/conv2d_104/bias:6L2
0
_user_specified_nameAdam/v/conv2d_104/bias:CM?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:CN?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:BO>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:BP>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:8Q4
2
_user_specified_nameAdam/m/conv2d_105/kernel:8R4
2
_user_specified_nameAdam/v/conv2d_105/kernel:6S2
0
_user_specified_nameAdam/m/conv2d_105/bias:6T2
0
_user_specified_nameAdam/v/conv2d_105/bias:CU?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:CV?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:BW>
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:BX>
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:8Y4
2
_user_specified_nameAdam/m/conv2d_106/kernel:8Z4
2
_user_specified_nameAdam/v/conv2d_106/kernel:6[2
0
_user_specified_nameAdam/m/conv2d_106/bias:6\2
0
_user_specified_nameAdam/v/conv2d_106/bias:%]!

_user_specified_nametotal:%^!

_user_specified_namecount
Ѓ
i
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4712175

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Т
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4710322

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
в

S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712040

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
б
X
$__inference__update_step_xla_4655183
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
А
M
$__inference__update_step_xla_4655228
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
к


G__inference_conv2d_101_layer_call_and_return_conditional_losses_4711668

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ @@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ @@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ @@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ @ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ю
L
0__inference_leaky_re_lu_89_layer_call_fn_4711735

inputs
identityС
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4709935h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ @@:W S
/
_output_shapes
:џџџџџџџџџ @@
 
_user_specified_nameinputs
в

S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711730

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­
L
$__inference__update_step_xla_4655193
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
п


G__inference_conv2d_100_layer_call_and_return_conditional_losses_4709885

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@ h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ъ
Ё
,__inference_conv2d_106_layer_call_fn_4712184

inputs!
unknown: 
	unknown_0:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_106_layer_call_and_return_conditional_losses_4710489
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	4712178:'#
!
_user_specified_name	4712180
­
L
$__inference__update_step_xla_4655208
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ѕ
Ё
,__inference_conv2d_100_layer_call_fn_4711557

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_100_layer_call_and_return_conditional_losses_4709885x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711551:'#
!
_user_specified_name	4711553

i
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4709796

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4709935

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ @@*
alpha%
з#<g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ @@:W S
/
_output_shapes
:џџџџџџџџџ @@
 
_user_specified_nameinputs
м
й
/__inference_sequential_32_layer_call_fn_4711408

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	
identityЂStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710918
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:@ <

_output_shapes
:
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711370:'#
!
_user_specified_name	4711372:'#
!
_user_specified_name	4711374:'#
!
_user_specified_name	4711376:'#
!
_user_specified_name	4711378:'#
!
_user_specified_name	4711380:'#
!
_user_specified_name	4711382:'#
!
_user_specified_name	4711384:'	#
!
_user_specified_name	4711386:'
#
!
_user_specified_name	4711388:'#
!
_user_specified_name	4711390:'#
!
_user_specified_name	4711392:'#
!
_user_specified_name	4711394:'#
!
_user_specified_name	4711396:'#
!
_user_specified_name	4711398:'#
!
_user_specified_name	4711400:'#
!
_user_specified_name	4711402:'#
!
_user_specified_name	4711404
в
L
0__inference_leaky_re_lu_88_layer_call_fn_4711634

inputs
identityТ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4709904i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@ :X T
0
_output_shapes
:џџџџџџџџџ@ 
 
_user_specified_nameinputs
Ѓ
i
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4712067

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
б
X
$__inference__update_step_xla_4655203
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ћH


J__inference_sequential_33_layer_call_and_return_conditional_losses_4710553
conv2d_103_input.
conv2d_103_4710499:!
conv2d_103_4710501:	-
batch_normalization_15_4710504:	-
batch_normalization_15_4710506:	-
batch_normalization_15_4710508:	-
batch_normalization_15_4710510:	-
conv2d_104_4710515:@ 
conv2d_104_4710517:@,
batch_normalization_16_4710520:@,
batch_normalization_16_4710522:@,
batch_normalization_16_4710524:@,
batch_normalization_16_4710526:@,
conv2d_105_4710531:@  
conv2d_105_4710533: ,
batch_normalization_17_4710536: ,
batch_normalization_17_4710538: ,
batch_normalization_17_4710540: ,
batch_normalization_17_4710542: ,
conv2d_106_4710547:  
conv2d_106_4710549:
identityЂ.batch_normalization_15/StatefulPartitionedCallЂ.batch_normalization_16/StatefulPartitionedCallЂ.batch_normalization_17/StatefulPartitionedCallЂ"conv2d_103/StatefulPartitionedCallЂ"conv2d_104/StatefulPartitionedCallЂ"conv2d_105/StatefulPartitionedCallЂ"conv2d_106/StatefulPartitionedCallЃ
"conv2d_103/StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputconv2d_103_4710499conv2d_103_4710501*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_103_layer_call_and_return_conditional_losses_4710395В
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall+conv2d_103/StatefulPartitionedCall:output:0batch_normalization_15_4710504batch_normalization_15_4710506batch_normalization_15_4710508batch_normalization_15_4710510*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4710182
leaky_re_lu_91/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4710414
 up_sampling2d_44/PartitionedCallPartitionedCall'leaky_re_lu_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4710220Л
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_44/PartitionedCall:output:0conv2d_104_4710515conv2d_104_4710517*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_104_layer_call_and_return_conditional_losses_4710426Б
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0batch_normalization_16_4710520batch_normalization_16_4710522batch_normalization_16_4710524batch_normalization_16_4710526*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4710261
leaky_re_lu_92/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4710445
 up_sampling2d_45/PartitionedCallPartitionedCall'leaky_re_lu_92/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4710299Л
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_45/PartitionedCall:output:0conv2d_105_4710531conv2d_105_4710533*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_105_layer_call_and_return_conditional_losses_4710457Б
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0batch_normalization_17_4710536batch_normalization_17_4710538batch_normalization_17_4710540batch_normalization_17_4710542*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4710340
leaky_re_lu_93/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4710476
 up_sampling2d_46/PartitionedCallPartitionedCall'leaky_re_lu_93/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4710378Л
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_46/PartitionedCall:output:0conv2d_106_4710547conv2d_106_4710549*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_106_layer_call_and_return_conditional_losses_4710489
IdentityIdentity+conv2d_106/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
NoOpNoOp/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall#^conv2d_103/StatefulPartitionedCall#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2H
"conv2d_103/StatefulPartitionedCall"conv2d_103/StatefulPartitionedCall2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall:t p
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*
_user_specified_nameconv2d_103_input:'#
!
_user_specified_name	4710499:'#
!
_user_specified_name	4710501:'#
!
_user_specified_name	4710504:'#
!
_user_specified_name	4710506:'#
!
_user_specified_name	4710508:'#
!
_user_specified_name	4710510:'#
!
_user_specified_name	4710515:'#
!
_user_specified_name	4710517:'	#
!
_user_specified_name	4710520:'
#
!
_user_specified_name	4710522:'#
!
_user_specified_name	4710524:'#
!
_user_specified_name	4710526:'#
!
_user_specified_name	4710531:'#
!
_user_specified_name	4710533:'#
!
_user_specified_name	4710536:'#
!
_user_specified_name	4710538:'#
!
_user_specified_name	4710540:'#
!
_user_specified_name	4710542:'#
!
_user_specified_name	4710547:'#
!
_user_specified_name	4710549

g
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4711841

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџ *
alpha%
з#<h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4711750

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ћ_
э
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710918

inputsC
)conv2d_100_conv2d_readvariableop_resource: 8
*conv2d_100_biasadd_readvariableop_resource: <
.batch_normalization_12_readvariableop_resource: >
0batch_normalization_12_readvariableop_1_resource: M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_101_conv2d_readvariableop_resource: @8
*conv2d_101_biasadd_readvariableop_resource:@<
.batch_normalization_13_readvariableop_resource:@>
0batch_normalization_13_readvariableop_1_resource:@M
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@D
)conv2d_102_conv2d_readvariableop_resource:@9
*conv2d_102_biasadd_readvariableop_resource:	=
.batch_normalization_14_readvariableop_resource:	?
0batch_normalization_14_readvariableop_1_resource:	N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	
identityЂ6batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_12/ReadVariableOpЂ'batch_normalization_12/ReadVariableOp_1Ђ6batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_13/ReadVariableOpЂ'batch_normalization_13/ReadVariableOp_1Ђ6batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_14/ReadVariableOpЂ'batch_normalization_14/ReadVariableOp_1Ђ!conv2d_100/BiasAdd/ReadVariableOpЂ conv2d_100/Conv2D/ReadVariableOpЂ!conv2d_101/BiasAdd/ReadVariableOpЂ conv2d_101/Conv2D/ReadVariableOpЂ!conv2d_102/BiasAdd/ReadVariableOpЂ conv2d_102/Conv2D/ReadVariableOp
 conv2d_100/Conv2D/ReadVariableOpReadVariableOp)conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0С
conv2d_100/Conv2DConv2Dinputs(conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

!conv2d_100/BiasAdd/ReadVariableOpReadVariableOp*conv2d_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
conv2d_100/BiasAddBiasAddconv2d_100/Conv2D:output:0)conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
: *
dtype0В
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ж
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0а
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_100/BiasAdd:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( Ѕ
leaky_re_lu_88/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<Щ
max_pooling2d_44/MaxPoolMaxPool&leaky_re_lu_88/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize
*
paddingSAME*
strides

 conv2d_101/Conv2D/ReadVariableOpReadVariableOp)conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0м
conv2d_101/Conv2DConv2D!max_pooling2d_44/MaxPool:output:0(conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides

!conv2d_101/BiasAdd/ReadVariableOpReadVariableOp*conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
conv2d_101/BiasAddBiasAddconv2d_101/Conv2D:output:0)conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0а
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_101/BiasAdd:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( Ѕ
leaky_re_lu_89/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<Щ
max_pooling2d_45/MaxPoolMaxPool&leaky_re_lu_89/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize
*
paddingSAME*
strides

 conv2d_102/Conv2D/ReadVariableOpReadVariableOp)conv2d_102_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0н
conv2d_102/Conv2DConv2D!max_pooling2d_45/MaxPool:output:0(conv2d_102/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides

!conv2d_102/BiasAdd/ReadVariableOpReadVariableOp*conv2d_102_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Б
conv2d_102/BiasAddBiasAddconv2d_102/Conv2D:output:0)conv2d_102/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0е
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_102/BiasAdd:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( І
leaky_re_lu_90/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<Ъ
max_pooling2d_46/MaxPoolMaxPool&leaky_re_lu_90/LeakyRelu:activations:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides

IdentityIdentity!max_pooling2d_46/MaxPool:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
NoOpNoOp7^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1"^conv2d_100/BiasAdd/ReadVariableOp!^conv2d_100/Conv2D/ReadVariableOp"^conv2d_101/BiasAdd/ReadVariableOp!^conv2d_101/Conv2D/ReadVariableOp"^conv2d_102/BiasAdd/ReadVariableOp!^conv2d_102/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:: : : : : : : : : : : : : : : : : : 2p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12F
!conv2d_100/BiasAdd/ReadVariableOp!conv2d_100/BiasAdd/ReadVariableOp2D
 conv2d_100/Conv2D/ReadVariableOp conv2d_100/Conv2D/ReadVariableOp2F
!conv2d_101/BiasAdd/ReadVariableOp!conv2d_101/BiasAdd/ReadVariableOp2D
 conv2d_101/Conv2D/ReadVariableOp conv2d_101/Conv2D/ReadVariableOp2F
!conv2d_102/BiasAdd/ReadVariableOp!conv2d_102/BiasAdd/ReadVariableOp2D
 conv2d_102/Conv2D/ReadVariableOp conv2d_102/Conv2D/ReadVariableOp:@ <

_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


г
8__inference_batch_normalization_16_layer_call_fn_4711991

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4710243
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711981:'#
!
_user_specified_name	4711983:'#
!
_user_specified_name	4711985:'#
!
_user_specified_name	4711987
­
L
$__inference__update_step_xla_4655213
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
т
Ђ
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4709837

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
н@
	
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710022
input_17,
conv2d_100_4709973:  
conv2d_100_4709975: ,
batch_normalization_12_4709978: ,
batch_normalization_12_4709980: ,
batch_normalization_12_4709982: ,
batch_normalization_12_4709984: ,
conv2d_101_4709989: @ 
conv2d_101_4709991:@,
batch_normalization_13_4709994:@,
batch_normalization_13_4709996:@,
batch_normalization_13_4709998:@,
batch_normalization_13_4710000:@-
conv2d_102_4710005:@!
conv2d_102_4710007:	-
batch_normalization_14_4710010:	-
batch_normalization_14_4710012:	-
batch_normalization_14_4710014:	-
batch_normalization_14_4710016:	
identityЂ.batch_normalization_12/StatefulPartitionedCallЂ.batch_normalization_13/StatefulPartitionedCallЂ.batch_normalization_14/StatefulPartitionedCallЂ"conv2d_100/StatefulPartitionedCallЂ"conv2d_101/StatefulPartitionedCallЂ"conv2d_102/StatefulPartitionedCall
"conv2d_100/StatefulPartitionedCallStatefulPartitionedCallinput_17conv2d_100_4709973conv2d_100_4709975*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_100_layer_call_and_return_conditional_losses_4709885 
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall+conv2d_100/StatefulPartitionedCall:output:0batch_normalization_12_4709978batch_normalization_12_4709980batch_normalization_12_4709982batch_normalization_12_4709984*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4709693
leaky_re_lu_88/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4709904ѕ
 max_pooling2d_44/PartitionedCallPartitionedCall'leaky_re_lu_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4709724Љ
"conv2d_101/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0conv2d_101_4709989conv2d_101_4709991*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_101_layer_call_and_return_conditional_losses_4709916
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall+conv2d_101/StatefulPartitionedCall:output:0batch_normalization_13_4709994batch_normalization_13_4709996batch_normalization_13_4709998batch_normalization_13_4710000*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4709765
leaky_re_lu_89/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4709935ѕ
 max_pooling2d_45/PartitionedCallPartitionedCall'leaky_re_lu_89/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4709796Њ
"conv2d_102/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0conv2d_102_4710005conv2d_102_4710007*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_102_layer_call_and_return_conditional_losses_4709947 
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall+conv2d_102/StatefulPartitionedCall:output:0batch_normalization_14_4710010batch_normalization_14_4710012batch_normalization_14_4710014batch_normalization_14_4710016*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4709837
leaky_re_lu_90/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4709966і
 max_pooling2d_46/PartitionedCallPartitionedCall'leaky_re_lu_90/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4709868
IdentityIdentity)max_pooling2d_46/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall#^conv2d_100/StatefulPartitionedCall#^conv2d_101/StatefulPartitionedCall#^conv2d_102/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ@: : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2H
"conv2d_100/StatefulPartitionedCall"conv2d_100/StatefulPartitionedCall2H
"conv2d_101/StatefulPartitionedCall"conv2d_101/StatefulPartitionedCall2H
"conv2d_102/StatefulPartitionedCall"conv2d_102/StatefulPartitionedCall:Z V
0
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_17:'#
!
_user_specified_name	4709973:'#
!
_user_specified_name	4709975:'#
!
_user_specified_name	4709978:'#
!
_user_specified_name	4709980:'#
!
_user_specified_name	4709982:'#
!
_user_specified_name	4709984:'#
!
_user_specified_name	4709989:'#
!
_user_specified_name	4709991:'	#
!
_user_specified_name	4709994:'
#
!
_user_specified_name	4709996:'#
!
_user_specified_name	4709998:'#
!
_user_specified_name	4710000:'#
!
_user_specified_name	4710005:'#
!
_user_specified_name	4710007:'#
!
_user_specified_name	4710010:'#
!
_user_specified_name	4710012:'#
!
_user_specified_name	4710014:'#
!
_user_specified_name	4710016
П
N
2__inference_up_sampling2d_44_layer_call_fn_4711947

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4710220
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
т
Ђ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711932

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
 
	
0__inference_autoencoder_16_layer_call_fn_4711160
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	%

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@ 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710998
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:A =

_output_shapes
:
!
_user_specified_name	input_1:'#
!
_user_specified_name	4711082:'#
!
_user_specified_name	4711084:'#
!
_user_specified_name	4711086:'#
!
_user_specified_name	4711088:'#
!
_user_specified_name	4711090:'#
!
_user_specified_name	4711092:'#
!
_user_specified_name	4711094:'#
!
_user_specified_name	4711096:'	#
!
_user_specified_name	4711098:'
#
!
_user_specified_name	4711100:'#
!
_user_specified_name	4711102:'#
!
_user_specified_name	4711104:'#
!
_user_specified_name	4711106:'#
!
_user_specified_name	4711108:'#
!
_user_specified_name	4711110:'#
!
_user_specified_name	4711112:'#
!
_user_specified_name	4711114:'#
!
_user_specified_name	4711116:'#
!
_user_specified_name	4711118:'#
!
_user_specified_name	4711120:'#
!
_user_specified_name	4711122:'#
!
_user_specified_name	4711124:'#
!
_user_specified_name	4711126:'#
!
_user_specified_name	4711128:'#
!
_user_specified_name	4711130:'#
!
_user_specified_name	4711132:'#
!
_user_specified_name	4711134:'#
!
_user_specified_name	4711136:'#
!
_user_specified_name	4711138:'#
!
_user_specified_name	4711140:'#
!
_user_specified_name	4711142:' #
!
_user_specified_name	4711144:'!#
!
_user_specified_name	4711146:'"#
!
_user_specified_name	4711148:'##
!
_user_specified_name	4711150:'$#
!
_user_specified_name	4711152:'%#
!
_user_specified_name	4711154:'&#
!
_user_specified_name	4711156
Э
g
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4710476

inputs
identityq
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


г
8__inference_batch_normalization_16_layer_call_fn_4712004

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4710261
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711994:'#
!
_user_specified_name	4711996:'#
!
_user_specified_name	4711998:'#
!
_user_specified_name	4712000

L
0__inference_leaky_re_lu_92_layer_call_fn_4712045

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4710445z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4710164

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
П
N
2__inference_max_pooling2d_46_layer_call_fn_4711846

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4709868
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4709904

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџ@ *
alpha%
з#<h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ@ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ@ :X T
0
_output_shapes
:џџџџџџџџџ@ 
 
_user_specified_nameinputs
П
N
2__inference_up_sampling2d_45_layer_call_fn_4712055

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4710299
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Т
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4709747

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѓ
i
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4711959

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Э
g
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4712050

inputs
identityq
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs


з
8__inference_batch_normalization_15_layer_call_fn_4711883

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4710164
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711873:'#
!
_user_specified_name	4711875:'#
!
_user_specified_name	4711877:'#
!
_user_specified_name	4711879
Ѓ
i
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4710220

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
в

S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4709765

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
б
g
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4711942

inputs
identityr
	LeakyRelu	LeakyReluinputs*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<z
IdentityIdentityLeakyRelu:activations:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_45_layer_call_fn_4711745

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4709796
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711914

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
э
л
/__inference_sequential_32_layer_call_fn_4710104
input_17!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	
identityЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710022x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ@: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_17:'#
!
_user_specified_name	4710066:'#
!
_user_specified_name	4710068:'#
!
_user_specified_name	4710070:'#
!
_user_specified_name	4710072:'#
!
_user_specified_name	4710074:'#
!
_user_specified_name	4710076:'#
!
_user_specified_name	4710078:'#
!
_user_specified_name	4710080:'	#
!
_user_specified_name	4710082:'
#
!
_user_specified_name	4710084:'#
!
_user_specified_name	4710086:'#
!
_user_specified_name	4710088:'#
!
_user_specified_name	4710090:'#
!
_user_specified_name	4710092:'#
!
_user_specified_name	4710094:'#
!
_user_specified_name	4710096:'#
!
_user_specified_name	4710098:'#
!
_user_specified_name	4710100
в

S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711629

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­
L
$__inference__update_step_xla_4655218
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

Т
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4710243

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

Т
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711611

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

Ѕ
/__inference_sequential_33_layer_call_fn_4710643
conv2d_103_input#
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	$
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710553
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:t p
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*
_user_specified_nameconv2d_103_input:'#
!
_user_specified_name	4710601:'#
!
_user_specified_name	4710603:'#
!
_user_specified_name	4710605:'#
!
_user_specified_name	4710607:'#
!
_user_specified_name	4710609:'#
!
_user_specified_name	4710611:'#
!
_user_specified_name	4710613:'#
!
_user_specified_name	4710615:'	#
!
_user_specified_name	4710617:'
#
!
_user_specified_name	4710619:'#
!
_user_specified_name	4710621:'#
!
_user_specified_name	4710623:'#
!
_user_specified_name	4710625:'#
!
_user_specified_name	4710627:'#
!
_user_specified_name	4710629:'#
!
_user_specified_name	4710631:'#
!
_user_specified_name	4710633:'#
!
_user_specified_name	4710635:'#
!
_user_specified_name	4710637:'#
!
_user_specified_name	4710639
А
M
$__inference__update_step_xla_4655233
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable


г
8__inference_batch_normalization_12_layer_call_fn_4711580

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4709675
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711570:'#
!
_user_specified_name	4711572:'#
!
_user_specified_name	4711574:'#
!
_user_specified_name	4711576
њ
Ѕ
/__inference_sequential_33_layer_call_fn_4710598
conv2d_103_input#
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	$
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@$

unknown_11:@ 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17: 

unknown_18:
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710496
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:t p
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*
_user_specified_nameconv2d_103_input:'#
!
_user_specified_name	4710556:'#
!
_user_specified_name	4710558:'#
!
_user_specified_name	4710560:'#
!
_user_specified_name	4710562:'#
!
_user_specified_name	4710564:'#
!
_user_specified_name	4710566:'#
!
_user_specified_name	4710568:'#
!
_user_specified_name	4710570:'	#
!
_user_specified_name	4710572:'
#
!
_user_specified_name	4710574:'#
!
_user_specified_name	4710576:'#
!
_user_specified_name	4710578:'#
!
_user_specified_name	4710580:'#
!
_user_specified_name	4710582:'#
!
_user_specified_name	4710584:'#
!
_user_specified_name	4710586:'#
!
_user_specified_name	4710588:'#
!
_user_specified_name	4710590:'#
!
_user_specified_name	4710592:'#
!
_user_specified_name	4710594
зН
Ў3
"__inference__wrapped_model_4709657
input_1`
Fautoencoder_16_sequential_32_conv2d_100_conv2d_readvariableop_resource: U
Gautoencoder_16_sequential_32_conv2d_100_biasadd_readvariableop_resource: Y
Kautoencoder_16_sequential_32_batch_normalization_12_readvariableop_resource: [
Mautoencoder_16_sequential_32_batch_normalization_12_readvariableop_1_resource: j
\autoencoder_16_sequential_32_batch_normalization_12_fusedbatchnormv3_readvariableop_resource: l
^autoencoder_16_sequential_32_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource: `
Fautoencoder_16_sequential_32_conv2d_101_conv2d_readvariableop_resource: @U
Gautoencoder_16_sequential_32_conv2d_101_biasadd_readvariableop_resource:@Y
Kautoencoder_16_sequential_32_batch_normalization_13_readvariableop_resource:@[
Mautoencoder_16_sequential_32_batch_normalization_13_readvariableop_1_resource:@j
\autoencoder_16_sequential_32_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@l
^autoencoder_16_sequential_32_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@a
Fautoencoder_16_sequential_32_conv2d_102_conv2d_readvariableop_resource:@V
Gautoencoder_16_sequential_32_conv2d_102_biasadd_readvariableop_resource:	Z
Kautoencoder_16_sequential_32_batch_normalization_14_readvariableop_resource:	\
Mautoencoder_16_sequential_32_batch_normalization_14_readvariableop_1_resource:	k
\autoencoder_16_sequential_32_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	m
^autoencoder_16_sequential_32_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	b
Fautoencoder_16_sequential_33_conv2d_103_conv2d_readvariableop_resource:V
Gautoencoder_16_sequential_33_conv2d_103_biasadd_readvariableop_resource:	Z
Kautoencoder_16_sequential_33_batch_normalization_15_readvariableop_resource:	\
Mautoencoder_16_sequential_33_batch_normalization_15_readvariableop_1_resource:	k
\autoencoder_16_sequential_33_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:	m
^autoencoder_16_sequential_33_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:	a
Fautoencoder_16_sequential_33_conv2d_104_conv2d_readvariableop_resource:@U
Gautoencoder_16_sequential_33_conv2d_104_biasadd_readvariableop_resource:@Y
Kautoencoder_16_sequential_33_batch_normalization_16_readvariableop_resource:@[
Mautoencoder_16_sequential_33_batch_normalization_16_readvariableop_1_resource:@j
\autoencoder_16_sequential_33_batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@l
^autoencoder_16_sequential_33_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@`
Fautoencoder_16_sequential_33_conv2d_105_conv2d_readvariableop_resource:@ U
Gautoencoder_16_sequential_33_conv2d_105_biasadd_readvariableop_resource: Y
Kautoencoder_16_sequential_33_batch_normalization_17_readvariableop_resource: [
Mautoencoder_16_sequential_33_batch_normalization_17_readvariableop_1_resource: j
\autoencoder_16_sequential_33_batch_normalization_17_fusedbatchnormv3_readvariableop_resource: l
^autoencoder_16_sequential_33_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource: `
Fautoencoder_16_sequential_33_conv2d_106_conv2d_readvariableop_resource: U
Gautoencoder_16_sequential_33_conv2d_106_biasadd_readvariableop_resource:
identityЂSautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂUautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ЂBautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOpЂDautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp_1ЂSautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂUautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ЂBautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOpЂDautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp_1ЂSautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂUautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ЂBautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOpЂDautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp_1Ђ>autoencoder_16/sequential_32/conv2d_100/BiasAdd/ReadVariableOpЂ=autoencoder_16/sequential_32/conv2d_100/Conv2D/ReadVariableOpЂ>autoencoder_16/sequential_32/conv2d_101/BiasAdd/ReadVariableOpЂ=autoencoder_16/sequential_32/conv2d_101/Conv2D/ReadVariableOpЂ>autoencoder_16/sequential_32/conv2d_102/BiasAdd/ReadVariableOpЂ=autoencoder_16/sequential_32/conv2d_102/Conv2D/ReadVariableOpЂSautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOpЂUautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ЂBautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOpЂDautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp_1ЂSautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOpЂUautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ЂBautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOpЂDautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp_1ЂSautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOpЂUautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ЂBautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOpЂDautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp_1Ђ>autoencoder_16/sequential_33/conv2d_103/BiasAdd/ReadVariableOpЂ=autoencoder_16/sequential_33/conv2d_103/Conv2D/ReadVariableOpЂ>autoencoder_16/sequential_33/conv2d_104/BiasAdd/ReadVariableOpЂ=autoencoder_16/sequential_33/conv2d_104/Conv2D/ReadVariableOpЂ>autoencoder_16/sequential_33/conv2d_105/BiasAdd/ReadVariableOpЂ=autoencoder_16/sequential_33/conv2d_105/Conv2D/ReadVariableOpЂ>autoencoder_16/sequential_33/conv2d_106/BiasAdd/ReadVariableOpЂ=autoencoder_16/sequential_33/conv2d_106/Conv2D/ReadVariableOpЬ
=autoencoder_16/sequential_32/conv2d_100/Conv2D/ReadVariableOpReadVariableOpFautoencoder_16_sequential_32_conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ќ
.autoencoder_16/sequential_32/conv2d_100/Conv2DConv2Dinput_1Eautoencoder_16/sequential_32/conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
Т
>autoencoder_16/sequential_32/conv2d_100/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_16_sequential_32_conv2d_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
/autoencoder_16/sequential_32/conv2d_100/BiasAddBiasAdd7autoencoder_16/sequential_32/conv2d_100/Conv2D:output:0Fautoencoder_16/sequential_32/conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Ъ
Bautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOpReadVariableOpKautoencoder_16_sequential_32_batch_normalization_12_readvariableop_resource*
_output_shapes
: *
dtype0Ю
Dautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp_1ReadVariableOpMautoencoder_16_sequential_32_batch_normalization_12_readvariableop_1_resource*
_output_shapes
: *
dtype0ь
Sautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp\autoencoder_16_sequential_32_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0№
Uautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^autoencoder_16_sequential_32_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ў
Dautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3FusedBatchNormV38autoencoder_16/sequential_32/conv2d_100/BiasAdd:output:0Jautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp:value:0Lautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp_1:value:0[autoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0]autoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( п
5autoencoder_16/sequential_32/leaky_re_lu_88/LeakyRelu	LeakyReluHautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<
5autoencoder_16/sequential_32/max_pooling2d_44/MaxPoolMaxPoolCautoencoder_16/sequential_32/leaky_re_lu_88/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize
*
paddingSAME*
strides
Ь
=autoencoder_16/sequential_32/conv2d_101/Conv2D/ReadVariableOpReadVariableOpFautoencoder_16_sequential_32_conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Г
.autoencoder_16/sequential_32/conv2d_101/Conv2DConv2D>autoencoder_16/sequential_32/max_pooling2d_44/MaxPool:output:0Eautoencoder_16/sequential_32/conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Т
>autoencoder_16/sequential_32/conv2d_101/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_16_sequential_32_conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
/autoencoder_16/sequential_32/conv2d_101/BiasAddBiasAdd7autoencoder_16/sequential_32/conv2d_101/Conv2D:output:0Fautoencoder_16/sequential_32/conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ъ
Bautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOpReadVariableOpKautoencoder_16_sequential_32_batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
Dautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp_1ReadVariableOpMautoencoder_16_sequential_32_batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0ь
Sautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp\autoencoder_16_sequential_32_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0№
Uautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^autoencoder_16_sequential_32_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ў
Dautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3FusedBatchNormV38autoencoder_16/sequential_32/conv2d_101/BiasAdd:output:0Jautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp:value:0Lautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp_1:value:0[autoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0]autoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( п
5autoencoder_16/sequential_32/leaky_re_lu_89/LeakyRelu	LeakyReluHautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<
5autoencoder_16/sequential_32/max_pooling2d_45/MaxPoolMaxPoolCautoencoder_16/sequential_32/leaky_re_lu_89/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize
*
paddingSAME*
strides
Э
=autoencoder_16/sequential_32/conv2d_102/Conv2D/ReadVariableOpReadVariableOpFautoencoder_16_sequential_32_conv2d_102_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Д
.autoencoder_16/sequential_32/conv2d_102/Conv2DConv2D>autoencoder_16/sequential_32/max_pooling2d_45/MaxPool:output:0Eautoencoder_16/sequential_32/conv2d_102/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
У
>autoencoder_16/sequential_32/conv2d_102/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_16_sequential_32_conv2d_102_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
/autoencoder_16/sequential_32/conv2d_102/BiasAddBiasAdd7autoencoder_16/sequential_32/conv2d_102/Conv2D:output:0Fautoencoder_16/sequential_32/conv2d_102/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџЫ
Bautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOpReadVariableOpKautoencoder_16_sequential_32_batch_normalization_14_readvariableop_resource*
_output_shapes	
:*
dtype0Я
Dautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp_1ReadVariableOpMautoencoder_16_sequential_32_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0э
Sautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp\autoencoder_16_sequential_32_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0ё
Uautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^autoencoder_16_sequential_32_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0
Dautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3FusedBatchNormV38autoencoder_16/sequential_32/conv2d_102/BiasAdd:output:0Jautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp:value:0Lautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp_1:value:0[autoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0]autoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( р
5autoencoder_16/sequential_32/leaky_re_lu_90/LeakyRelu	LeakyReluHautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3:y:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<
5autoencoder_16/sequential_32/max_pooling2d_46/MaxPoolMaxPoolCautoencoder_16/sequential_32/leaky_re_lu_90/LeakyRelu:activations:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
Ю
=autoencoder_16/sequential_33/conv2d_103/Conv2D/ReadVariableOpReadVariableOpFautoencoder_16_sequential_33_conv2d_103_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Д
.autoencoder_16/sequential_33/conv2d_103/Conv2DConv2D>autoencoder_16/sequential_32/max_pooling2d_46/MaxPool:output:0Eautoencoder_16/sequential_33/conv2d_103/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
У
>autoencoder_16/sequential_33/conv2d_103/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_16_sequential_33_conv2d_103_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
/autoencoder_16/sequential_33/conv2d_103/BiasAddBiasAdd7autoencoder_16/sequential_33/conv2d_103/Conv2D:output:0Fautoencoder_16/sequential_33/conv2d_103/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџЫ
Bautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOpReadVariableOpKautoencoder_16_sequential_33_batch_normalization_15_readvariableop_resource*
_output_shapes	
:*
dtype0Я
Dautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp_1ReadVariableOpMautoencoder_16_sequential_33_batch_normalization_15_readvariableop_1_resource*
_output_shapes	
:*
dtype0э
Sautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp\autoencoder_16_sequential_33_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0ё
Uautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^autoencoder_16_sequential_33_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0
Dautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3FusedBatchNormV38autoencoder_16/sequential_33/conv2d_103/BiasAdd:output:0Jautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp:value:0Lautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp_1:value:0[autoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0]autoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( р
5autoencoder_16/sequential_33/leaky_re_lu_91/LeakyRelu	LeakyReluHautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3:y:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<Д
3autoencoder_16/sequential_33/up_sampling2d_44/ShapeShapeCautoencoder_16/sequential_33/leaky_re_lu_91/LeakyRelu:activations:0*
T0*
_output_shapes
::эЯ
Aautoencoder_16/sequential_33/up_sampling2d_44/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_16/sequential_33/up_sampling2d_44/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_16/sequential_33/up_sampling2d_44/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
;autoencoder_16/sequential_33/up_sampling2d_44/strided_sliceStridedSlice<autoencoder_16/sequential_33/up_sampling2d_44/Shape:output:0Jautoencoder_16/sequential_33/up_sampling2d_44/strided_slice/stack:output:0Lautoencoder_16/sequential_33/up_sampling2d_44/strided_slice/stack_1:output:0Lautoencoder_16/sequential_33/up_sampling2d_44/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:
3autoencoder_16/sequential_33/up_sampling2d_44/ConstConst*
_output_shapes
:*
dtype0*
valueB"      с
1autoencoder_16/sequential_33/up_sampling2d_44/mulMulDautoencoder_16/sequential_33/up_sampling2d_44/strided_slice:output:0<autoencoder_16/sequential_33/up_sampling2d_44/Const:output:0*
T0*
_output_shapes
:Ц
Jautoencoder_16/sequential_33/up_sampling2d_44/resize/ResizeNearestNeighborResizeNearestNeighborCautoencoder_16/sequential_33/leaky_re_lu_91/LeakyRelu:activations:05autoencoder_16/sequential_33/up_sampling2d_44/mul:z:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(Э
=autoencoder_16/sequential_33/conv2d_104/Conv2D/ReadVariableOpReadVariableOpFautoencoder_16_sequential_33_conv2d_104_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0а
.autoencoder_16/sequential_33/conv2d_104/Conv2DConv2D[autoencoder_16/sequential_33/up_sampling2d_44/resize/ResizeNearestNeighbor:resized_images:0Eautoencoder_16/sequential_33/conv2d_104/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
Т
>autoencoder_16/sequential_33/conv2d_104/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_16_sequential_33_conv2d_104_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
/autoencoder_16/sequential_33/conv2d_104/BiasAddBiasAdd7autoencoder_16/sequential_33/conv2d_104/Conv2D:output:0Fautoencoder_16/sequential_33/conv2d_104/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ъ
Bautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOpReadVariableOpKautoencoder_16_sequential_33_batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0Ю
Dautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp_1ReadVariableOpMautoencoder_16_sequential_33_batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0ь
Sautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp\autoencoder_16_sequential_33_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0№
Uautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^autoencoder_16_sequential_33_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ў
Dautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3FusedBatchNormV38autoencoder_16/sequential_33/conv2d_104/BiasAdd:output:0Jautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp:value:0Lautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp_1:value:0[autoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0]autoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( п
5autoencoder_16/sequential_33/leaky_re_lu_92/LeakyRelu	LeakyReluHautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<Д
3autoencoder_16/sequential_33/up_sampling2d_45/ShapeShapeCautoencoder_16/sequential_33/leaky_re_lu_92/LeakyRelu:activations:0*
T0*
_output_shapes
::эЯ
Aautoencoder_16/sequential_33/up_sampling2d_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_16/sequential_33/up_sampling2d_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_16/sequential_33/up_sampling2d_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
;autoencoder_16/sequential_33/up_sampling2d_45/strided_sliceStridedSlice<autoencoder_16/sequential_33/up_sampling2d_45/Shape:output:0Jautoencoder_16/sequential_33/up_sampling2d_45/strided_slice/stack:output:0Lautoencoder_16/sequential_33/up_sampling2d_45/strided_slice/stack_1:output:0Lautoencoder_16/sequential_33/up_sampling2d_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:
3autoencoder_16/sequential_33/up_sampling2d_45/ConstConst*
_output_shapes
:*
dtype0*
valueB"      с
1autoencoder_16/sequential_33/up_sampling2d_45/mulMulDautoencoder_16/sequential_33/up_sampling2d_45/strided_slice:output:0<autoencoder_16/sequential_33/up_sampling2d_45/Const:output:0*
T0*
_output_shapes
:Х
Jautoencoder_16/sequential_33/up_sampling2d_45/resize/ResizeNearestNeighborResizeNearestNeighborCautoencoder_16/sequential_33/leaky_re_lu_92/LeakyRelu:activations:05autoencoder_16/sequential_33/up_sampling2d_45/mul:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
half_pixel_centers(Ь
=autoencoder_16/sequential_33/conv2d_105/Conv2D/ReadVariableOpReadVariableOpFautoencoder_16_sequential_33_conv2d_105_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0а
.autoencoder_16/sequential_33/conv2d_105/Conv2DConv2D[autoencoder_16/sequential_33/up_sampling2d_45/resize/ResizeNearestNeighbor:resized_images:0Eautoencoder_16/sequential_33/conv2d_105/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
Т
>autoencoder_16/sequential_33/conv2d_105/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_16_sequential_33_conv2d_105_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
/autoencoder_16/sequential_33/conv2d_105/BiasAddBiasAdd7autoencoder_16/sequential_33/conv2d_105/Conv2D:output:0Fautoencoder_16/sequential_33/conv2d_105/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Ъ
Bautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOpReadVariableOpKautoencoder_16_sequential_33_batch_normalization_17_readvariableop_resource*
_output_shapes
: *
dtype0Ю
Dautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp_1ReadVariableOpMautoencoder_16_sequential_33_batch_normalization_17_readvariableop_1_resource*
_output_shapes
: *
dtype0ь
Sautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp\autoencoder_16_sequential_33_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0№
Uautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^autoencoder_16_sequential_33_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ў
Dautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3FusedBatchNormV38autoencoder_16/sequential_33/conv2d_105/BiasAdd:output:0Jautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp:value:0Lautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp_1:value:0[autoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0]autoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( п
5autoencoder_16/sequential_33/leaky_re_lu_93/LeakyRelu	LeakyReluHautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<Д
3autoencoder_16/sequential_33/up_sampling2d_46/ShapeShapeCautoencoder_16/sequential_33/leaky_re_lu_93/LeakyRelu:activations:0*
T0*
_output_shapes
::эЯ
Aautoencoder_16/sequential_33/up_sampling2d_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_16/sequential_33/up_sampling2d_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Cautoencoder_16/sequential_33/up_sampling2d_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѓ
;autoencoder_16/sequential_33/up_sampling2d_46/strided_sliceStridedSlice<autoencoder_16/sequential_33/up_sampling2d_46/Shape:output:0Jautoencoder_16/sequential_33/up_sampling2d_46/strided_slice/stack:output:0Lautoencoder_16/sequential_33/up_sampling2d_46/strided_slice/stack_1:output:0Lautoencoder_16/sequential_33/up_sampling2d_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:
3autoencoder_16/sequential_33/up_sampling2d_46/ConstConst*
_output_shapes
:*
dtype0*
valueB"      с
1autoencoder_16/sequential_33/up_sampling2d_46/mulMulDautoencoder_16/sequential_33/up_sampling2d_46/strided_slice:output:0<autoencoder_16/sequential_33/up_sampling2d_46/Const:output:0*
T0*
_output_shapes
:Х
Jautoencoder_16/sequential_33/up_sampling2d_46/resize/ResizeNearestNeighborResizeNearestNeighborCautoencoder_16/sequential_33/leaky_re_lu_93/LeakyRelu:activations:05autoencoder_16/sequential_33/up_sampling2d_46/mul:z:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
half_pixel_centers(Ь
=autoencoder_16/sequential_33/conv2d_106/Conv2D/ReadVariableOpReadVariableOpFautoencoder_16_sequential_33_conv2d_106_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0а
.autoencoder_16/sequential_33/conv2d_106/Conv2DConv2D[autoencoder_16/sequential_33/up_sampling2d_46/resize/ResizeNearestNeighbor:resized_images:0Eautoencoder_16/sequential_33/conv2d_106/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
Т
>autoencoder_16/sequential_33/conv2d_106/BiasAdd/ReadVariableOpReadVariableOpGautoencoder_16_sequential_33_conv2d_106_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
/autoencoder_16/sequential_33/conv2d_106/BiasAddBiasAdd7autoencoder_16/sequential_33/conv2d_106/Conv2D:output:0Fautoencoder_16/sequential_33/conv2d_106/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџР
/autoencoder_16/sequential_33/conv2d_106/SigmoidSigmoid8autoencoder_16/sequential_33/conv2d_106/BiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
IdentityIdentity3autoencoder_16/sequential_33/conv2d_106/Sigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOpT^autoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOpV^autoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1C^autoencoder_16/sequential_32/batch_normalization_12/ReadVariableOpE^autoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp_1T^autoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOpV^autoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1C^autoencoder_16/sequential_32/batch_normalization_13/ReadVariableOpE^autoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp_1T^autoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOpV^autoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1C^autoencoder_16/sequential_32/batch_normalization_14/ReadVariableOpE^autoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp_1?^autoencoder_16/sequential_32/conv2d_100/BiasAdd/ReadVariableOp>^autoencoder_16/sequential_32/conv2d_100/Conv2D/ReadVariableOp?^autoencoder_16/sequential_32/conv2d_101/BiasAdd/ReadVariableOp>^autoencoder_16/sequential_32/conv2d_101/Conv2D/ReadVariableOp?^autoencoder_16/sequential_32/conv2d_102/BiasAdd/ReadVariableOp>^autoencoder_16/sequential_32/conv2d_102/Conv2D/ReadVariableOpT^autoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOpV^autoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1C^autoencoder_16/sequential_33/batch_normalization_15/ReadVariableOpE^autoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp_1T^autoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOpV^autoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1C^autoencoder_16/sequential_33/batch_normalization_16/ReadVariableOpE^autoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp_1T^autoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOpV^autoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1C^autoencoder_16/sequential_33/batch_normalization_17/ReadVariableOpE^autoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp_1?^autoencoder_16/sequential_33/conv2d_103/BiasAdd/ReadVariableOp>^autoencoder_16/sequential_33/conv2d_103/Conv2D/ReadVariableOp?^autoencoder_16/sequential_33/conv2d_104/BiasAdd/ReadVariableOp>^autoencoder_16/sequential_33/conv2d_104/Conv2D/ReadVariableOp?^autoencoder_16/sequential_33/conv2d_105/BiasAdd/ReadVariableOp>^autoencoder_16/sequential_33/conv2d_105/Conv2D/ReadVariableOp?^autoencoder_16/sequential_33/conv2d_106/BiasAdd/ReadVariableOp>^autoencoder_16/sequential_33/conv2d_106/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Њ
Sautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOpSautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2Ў
Uautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Uautoencoder_16/sequential_32/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12
Bautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOpBautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp2
Dautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp_1Dautoencoder_16/sequential_32/batch_normalization_12/ReadVariableOp_12Њ
Sautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOpSautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2Ў
Uautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Uautoencoder_16/sequential_32/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12
Bautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOpBautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp2
Dautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp_1Dautoencoder_16/sequential_32/batch_normalization_13/ReadVariableOp_12Њ
Sautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOpSautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2Ў
Uautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Uautoencoder_16/sequential_32/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12
Bautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOpBautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp2
Dautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp_1Dautoencoder_16/sequential_32/batch_normalization_14/ReadVariableOp_12
>autoencoder_16/sequential_32/conv2d_100/BiasAdd/ReadVariableOp>autoencoder_16/sequential_32/conv2d_100/BiasAdd/ReadVariableOp2~
=autoencoder_16/sequential_32/conv2d_100/Conv2D/ReadVariableOp=autoencoder_16/sequential_32/conv2d_100/Conv2D/ReadVariableOp2
>autoencoder_16/sequential_32/conv2d_101/BiasAdd/ReadVariableOp>autoencoder_16/sequential_32/conv2d_101/BiasAdd/ReadVariableOp2~
=autoencoder_16/sequential_32/conv2d_101/Conv2D/ReadVariableOp=autoencoder_16/sequential_32/conv2d_101/Conv2D/ReadVariableOp2
>autoencoder_16/sequential_32/conv2d_102/BiasAdd/ReadVariableOp>autoencoder_16/sequential_32/conv2d_102/BiasAdd/ReadVariableOp2~
=autoencoder_16/sequential_32/conv2d_102/Conv2D/ReadVariableOp=autoencoder_16/sequential_32/conv2d_102/Conv2D/ReadVariableOp2Њ
Sautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOpSautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2Ў
Uautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Uautoencoder_16/sequential_33/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12
Bautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOpBautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp2
Dautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp_1Dautoencoder_16/sequential_33/batch_normalization_15/ReadVariableOp_12Њ
Sautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOpSautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2Ў
Uautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Uautoencoder_16/sequential_33/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12
Bautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOpBautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp2
Dautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp_1Dautoencoder_16/sequential_33/batch_normalization_16/ReadVariableOp_12Њ
Sautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOpSautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2Ў
Uautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Uautoencoder_16/sequential_33/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12
Bautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOpBautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp2
Dautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp_1Dautoencoder_16/sequential_33/batch_normalization_17/ReadVariableOp_12
>autoencoder_16/sequential_33/conv2d_103/BiasAdd/ReadVariableOp>autoencoder_16/sequential_33/conv2d_103/BiasAdd/ReadVariableOp2~
=autoencoder_16/sequential_33/conv2d_103/Conv2D/ReadVariableOp=autoencoder_16/sequential_33/conv2d_103/Conv2D/ReadVariableOp2
>autoencoder_16/sequential_33/conv2d_104/BiasAdd/ReadVariableOp>autoencoder_16/sequential_33/conv2d_104/BiasAdd/ReadVariableOp2~
=autoencoder_16/sequential_33/conv2d_104/Conv2D/ReadVariableOp=autoencoder_16/sequential_33/conv2d_104/Conv2D/ReadVariableOp2
>autoencoder_16/sequential_33/conv2d_105/BiasAdd/ReadVariableOp>autoencoder_16/sequential_33/conv2d_105/BiasAdd/ReadVariableOp2~
=autoencoder_16/sequential_33/conv2d_105/Conv2D/ReadVariableOp=autoencoder_16/sequential_33/conv2d_105/Conv2D/ReadVariableOp2
>autoencoder_16/sequential_33/conv2d_106/BiasAdd/ReadVariableOp>autoencoder_16/sequential_33/conv2d_106/BiasAdd/ReadVariableOp2~
=autoencoder_16/sequential_33/conv2d_106/Conv2D/ReadVariableOp=autoencoder_16/sequential_33/conv2d_106/Conv2D/ReadVariableOp:A =

_output_shapes
:
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource
Й

G__inference_conv2d_104_layer_call_and_return_conditional_losses_4711978

inputs9
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource


г
8__inference_batch_normalization_13_layer_call_fn_4711694

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4709765
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711684:'#
!
_user_specified_name	4711686:'#
!
_user_specified_name	4711688:'#
!
_user_specified_name	4711690

g
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4711740

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:џџџџџџџџџ @@*
alpha%
з#<g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:џџџџџџџџџ @@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ @@:W S
/
_output_shapes
:џџџџџџџџџ @@
 
_user_specified_nameinputs
ё
Є
,__inference_conv2d_103_layer_call_fn_4711860

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_103_layer_call_and_return_conditional_losses_4710395
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711854:'#
!
_user_specified_name	4711856
­
L
$__inference__update_step_xla_4655198
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Р

G__inference_conv2d_103_layer_call_and_return_conditional_losses_4710395

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ќ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
з@
	
J__inference_sequential_32_layer_call_and_return_conditional_losses_4709970
input_17,
conv2d_100_4709886:  
conv2d_100_4709888: ,
batch_normalization_12_4709891: ,
batch_normalization_12_4709893: ,
batch_normalization_12_4709895: ,
batch_normalization_12_4709897: ,
conv2d_101_4709917: @ 
conv2d_101_4709919:@,
batch_normalization_13_4709922:@,
batch_normalization_13_4709924:@,
batch_normalization_13_4709926:@,
batch_normalization_13_4709928:@-
conv2d_102_4709948:@!
conv2d_102_4709950:	-
batch_normalization_14_4709953:	-
batch_normalization_14_4709955:	-
batch_normalization_14_4709957:	-
batch_normalization_14_4709959:	
identityЂ.batch_normalization_12/StatefulPartitionedCallЂ.batch_normalization_13/StatefulPartitionedCallЂ.batch_normalization_14/StatefulPartitionedCallЂ"conv2d_100/StatefulPartitionedCallЂ"conv2d_101/StatefulPartitionedCallЂ"conv2d_102/StatefulPartitionedCall
"conv2d_100/StatefulPartitionedCallStatefulPartitionedCallinput_17conv2d_100_4709886conv2d_100_4709888*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_100_layer_call_and_return_conditional_losses_4709885
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall+conv2d_100/StatefulPartitionedCall:output:0batch_normalization_12_4709891batch_normalization_12_4709893batch_normalization_12_4709895batch_normalization_12_4709897*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4709675
leaky_re_lu_88/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ@ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4709904ѕ
 max_pooling2d_44/PartitionedCallPartitionedCall'leaky_re_lu_88/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4709724Љ
"conv2d_101/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_44/PartitionedCall:output:0conv2d_101_4709917conv2d_101_4709919*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_101_layer_call_and_return_conditional_losses_4709916
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall+conv2d_101/StatefulPartitionedCall:output:0batch_normalization_13_4709922batch_normalization_13_4709924batch_normalization_13_4709926batch_normalization_13_4709928*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4709747
leaky_re_lu_89/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4709935ѕ
 max_pooling2d_45/PartitionedCallPartitionedCall'leaky_re_lu_89/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4709796Њ
"conv2d_102/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_45/PartitionedCall:output:0conv2d_102_4709948conv2d_102_4709950*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_102_layer_call_and_return_conditional_losses_4709947
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall+conv2d_102/StatefulPartitionedCall:output:0batch_normalization_14_4709953batch_normalization_14_4709955batch_normalization_14_4709957batch_normalization_14_4709959*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4709819
leaky_re_lu_90/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4709966і
 max_pooling2d_46/PartitionedCallPartitionedCall'leaky_re_lu_90/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4709868
IdentityIdentity)max_pooling2d_46/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџЄ
NoOpNoOp/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall#^conv2d_100/StatefulPartitionedCall#^conv2d_101/StatefulPartitionedCall#^conv2d_102/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ@: : : : : : : : : : : : : : : : : : 2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2H
"conv2d_100/StatefulPartitionedCall"conv2d_100/StatefulPartitionedCall2H
"conv2d_101/StatefulPartitionedCall"conv2d_101/StatefulPartitionedCall2H
"conv2d_102/StatefulPartitionedCall"conv2d_102/StatefulPartitionedCall:Z V
0
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_17:'#
!
_user_specified_name	4709886:'#
!
_user_specified_name	4709888:'#
!
_user_specified_name	4709891:'#
!
_user_specified_name	4709893:'#
!
_user_specified_name	4709895:'#
!
_user_specified_name	4709897:'#
!
_user_specified_name	4709917:'#
!
_user_specified_name	4709919:'	#
!
_user_specified_name	4709922:'
#
!
_user_specified_name	4709924:'#
!
_user_specified_name	4709926:'#
!
_user_specified_name	4709928:'#
!
_user_specified_name	4709948:'#
!
_user_specified_name	4709950:'#
!
_user_specified_name	4709953:'#
!
_user_specified_name	4709955:'#
!
_user_specified_name	4709957:'#
!
_user_specified_name	4709959
в

S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4710261

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

Т
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712022

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

i
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4709868

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
д
Y
$__inference__update_step_xla_4655223
gradient#
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:@: *
	_noinline(:Q M
'
_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ѓ
i
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4710299

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711813

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Яа
ѕ[
 __inference__traced_save_4712781
file_prefixB
(read_disablecopyonread_conv2d_100_kernel: 6
(read_1_disablecopyonread_conv2d_100_bias: C
5read_2_disablecopyonread_batch_normalization_12_gamma: B
4read_3_disablecopyonread_batch_normalization_12_beta: I
;read_4_disablecopyonread_batch_normalization_12_moving_mean: M
?read_5_disablecopyonread_batch_normalization_12_moving_variance: D
*read_6_disablecopyonread_conv2d_101_kernel: @6
(read_7_disablecopyonread_conv2d_101_bias:@C
5read_8_disablecopyonread_batch_normalization_13_gamma:@B
4read_9_disablecopyonread_batch_normalization_13_beta:@J
<read_10_disablecopyonread_batch_normalization_13_moving_mean:@N
@read_11_disablecopyonread_batch_normalization_13_moving_variance:@F
+read_12_disablecopyonread_conv2d_102_kernel:@8
)read_13_disablecopyonread_conv2d_102_bias:	E
6read_14_disablecopyonread_batch_normalization_14_gamma:	D
5read_15_disablecopyonread_batch_normalization_14_beta:	K
<read_16_disablecopyonread_batch_normalization_14_moving_mean:	O
@read_17_disablecopyonread_batch_normalization_14_moving_variance:	G
+read_18_disablecopyonread_conv2d_103_kernel:8
)read_19_disablecopyonread_conv2d_103_bias:	E
6read_20_disablecopyonread_batch_normalization_15_gamma:	D
5read_21_disablecopyonread_batch_normalization_15_beta:	K
<read_22_disablecopyonread_batch_normalization_15_moving_mean:	O
@read_23_disablecopyonread_batch_normalization_15_moving_variance:	F
+read_24_disablecopyonread_conv2d_104_kernel:@7
)read_25_disablecopyonread_conv2d_104_bias:@D
6read_26_disablecopyonread_batch_normalization_16_gamma:@C
5read_27_disablecopyonread_batch_normalization_16_beta:@J
<read_28_disablecopyonread_batch_normalization_16_moving_mean:@N
@read_29_disablecopyonread_batch_normalization_16_moving_variance:@E
+read_30_disablecopyonread_conv2d_105_kernel:@ 7
)read_31_disablecopyonread_conv2d_105_bias: D
6read_32_disablecopyonread_batch_normalization_17_gamma: C
5read_33_disablecopyonread_batch_normalization_17_beta: J
<read_34_disablecopyonread_batch_normalization_17_moving_mean: N
@read_35_disablecopyonread_batch_normalization_17_moving_variance: E
+read_36_disablecopyonread_conv2d_106_kernel: 7
)read_37_disablecopyonread_conv2d_106_bias:-
#read_38_disablecopyonread_iteration:	 1
'read_39_disablecopyonread_learning_rate: L
2read_40_disablecopyonread_adam_m_conv2d_100_kernel: L
2read_41_disablecopyonread_adam_v_conv2d_100_kernel: >
0read_42_disablecopyonread_adam_m_conv2d_100_bias: >
0read_43_disablecopyonread_adam_v_conv2d_100_bias: K
=read_44_disablecopyonread_adam_m_batch_normalization_12_gamma: K
=read_45_disablecopyonread_adam_v_batch_normalization_12_gamma: J
<read_46_disablecopyonread_adam_m_batch_normalization_12_beta: J
<read_47_disablecopyonread_adam_v_batch_normalization_12_beta: L
2read_48_disablecopyonread_adam_m_conv2d_101_kernel: @L
2read_49_disablecopyonread_adam_v_conv2d_101_kernel: @>
0read_50_disablecopyonread_adam_m_conv2d_101_bias:@>
0read_51_disablecopyonread_adam_v_conv2d_101_bias:@K
=read_52_disablecopyonread_adam_m_batch_normalization_13_gamma:@K
=read_53_disablecopyonread_adam_v_batch_normalization_13_gamma:@J
<read_54_disablecopyonread_adam_m_batch_normalization_13_beta:@J
<read_55_disablecopyonread_adam_v_batch_normalization_13_beta:@M
2read_56_disablecopyonread_adam_m_conv2d_102_kernel:@M
2read_57_disablecopyonread_adam_v_conv2d_102_kernel:@?
0read_58_disablecopyonread_adam_m_conv2d_102_bias:	?
0read_59_disablecopyonread_adam_v_conv2d_102_bias:	L
=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma:	L
=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma:	K
<read_62_disablecopyonread_adam_m_batch_normalization_14_beta:	K
<read_63_disablecopyonread_adam_v_batch_normalization_14_beta:	N
2read_64_disablecopyonread_adam_m_conv2d_103_kernel:N
2read_65_disablecopyonread_adam_v_conv2d_103_kernel:?
0read_66_disablecopyonread_adam_m_conv2d_103_bias:	?
0read_67_disablecopyonread_adam_v_conv2d_103_bias:	L
=read_68_disablecopyonread_adam_m_batch_normalization_15_gamma:	L
=read_69_disablecopyonread_adam_v_batch_normalization_15_gamma:	K
<read_70_disablecopyonread_adam_m_batch_normalization_15_beta:	K
<read_71_disablecopyonread_adam_v_batch_normalization_15_beta:	M
2read_72_disablecopyonread_adam_m_conv2d_104_kernel:@M
2read_73_disablecopyonread_adam_v_conv2d_104_kernel:@>
0read_74_disablecopyonread_adam_m_conv2d_104_bias:@>
0read_75_disablecopyonread_adam_v_conv2d_104_bias:@K
=read_76_disablecopyonread_adam_m_batch_normalization_16_gamma:@K
=read_77_disablecopyonread_adam_v_batch_normalization_16_gamma:@J
<read_78_disablecopyonread_adam_m_batch_normalization_16_beta:@J
<read_79_disablecopyonread_adam_v_batch_normalization_16_beta:@L
2read_80_disablecopyonread_adam_m_conv2d_105_kernel:@ L
2read_81_disablecopyonread_adam_v_conv2d_105_kernel:@ >
0read_82_disablecopyonread_adam_m_conv2d_105_bias: >
0read_83_disablecopyonread_adam_v_conv2d_105_bias: K
=read_84_disablecopyonread_adam_m_batch_normalization_17_gamma: K
=read_85_disablecopyonread_adam_v_batch_normalization_17_gamma: J
<read_86_disablecopyonread_adam_m_batch_normalization_17_beta: J
<read_87_disablecopyonread_adam_v_batch_normalization_17_beta: L
2read_88_disablecopyonread_adam_m_conv2d_106_kernel: L
2read_89_disablecopyonread_adam_v_conv2d_106_kernel: >
0read_90_disablecopyonread_adam_m_conv2d_106_bias:>
0read_91_disablecopyonread_adam_v_conv2d_106_bias:)
read_92_disablecopyonread_total: )
read_93_disablecopyonread_count: 
savev2_const
identity_189ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_30/DisableCopyOnReadЂRead_30/ReadVariableOpЂRead_31/DisableCopyOnReadЂRead_31/ReadVariableOpЂRead_32/DisableCopyOnReadЂRead_32/ReadVariableOpЂRead_33/DisableCopyOnReadЂRead_33/ReadVariableOpЂRead_34/DisableCopyOnReadЂRead_34/ReadVariableOpЂRead_35/DisableCopyOnReadЂRead_35/ReadVariableOpЂRead_36/DisableCopyOnReadЂRead_36/ReadVariableOpЂRead_37/DisableCopyOnReadЂRead_37/ReadVariableOpЂRead_38/DisableCopyOnReadЂRead_38/ReadVariableOpЂRead_39/DisableCopyOnReadЂRead_39/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_40/DisableCopyOnReadЂRead_40/ReadVariableOpЂRead_41/DisableCopyOnReadЂRead_41/ReadVariableOpЂRead_42/DisableCopyOnReadЂRead_42/ReadVariableOpЂRead_43/DisableCopyOnReadЂRead_43/ReadVariableOpЂRead_44/DisableCopyOnReadЂRead_44/ReadVariableOpЂRead_45/DisableCopyOnReadЂRead_45/ReadVariableOpЂRead_46/DisableCopyOnReadЂRead_46/ReadVariableOpЂRead_47/DisableCopyOnReadЂRead_47/ReadVariableOpЂRead_48/DisableCopyOnReadЂRead_48/ReadVariableOpЂRead_49/DisableCopyOnReadЂRead_49/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_50/DisableCopyOnReadЂRead_50/ReadVariableOpЂRead_51/DisableCopyOnReadЂRead_51/ReadVariableOpЂRead_52/DisableCopyOnReadЂRead_52/ReadVariableOpЂRead_53/DisableCopyOnReadЂRead_53/ReadVariableOpЂRead_54/DisableCopyOnReadЂRead_54/ReadVariableOpЂRead_55/DisableCopyOnReadЂRead_55/ReadVariableOpЂRead_56/DisableCopyOnReadЂRead_56/ReadVariableOpЂRead_57/DisableCopyOnReadЂRead_57/ReadVariableOpЂRead_58/DisableCopyOnReadЂRead_58/ReadVariableOpЂRead_59/DisableCopyOnReadЂRead_59/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_60/DisableCopyOnReadЂRead_60/ReadVariableOpЂRead_61/DisableCopyOnReadЂRead_61/ReadVariableOpЂRead_62/DisableCopyOnReadЂRead_62/ReadVariableOpЂRead_63/DisableCopyOnReadЂRead_63/ReadVariableOpЂRead_64/DisableCopyOnReadЂRead_64/ReadVariableOpЂRead_65/DisableCopyOnReadЂRead_65/ReadVariableOpЂRead_66/DisableCopyOnReadЂRead_66/ReadVariableOpЂRead_67/DisableCopyOnReadЂRead_67/ReadVariableOpЂRead_68/DisableCopyOnReadЂRead_68/ReadVariableOpЂRead_69/DisableCopyOnReadЂRead_69/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_70/DisableCopyOnReadЂRead_70/ReadVariableOpЂRead_71/DisableCopyOnReadЂRead_71/ReadVariableOpЂRead_72/DisableCopyOnReadЂRead_72/ReadVariableOpЂRead_73/DisableCopyOnReadЂRead_73/ReadVariableOpЂRead_74/DisableCopyOnReadЂRead_74/ReadVariableOpЂRead_75/DisableCopyOnReadЂRead_75/ReadVariableOpЂRead_76/DisableCopyOnReadЂRead_76/ReadVariableOpЂRead_77/DisableCopyOnReadЂRead_77/ReadVariableOpЂRead_78/DisableCopyOnReadЂRead_78/ReadVariableOpЂRead_79/DisableCopyOnReadЂRead_79/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_80/DisableCopyOnReadЂRead_80/ReadVariableOpЂRead_81/DisableCopyOnReadЂRead_81/ReadVariableOpЂRead_82/DisableCopyOnReadЂRead_82/ReadVariableOpЂRead_83/DisableCopyOnReadЂRead_83/ReadVariableOpЂRead_84/DisableCopyOnReadЂRead_84/ReadVariableOpЂRead_85/DisableCopyOnReadЂRead_85/ReadVariableOpЂRead_86/DisableCopyOnReadЂRead_86/ReadVariableOpЂRead_87/DisableCopyOnReadЂRead_87/ReadVariableOpЂRead_88/DisableCopyOnReadЂRead_88/ReadVariableOpЂRead_89/DisableCopyOnReadЂRead_89/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpЂRead_90/DisableCopyOnReadЂRead_90/ReadVariableOpЂRead_91/DisableCopyOnReadЂRead_91/ReadVariableOpЂRead_92/DisableCopyOnReadЂRead_92/ReadVariableOpЂRead_93/DisableCopyOnReadЂRead_93/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: z
Read/DisableCopyOnReadDisableCopyOnRead(read_disablecopyonread_conv2d_100_kernel"/device:CPU:0*
_output_shapes
 Ќ
Read/ReadVariableOpReadVariableOp(read_disablecopyonread_conv2d_100_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: |
Read_1/DisableCopyOnReadDisableCopyOnRead(read_1_disablecopyonread_conv2d_100_bias"/device:CPU:0*
_output_shapes
 Є
Read_1/ReadVariableOpReadVariableOp(read_1_disablecopyonread_conv2d_100_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 Б
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_12_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 А
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_12_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_12_moving_mean"/device:CPU:0*
_output_shapes
 З
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_12_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_12_moving_variance"/device:CPU:0*
_output_shapes
 Л
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_12_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_6/DisableCopyOnReadDisableCopyOnRead*read_6_disablecopyonread_conv2d_101_kernel"/device:CPU:0*
_output_shapes
 В
Read_6/ReadVariableOpReadVariableOp*read_6_disablecopyonread_conv2d_101_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @|
Read_7/DisableCopyOnReadDisableCopyOnRead(read_7_disablecopyonread_conv2d_101_bias"/device:CPU:0*
_output_shapes
 Є
Read_7/ReadVariableOpReadVariableOp(read_7_disablecopyonread_conv2d_101_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 Б
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_13_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 А
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_13_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_13_moving_mean"/device:CPU:0*
_output_shapes
 К
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_13_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_13_moving_variance"/device:CPU:0*
_output_shapes
 О
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_13_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_12/DisableCopyOnReadDisableCopyOnRead+read_12_disablecopyonread_conv2d_102_kernel"/device:CPU:0*
_output_shapes
 Ж
Read_12/ReadVariableOpReadVariableOp+read_12_disablecopyonread_conv2d_102_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@n
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:@~
Read_13/DisableCopyOnReadDisableCopyOnRead)read_13_disablecopyonread_conv2d_102_bias"/device:CPU:0*
_output_shapes
 Ј
Read_13/ReadVariableOpReadVariableOp)read_13_disablecopyonread_conv2d_102_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 Е
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_14_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 Д
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_14_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_14_moving_mean"/device:CPU:0*
_output_shapes
 Л
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_14_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_14_moving_variance"/device:CPU:0*
_output_shapes
 П
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_14_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_18/DisableCopyOnReadDisableCopyOnRead+read_18_disablecopyonread_conv2d_103_kernel"/device:CPU:0*
_output_shapes
 З
Read_18/ReadVariableOpReadVariableOp+read_18_disablecopyonread_conv2d_103_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:*
dtype0y
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:o
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:~
Read_19/DisableCopyOnReadDisableCopyOnRead)read_19_disablecopyonread_conv2d_103_bias"/device:CPU:0*
_output_shapes
 Ј
Read_19/ReadVariableOpReadVariableOp)read_19_disablecopyonread_conv2d_103_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 Е
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_15_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 Д
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_15_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_15_moving_mean"/device:CPU:0*
_output_shapes
 Л
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_15_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_15_moving_variance"/device:CPU:0*
_output_shapes
 П
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_15_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_24/DisableCopyOnReadDisableCopyOnRead+read_24_disablecopyonread_conv2d_104_kernel"/device:CPU:0*
_output_shapes
 Ж
Read_24/ReadVariableOpReadVariableOp+read_24_disablecopyonread_conv2d_104_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@*
dtype0x
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@n
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*'
_output_shapes
:@~
Read_25/DisableCopyOnReadDisableCopyOnRead)read_25_disablecopyonread_conv2d_104_bias"/device:CPU:0*
_output_shapes
 Ї
Read_25/ReadVariableOpReadVariableOp)read_25_disablecopyonread_conv2d_104_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 Д
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_batch_normalization_16_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 Г
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_batch_normalization_16_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_28/DisableCopyOnReadDisableCopyOnRead<read_28_disablecopyonread_batch_normalization_16_moving_mean"/device:CPU:0*
_output_shapes
 К
Read_28/ReadVariableOpReadVariableOp<read_28_disablecopyonread_batch_normalization_16_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_29/DisableCopyOnReadDisableCopyOnRead@read_29_disablecopyonread_batch_normalization_16_moving_variance"/device:CPU:0*
_output_shapes
 О
Read_29/ReadVariableOpReadVariableOp@read_29_disablecopyonread_batch_normalization_16_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_30/DisableCopyOnReadDisableCopyOnRead+read_30_disablecopyonread_conv2d_105_kernel"/device:CPU:0*
_output_shapes
 Е
Read_30/ReadVariableOpReadVariableOp+read_30_disablecopyonread_conv2d_105_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ ~
Read_31/DisableCopyOnReadDisableCopyOnRead)read_31_disablecopyonread_conv2d_105_bias"/device:CPU:0*
_output_shapes
 Ї
Read_31/ReadVariableOpReadVariableOp)read_31_disablecopyonread_conv2d_105_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_32/DisableCopyOnReadDisableCopyOnRead6read_32_disablecopyonread_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 Д
Read_32/ReadVariableOpReadVariableOp6read_32_disablecopyonread_batch_normalization_17_gamma^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_33/DisableCopyOnReadDisableCopyOnRead5read_33_disablecopyonread_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 Г
Read_33/ReadVariableOpReadVariableOp5read_33_disablecopyonread_batch_normalization_17_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_34/DisableCopyOnReadDisableCopyOnRead<read_34_disablecopyonread_batch_normalization_17_moving_mean"/device:CPU:0*
_output_shapes
 К
Read_34/ReadVariableOpReadVariableOp<read_34_disablecopyonread_batch_normalization_17_moving_mean^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_35/DisableCopyOnReadDisableCopyOnRead@read_35_disablecopyonread_batch_normalization_17_moving_variance"/device:CPU:0*
_output_shapes
 О
Read_35/ReadVariableOpReadVariableOp@read_35_disablecopyonread_batch_normalization_17_moving_variance^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_36/DisableCopyOnReadDisableCopyOnRead+read_36_disablecopyonread_conv2d_106_kernel"/device:CPU:0*
_output_shapes
 Е
Read_36/ReadVariableOpReadVariableOp+read_36_disablecopyonread_conv2d_106_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*&
_output_shapes
: ~
Read_37/DisableCopyOnReadDisableCopyOnRead)read_37_disablecopyonread_conv2d_106_bias"/device:CPU:0*
_output_shapes
 Ї
Read_37/ReadVariableOpReadVariableOp)read_37_disablecopyonread_conv2d_106_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_38/DisableCopyOnReadDisableCopyOnRead#read_38_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_38/ReadVariableOpReadVariableOp#read_38_disablecopyonread_iteration^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_39/DisableCopyOnReadDisableCopyOnRead'read_39_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ё
Read_39/ReadVariableOpReadVariableOp'read_39_disablecopyonread_learning_rate^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_40/DisableCopyOnReadDisableCopyOnRead2read_40_disablecopyonread_adam_m_conv2d_100_kernel"/device:CPU:0*
_output_shapes
 М
Read_40/ReadVariableOpReadVariableOp2read_40_disablecopyonread_adam_m_conv2d_100_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_41/DisableCopyOnReadDisableCopyOnRead2read_41_disablecopyonread_adam_v_conv2d_100_kernel"/device:CPU:0*
_output_shapes
 М
Read_41/ReadVariableOpReadVariableOp2read_41_disablecopyonread_adam_v_conv2d_100_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_adam_m_conv2d_100_bias"/device:CPU:0*
_output_shapes
 Ў
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_adam_m_conv2d_100_bias^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_43/DisableCopyOnReadDisableCopyOnRead0read_43_disablecopyonread_adam_v_conv2d_100_bias"/device:CPU:0*
_output_shapes
 Ў
Read_43/ReadVariableOpReadVariableOp0read_43_disablecopyonread_adam_v_conv2d_100_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_44/DisableCopyOnReadDisableCopyOnRead=read_44_disablecopyonread_adam_m_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 Л
Read_44/ReadVariableOpReadVariableOp=read_44_disablecopyonread_adam_m_batch_normalization_12_gamma^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_45/DisableCopyOnReadDisableCopyOnRead=read_45_disablecopyonread_adam_v_batch_normalization_12_gamma"/device:CPU:0*
_output_shapes
 Л
Read_45/ReadVariableOpReadVariableOp=read_45_disablecopyonread_adam_v_batch_normalization_12_gamma^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_46/DisableCopyOnReadDisableCopyOnRead<read_46_disablecopyonread_adam_m_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 К
Read_46/ReadVariableOpReadVariableOp<read_46_disablecopyonread_adam_m_batch_normalization_12_beta^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_47/DisableCopyOnReadDisableCopyOnRead<read_47_disablecopyonread_adam_v_batch_normalization_12_beta"/device:CPU:0*
_output_shapes
 К
Read_47/ReadVariableOpReadVariableOp<read_47_disablecopyonread_adam_v_batch_normalization_12_beta^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_48/DisableCopyOnReadDisableCopyOnRead2read_48_disablecopyonread_adam_m_conv2d_101_kernel"/device:CPU:0*
_output_shapes
 М
Read_48/ReadVariableOpReadVariableOp2read_48_disablecopyonread_adam_m_conv2d_101_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*&
_output_shapes
: @
Read_49/DisableCopyOnReadDisableCopyOnRead2read_49_disablecopyonread_adam_v_conv2d_101_kernel"/device:CPU:0*
_output_shapes
 М
Read_49/ReadVariableOpReadVariableOp2read_49_disablecopyonread_adam_v_conv2d_101_kernel^Read_49/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*&
_output_shapes
: @
Read_50/DisableCopyOnReadDisableCopyOnRead0read_50_disablecopyonread_adam_m_conv2d_101_bias"/device:CPU:0*
_output_shapes
 Ў
Read_50/ReadVariableOpReadVariableOp0read_50_disablecopyonread_adam_m_conv2d_101_bias^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_51/DisableCopyOnReadDisableCopyOnRead0read_51_disablecopyonread_adam_v_conv2d_101_bias"/device:CPU:0*
_output_shapes
 Ў
Read_51/ReadVariableOpReadVariableOp0read_51_disablecopyonread_adam_v_conv2d_101_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_52/DisableCopyOnReadDisableCopyOnRead=read_52_disablecopyonread_adam_m_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 Л
Read_52/ReadVariableOpReadVariableOp=read_52_disablecopyonread_adam_m_batch_normalization_13_gamma^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_53/DisableCopyOnReadDisableCopyOnRead=read_53_disablecopyonread_adam_v_batch_normalization_13_gamma"/device:CPU:0*
_output_shapes
 Л
Read_53/ReadVariableOpReadVariableOp=read_53_disablecopyonread_adam_v_batch_normalization_13_gamma^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_54/DisableCopyOnReadDisableCopyOnRead<read_54_disablecopyonread_adam_m_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 К
Read_54/ReadVariableOpReadVariableOp<read_54_disablecopyonread_adam_m_batch_normalization_13_beta^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_55/DisableCopyOnReadDisableCopyOnRead<read_55_disablecopyonread_adam_v_batch_normalization_13_beta"/device:CPU:0*
_output_shapes
 К
Read_55/ReadVariableOpReadVariableOp<read_55_disablecopyonread_adam_v_batch_normalization_13_beta^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_56/DisableCopyOnReadDisableCopyOnRead2read_56_disablecopyonread_adam_m_conv2d_102_kernel"/device:CPU:0*
_output_shapes
 Н
Read_56/ReadVariableOpReadVariableOp2read_56_disablecopyonread_adam_m_conv2d_102_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@*
dtype0y
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@p
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*'
_output_shapes
:@
Read_57/DisableCopyOnReadDisableCopyOnRead2read_57_disablecopyonread_adam_v_conv2d_102_kernel"/device:CPU:0*
_output_shapes
 Н
Read_57/ReadVariableOpReadVariableOp2read_57_disablecopyonread_adam_v_conv2d_102_kernel^Read_57/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@*
dtype0y
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@p
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*'
_output_shapes
:@
Read_58/DisableCopyOnReadDisableCopyOnRead0read_58_disablecopyonread_adam_m_conv2d_102_bias"/device:CPU:0*
_output_shapes
 Џ
Read_58/ReadVariableOpReadVariableOp0read_58_disablecopyonread_adam_m_conv2d_102_bias^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_59/DisableCopyOnReadDisableCopyOnRead0read_59_disablecopyonread_adam_v_conv2d_102_bias"/device:CPU:0*
_output_shapes
 Џ
Read_59/ReadVariableOpReadVariableOp0read_59_disablecopyonread_adam_v_conv2d_102_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_60/DisableCopyOnReadDisableCopyOnRead=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 М
Read_60/ReadVariableOpReadVariableOp=read_60_disablecopyonread_adam_m_batch_normalization_14_gamma^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_61/DisableCopyOnReadDisableCopyOnRead=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma"/device:CPU:0*
_output_shapes
 М
Read_61/ReadVariableOpReadVariableOp=read_61_disablecopyonread_adam_v_batch_normalization_14_gamma^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_62/DisableCopyOnReadDisableCopyOnRead<read_62_disablecopyonread_adam_m_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 Л
Read_62/ReadVariableOpReadVariableOp<read_62_disablecopyonread_adam_m_batch_normalization_14_beta^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_63/DisableCopyOnReadDisableCopyOnRead<read_63_disablecopyonread_adam_v_batch_normalization_14_beta"/device:CPU:0*
_output_shapes
 Л
Read_63/ReadVariableOpReadVariableOp<read_63_disablecopyonread_adam_v_batch_normalization_14_beta^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_64/DisableCopyOnReadDisableCopyOnRead2read_64_disablecopyonread_adam_m_conv2d_103_kernel"/device:CPU:0*
_output_shapes
 О
Read_64/ReadVariableOpReadVariableOp2read_64_disablecopyonread_adam_m_conv2d_103_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:*
dtype0z
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:q
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*(
_output_shapes
:
Read_65/DisableCopyOnReadDisableCopyOnRead2read_65_disablecopyonread_adam_v_conv2d_103_kernel"/device:CPU:0*
_output_shapes
 О
Read_65/ReadVariableOpReadVariableOp2read_65_disablecopyonread_adam_v_conv2d_103_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:*
dtype0z
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:q
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*(
_output_shapes
:
Read_66/DisableCopyOnReadDisableCopyOnRead0read_66_disablecopyonread_adam_m_conv2d_103_bias"/device:CPU:0*
_output_shapes
 Џ
Read_66/ReadVariableOpReadVariableOp0read_66_disablecopyonread_adam_m_conv2d_103_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_67/DisableCopyOnReadDisableCopyOnRead0read_67_disablecopyonread_adam_v_conv2d_103_bias"/device:CPU:0*
_output_shapes
 Џ
Read_67/ReadVariableOpReadVariableOp0read_67_disablecopyonread_adam_v_conv2d_103_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_68/DisableCopyOnReadDisableCopyOnRead=read_68_disablecopyonread_adam_m_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 М
Read_68/ReadVariableOpReadVariableOp=read_68_disablecopyonread_adam_m_batch_normalization_15_gamma^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_69/DisableCopyOnReadDisableCopyOnRead=read_69_disablecopyonread_adam_v_batch_normalization_15_gamma"/device:CPU:0*
_output_shapes
 М
Read_69/ReadVariableOpReadVariableOp=read_69_disablecopyonread_adam_v_batch_normalization_15_gamma^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_70/DisableCopyOnReadDisableCopyOnRead<read_70_disablecopyonread_adam_m_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 Л
Read_70/ReadVariableOpReadVariableOp<read_70_disablecopyonread_adam_m_batch_normalization_15_beta^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_71/DisableCopyOnReadDisableCopyOnRead<read_71_disablecopyonread_adam_v_batch_normalization_15_beta"/device:CPU:0*
_output_shapes
 Л
Read_71/ReadVariableOpReadVariableOp<read_71_disablecopyonread_adam_v_batch_normalization_15_beta^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0m
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:d
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_72/DisableCopyOnReadDisableCopyOnRead2read_72_disablecopyonread_adam_m_conv2d_104_kernel"/device:CPU:0*
_output_shapes
 Н
Read_72/ReadVariableOpReadVariableOp2read_72_disablecopyonread_adam_m_conv2d_104_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@*
dtype0y
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@p
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*'
_output_shapes
:@
Read_73/DisableCopyOnReadDisableCopyOnRead2read_73_disablecopyonread_adam_v_conv2d_104_kernel"/device:CPU:0*
_output_shapes
 Н
Read_73/ReadVariableOpReadVariableOp2read_73_disablecopyonread_adam_v_conv2d_104_kernel^Read_73/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@*
dtype0y
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@p
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*'
_output_shapes
:@
Read_74/DisableCopyOnReadDisableCopyOnRead0read_74_disablecopyonread_adam_m_conv2d_104_bias"/device:CPU:0*
_output_shapes
 Ў
Read_74/ReadVariableOpReadVariableOp0read_74_disablecopyonread_adam_m_conv2d_104_bias^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_75/DisableCopyOnReadDisableCopyOnRead0read_75_disablecopyonread_adam_v_conv2d_104_bias"/device:CPU:0*
_output_shapes
 Ў
Read_75/ReadVariableOpReadVariableOp0read_75_disablecopyonread_adam_v_conv2d_104_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_76/DisableCopyOnReadDisableCopyOnRead=read_76_disablecopyonread_adam_m_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 Л
Read_76/ReadVariableOpReadVariableOp=read_76_disablecopyonread_adam_m_batch_normalization_16_gamma^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_77/DisableCopyOnReadDisableCopyOnRead=read_77_disablecopyonread_adam_v_batch_normalization_16_gamma"/device:CPU:0*
_output_shapes
 Л
Read_77/ReadVariableOpReadVariableOp=read_77_disablecopyonread_adam_v_batch_normalization_16_gamma^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_78/DisableCopyOnReadDisableCopyOnRead<read_78_disablecopyonread_adam_m_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 К
Read_78/ReadVariableOpReadVariableOp<read_78_disablecopyonread_adam_m_batch_normalization_16_beta^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_79/DisableCopyOnReadDisableCopyOnRead<read_79_disablecopyonread_adam_v_batch_normalization_16_beta"/device:CPU:0*
_output_shapes
 К
Read_79/ReadVariableOpReadVariableOp<read_79_disablecopyonread_adam_v_batch_normalization_16_beta^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_80/DisableCopyOnReadDisableCopyOnRead2read_80_disablecopyonread_adam_m_conv2d_105_kernel"/device:CPU:0*
_output_shapes
 М
Read_80/ReadVariableOpReadVariableOp2read_80_disablecopyonread_adam_m_conv2d_105_kernel^Read_80/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_81/DisableCopyOnReadDisableCopyOnRead2read_81_disablecopyonread_adam_v_conv2d_105_kernel"/device:CPU:0*
_output_shapes
 М
Read_81/ReadVariableOpReadVariableOp2read_81_disablecopyonread_adam_v_conv2d_105_kernel^Read_81/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0x
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ o
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ 
Read_82/DisableCopyOnReadDisableCopyOnRead0read_82_disablecopyonread_adam_m_conv2d_105_bias"/device:CPU:0*
_output_shapes
 Ў
Read_82/ReadVariableOpReadVariableOp0read_82_disablecopyonread_adam_m_conv2d_105_bias^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_83/DisableCopyOnReadDisableCopyOnRead0read_83_disablecopyonread_adam_v_conv2d_105_bias"/device:CPU:0*
_output_shapes
 Ў
Read_83/ReadVariableOpReadVariableOp0read_83_disablecopyonread_adam_v_conv2d_105_bias^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_84/DisableCopyOnReadDisableCopyOnRead=read_84_disablecopyonread_adam_m_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 Л
Read_84/ReadVariableOpReadVariableOp=read_84_disablecopyonread_adam_m_batch_normalization_17_gamma^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_85/DisableCopyOnReadDisableCopyOnRead=read_85_disablecopyonread_adam_v_batch_normalization_17_gamma"/device:CPU:0*
_output_shapes
 Л
Read_85/ReadVariableOpReadVariableOp=read_85_disablecopyonread_adam_v_batch_normalization_17_gamma^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_86/DisableCopyOnReadDisableCopyOnRead<read_86_disablecopyonread_adam_m_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 К
Read_86/ReadVariableOpReadVariableOp<read_86_disablecopyonread_adam_m_batch_normalization_17_beta^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_87/DisableCopyOnReadDisableCopyOnRead<read_87_disablecopyonread_adam_v_batch_normalization_17_beta"/device:CPU:0*
_output_shapes
 К
Read_87/ReadVariableOpReadVariableOp<read_87_disablecopyonread_adam_v_batch_normalization_17_beta^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_88/DisableCopyOnReadDisableCopyOnRead2read_88_disablecopyonread_adam_m_conv2d_106_kernel"/device:CPU:0*
_output_shapes
 М
Read_88/ReadVariableOpReadVariableOp2read_88_disablecopyonread_adam_m_conv2d_106_kernel^Read_88/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_89/DisableCopyOnReadDisableCopyOnRead2read_89_disablecopyonread_adam_v_conv2d_106_kernel"/device:CPU:0*
_output_shapes
 М
Read_89/ReadVariableOpReadVariableOp2read_89_disablecopyonread_adam_v_conv2d_106_kernel^Read_89/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_90/DisableCopyOnReadDisableCopyOnRead0read_90_disablecopyonread_adam_m_conv2d_106_bias"/device:CPU:0*
_output_shapes
 Ў
Read_90/ReadVariableOpReadVariableOp0read_90_disablecopyonread_adam_m_conv2d_106_bias^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_91/DisableCopyOnReadDisableCopyOnRead0read_91_disablecopyonread_adam_v_conv2d_106_bias"/device:CPU:0*
_output_shapes
 Ў
Read_91/ReadVariableOpReadVariableOp0read_91_disablecopyonread_adam_v_conv2d_106_bias^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_92/DisableCopyOnReadDisableCopyOnReadread_92_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_92/ReadVariableOpReadVariableOpread_92_disablecopyonread_total^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_93/DisableCopyOnReadDisableCopyOnReadread_93_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_93/ReadVariableOpReadVariableOpread_93_disablecopyonread_count^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
: №#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:_*
dtype0*#
value#B#_B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЎ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:_*
dtype0*г
valueЩBЦ_B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ё
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *m
dtypesc
a2_	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_188Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_189IdentityIdentity_188:output:0^NoOp*
T0*
_output_shapes
: '
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp*
_output_shapes
 "%
identity_189Identity_189:output:0*(
_construction_contextkEagerRuntime*е
_input_shapesУ
Р: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:1-
+
_user_specified_nameconv2d_100/kernel:/+
)
_user_specified_nameconv2d_100/bias:<8
6
_user_specified_namebatch_normalization_12/gamma:;7
5
_user_specified_namebatch_normalization_12/beta:B>
<
_user_specified_name$"batch_normalization_12/moving_mean:FB
@
_user_specified_name(&batch_normalization_12/moving_variance:1-
+
_user_specified_nameconv2d_101/kernel:/+
)
_user_specified_nameconv2d_101/bias:<	8
6
_user_specified_namebatch_normalization_13/gamma:;
7
5
_user_specified_namebatch_normalization_13/beta:B>
<
_user_specified_name$"batch_normalization_13/moving_mean:FB
@
_user_specified_name(&batch_normalization_13/moving_variance:1-
+
_user_specified_nameconv2d_102/kernel:/+
)
_user_specified_nameconv2d_102/bias:<8
6
_user_specified_namebatch_normalization_14/gamma:;7
5
_user_specified_namebatch_normalization_14/beta:B>
<
_user_specified_name$"batch_normalization_14/moving_mean:FB
@
_user_specified_name(&batch_normalization_14/moving_variance:1-
+
_user_specified_nameconv2d_103/kernel:/+
)
_user_specified_nameconv2d_103/bias:<8
6
_user_specified_namebatch_normalization_15/gamma:;7
5
_user_specified_namebatch_normalization_15/beta:B>
<
_user_specified_name$"batch_normalization_15/moving_mean:FB
@
_user_specified_name(&batch_normalization_15/moving_variance:1-
+
_user_specified_nameconv2d_104/kernel:/+
)
_user_specified_nameconv2d_104/bias:<8
6
_user_specified_namebatch_normalization_16/gamma:;7
5
_user_specified_namebatch_normalization_16/beta:B>
<
_user_specified_name$"batch_normalization_16/moving_mean:FB
@
_user_specified_name(&batch_normalization_16/moving_variance:1-
+
_user_specified_nameconv2d_105/kernel:/ +
)
_user_specified_nameconv2d_105/bias:<!8
6
_user_specified_namebatch_normalization_17/gamma:;"7
5
_user_specified_namebatch_normalization_17/beta:B#>
<
_user_specified_name$"batch_normalization_17/moving_mean:F$B
@
_user_specified_name(&batch_normalization_17/moving_variance:1%-
+
_user_specified_nameconv2d_106/kernel:/&+
)
_user_specified_nameconv2d_106/bias:)'%
#
_user_specified_name	iteration:-()
'
_user_specified_namelearning_rate:8)4
2
_user_specified_nameAdam/m/conv2d_100/kernel:8*4
2
_user_specified_nameAdam/v/conv2d_100/kernel:6+2
0
_user_specified_nameAdam/m/conv2d_100/bias:6,2
0
_user_specified_nameAdam/v/conv2d_100/bias:C-?
=
_user_specified_name%#Adam/m/batch_normalization_12/gamma:C.?
=
_user_specified_name%#Adam/v/batch_normalization_12/gamma:B/>
<
_user_specified_name$"Adam/m/batch_normalization_12/beta:B0>
<
_user_specified_name$"Adam/v/batch_normalization_12/beta:814
2
_user_specified_nameAdam/m/conv2d_101/kernel:824
2
_user_specified_nameAdam/v/conv2d_101/kernel:632
0
_user_specified_nameAdam/m/conv2d_101/bias:642
0
_user_specified_nameAdam/v/conv2d_101/bias:C5?
=
_user_specified_name%#Adam/m/batch_normalization_13/gamma:C6?
=
_user_specified_name%#Adam/v/batch_normalization_13/gamma:B7>
<
_user_specified_name$"Adam/m/batch_normalization_13/beta:B8>
<
_user_specified_name$"Adam/v/batch_normalization_13/beta:894
2
_user_specified_nameAdam/m/conv2d_102/kernel:8:4
2
_user_specified_nameAdam/v/conv2d_102/kernel:6;2
0
_user_specified_nameAdam/m/conv2d_102/bias:6<2
0
_user_specified_nameAdam/v/conv2d_102/bias:C=?
=
_user_specified_name%#Adam/m/batch_normalization_14/gamma:C>?
=
_user_specified_name%#Adam/v/batch_normalization_14/gamma:B?>
<
_user_specified_name$"Adam/m/batch_normalization_14/beta:B@>
<
_user_specified_name$"Adam/v/batch_normalization_14/beta:8A4
2
_user_specified_nameAdam/m/conv2d_103/kernel:8B4
2
_user_specified_nameAdam/v/conv2d_103/kernel:6C2
0
_user_specified_nameAdam/m/conv2d_103/bias:6D2
0
_user_specified_nameAdam/v/conv2d_103/bias:CE?
=
_user_specified_name%#Adam/m/batch_normalization_15/gamma:CF?
=
_user_specified_name%#Adam/v/batch_normalization_15/gamma:BG>
<
_user_specified_name$"Adam/m/batch_normalization_15/beta:BH>
<
_user_specified_name$"Adam/v/batch_normalization_15/beta:8I4
2
_user_specified_nameAdam/m/conv2d_104/kernel:8J4
2
_user_specified_nameAdam/v/conv2d_104/kernel:6K2
0
_user_specified_nameAdam/m/conv2d_104/bias:6L2
0
_user_specified_nameAdam/v/conv2d_104/bias:CM?
=
_user_specified_name%#Adam/m/batch_normalization_16/gamma:CN?
=
_user_specified_name%#Adam/v/batch_normalization_16/gamma:BO>
<
_user_specified_name$"Adam/m/batch_normalization_16/beta:BP>
<
_user_specified_name$"Adam/v/batch_normalization_16/beta:8Q4
2
_user_specified_nameAdam/m/conv2d_105/kernel:8R4
2
_user_specified_nameAdam/v/conv2d_105/kernel:6S2
0
_user_specified_nameAdam/m/conv2d_105/bias:6T2
0
_user_specified_nameAdam/v/conv2d_105/bias:CU?
=
_user_specified_name%#Adam/m/batch_normalization_17/gamma:CV?
=
_user_specified_name%#Adam/v/batch_normalization_17/gamma:BW>
<
_user_specified_name$"Adam/m/batch_normalization_17/beta:BX>
<
_user_specified_name$"Adam/v/batch_normalization_17/beta:8Y4
2
_user_specified_nameAdam/m/conv2d_106/kernel:8Z4
2
_user_specified_nameAdam/v/conv2d_106/kernel:6[2
0
_user_specified_nameAdam/m/conv2d_106/bias:6\2
0
_user_specified_nameAdam/v/conv2d_106/bias:%]!

_user_specified_nametotal:%^!

_user_specified_namecount:=_9

_output_shapes
: 

_user_specified_nameConst

Ц
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4709819

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
­
L
$__inference__update_step_xla_4655188
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable

g
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4709966

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:џџџџџџџџџ *
alpha%
з#<h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
в

S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4709693

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

L
0__inference_leaky_re_lu_93_layer_call_fn_4712153

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4710476z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
т
Ђ
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711831

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
в
L
0__inference_leaky_re_lu_90_layer_call_fn_4711836

inputs
identityТ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4709966i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:џџџџџџџџџ :X T
0
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
п


G__inference_conv2d_100_layer_call_and_return_conditional_losses_4711567

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ@ h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ@ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ
Ѓ
,__inference_conv2d_102_layer_call_fn_4711759

inputs"
unknown:@
	unknown_0:	
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_102_layer_call_and_return_conditional_losses_4709947x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ @
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711753:'#
!
_user_specified_name	4711755


г
8__inference_batch_normalization_13_layer_call_fn_4711681

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4709747
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711671:'#
!
_user_specified_name	4711673:'#
!
_user_specified_name	4711675:'#
!
_user_specified_name	4711677
Ё
Ё
,__inference_conv2d_101_layer_call_fn_4711658

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ @@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_101_layer_call_and_return_conditional_losses_4709916w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ @@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ @ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711652:'#
!
_user_specified_name	4711654
 

з
8__inference_batch_normalization_14_layer_call_fn_4711795

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4709837
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711785:'#
!
_user_specified_name	4711787:'#
!
_user_specified_name	4711789:'#
!
_user_specified_name	4711791
љu
у
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711478

inputsC
)conv2d_100_conv2d_readvariableop_resource: 8
*conv2d_100_biasadd_readvariableop_resource: <
.batch_normalization_12_readvariableop_resource: >
0batch_normalization_12_readvariableop_1_resource: M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_101_conv2d_readvariableop_resource: @8
*conv2d_101_biasadd_readvariableop_resource:@<
.batch_normalization_13_readvariableop_resource:@>
0batch_normalization_13_readvariableop_1_resource:@M
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@D
)conv2d_102_conv2d_readvariableop_resource:@9
*conv2d_102_biasadd_readvariableop_resource:	=
.batch_normalization_14_readvariableop_resource:	?
0batch_normalization_14_readvariableop_1_resource:	N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	
identityЂ%batch_normalization_12/AssignNewValueЂ'batch_normalization_12/AssignNewValue_1Ђ6batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_12/ReadVariableOpЂ'batch_normalization_12/ReadVariableOp_1Ђ%batch_normalization_13/AssignNewValueЂ'batch_normalization_13/AssignNewValue_1Ђ6batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_13/ReadVariableOpЂ'batch_normalization_13/ReadVariableOp_1Ђ%batch_normalization_14/AssignNewValueЂ'batch_normalization_14/AssignNewValue_1Ђ6batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_14/ReadVariableOpЂ'batch_normalization_14/ReadVariableOp_1Ђ!conv2d_100/BiasAdd/ReadVariableOpЂ conv2d_100/Conv2D/ReadVariableOpЂ!conv2d_101/BiasAdd/ReadVariableOpЂ conv2d_101/Conv2D/ReadVariableOpЂ!conv2d_102/BiasAdd/ReadVariableOpЂ conv2d_102/Conv2D/ReadVariableOp
 conv2d_100/Conv2D/ReadVariableOpReadVariableOp)conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0С
conv2d_100/Conv2DConv2Dinputs(conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

!conv2d_100/BiasAdd/ReadVariableOpReadVariableOp*conv2d_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
conv2d_100/BiasAddBiasAddconv2d_100/Conv2D:output:0)conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
: *
dtype0В
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ж
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0о
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_100/BiasAdd:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_12/AssignNewValueAssignVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource4batch_normalization_12/FusedBatchNormV3:batch_mean:07^batch_normalization_12/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_12/AssignNewValue_1AssignVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_12/FusedBatchNormV3:batch_variance:09^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ѕ
leaky_re_lu_88/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<Щ
max_pooling2d_44/MaxPoolMaxPool&leaky_re_lu_88/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize
*
paddingSAME*
strides

 conv2d_101/Conv2D/ReadVariableOpReadVariableOp)conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0м
conv2d_101/Conv2DConv2D!max_pooling2d_44/MaxPool:output:0(conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides

!conv2d_101/BiasAdd/ReadVariableOpReadVariableOp*conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
conv2d_101/BiasAddBiasAddconv2d_101/Conv2D:output:0)conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0о
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_101/BiasAdd:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_13/AssignNewValueAssignVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource4batch_normalization_13/FusedBatchNormV3:batch_mean:07^batch_normalization_13/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_13/AssignNewValue_1AssignVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_13/FusedBatchNormV3:batch_variance:09^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ѕ
leaky_re_lu_89/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<Щ
max_pooling2d_45/MaxPoolMaxPool&leaky_re_lu_89/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize
*
paddingSAME*
strides

 conv2d_102/Conv2D/ReadVariableOpReadVariableOp)conv2d_102_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0н
conv2d_102/Conv2DConv2D!max_pooling2d_45/MaxPool:output:0(conv2d_102/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides

!conv2d_102/BiasAdd/ReadVariableOpReadVariableOp*conv2d_102_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Б
conv2d_102/BiasAddBiasAddconv2d_102/Conv2D:output:0)conv2d_102/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0у
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_102/BiasAdd:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_14/AssignNewValueAssignVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource4batch_normalization_14/FusedBatchNormV3:batch_mean:07^batch_normalization_14/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_14/AssignNewValue_1AssignVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_14/FusedBatchNormV3:batch_variance:09^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(І
leaky_re_lu_90/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<Ъ
max_pooling2d_46/MaxPoolMaxPool&leaky_re_lu_90/LeakyRelu:activations:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides

IdentityIdentity!max_pooling2d_46/MaxPool:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџП
NoOpNoOp&^batch_normalization_12/AssignNewValue(^batch_normalization_12/AssignNewValue_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_1&^batch_normalization_13/AssignNewValue(^batch_normalization_13/AssignNewValue_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_1&^batch_normalization_14/AssignNewValue(^batch_normalization_14/AssignNewValue_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1"^conv2d_100/BiasAdd/ReadVariableOp!^conv2d_100/Conv2D/ReadVariableOp"^conv2d_101/BiasAdd/ReadVariableOp!^conv2d_101/Conv2D/ReadVariableOp"^conv2d_102/BiasAdd/ReadVariableOp!^conv2d_102/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:: : : : : : : : : : : : : : : : : : 2N
%batch_normalization_12/AssignNewValue%batch_normalization_12/AssignNewValue2R
'batch_normalization_12/AssignNewValue_1'batch_normalization_12/AssignNewValue_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12N
%batch_normalization_13/AssignNewValue%batch_normalization_13/AssignNewValue2R
'batch_normalization_13/AssignNewValue_1'batch_normalization_13/AssignNewValue_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12N
%batch_normalization_14/AssignNewValue%batch_normalization_14/AssignNewValue2R
'batch_normalization_14/AssignNewValue_1'batch_normalization_14/AssignNewValue_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12F
!conv2d_100/BiasAdd/ReadVariableOp!conv2d_100/BiasAdd/ReadVariableOp2D
 conv2d_100/Conv2D/ReadVariableOp conv2d_100/Conv2D/ReadVariableOp2F
!conv2d_101/BiasAdd/ReadVariableOp!conv2d_101/BiasAdd/ReadVariableOp2D
 conv2d_101/Conv2D/ReadVariableOp conv2d_101/Conv2D/ReadVariableOp2F
!conv2d_102/BiasAdd/ReadVariableOp!conv2d_102/BiasAdd/ReadVariableOp2D
 conv2d_102/Conv2D/ReadVariableOp conv2d_102/Conv2D/ReadVariableOp:@ <

_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
,

K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710998
input_1/
sequential_32_4710919: #
sequential_32_4710921: #
sequential_32_4710923: #
sequential_32_4710925: #
sequential_32_4710927: #
sequential_32_4710929: /
sequential_32_4710931: @#
sequential_32_4710933:@#
sequential_32_4710935:@#
sequential_32_4710937:@#
sequential_32_4710939:@#
sequential_32_4710941:@0
sequential_32_4710943:@$
sequential_32_4710945:	$
sequential_32_4710947:	$
sequential_32_4710949:	$
sequential_32_4710951:	$
sequential_32_4710953:	1
sequential_33_4710956:$
sequential_33_4710958:	$
sequential_33_4710960:	$
sequential_33_4710962:	$
sequential_33_4710964:	$
sequential_33_4710966:	0
sequential_33_4710968:@#
sequential_33_4710970:@#
sequential_33_4710972:@#
sequential_33_4710974:@#
sequential_33_4710976:@#
sequential_33_4710978:@/
sequential_33_4710980:@ #
sequential_33_4710982: #
sequential_33_4710984: #
sequential_33_4710986: #
sequential_33_4710988: #
sequential_33_4710990: /
sequential_33_4710992: #
sequential_33_4710994:
identityЂ%sequential_32/StatefulPartitionedCallЂ%sequential_33/StatefulPartitionedCallЖ
%sequential_32/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_32_4710919sequential_32_4710921sequential_32_4710923sequential_32_4710925sequential_32_4710927sequential_32_4710929sequential_32_4710931sequential_32_4710933sequential_32_4710935sequential_32_4710937sequential_32_4710939sequential_32_4710941sequential_32_4710943sequential_32_4710945sequential_32_4710947sequential_32_4710949sequential_32_4710951sequential_32_4710953*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710918
%sequential_33/StatefulPartitionedCallStatefulPartitionedCall.sequential_32/StatefulPartitionedCall:output:0sequential_33_4710956sequential_33_4710958sequential_33_4710960sequential_33_4710962sequential_33_4710964sequential_33_4710966sequential_33_4710968sequential_33_4710970sequential_33_4710972sequential_33_4710974sequential_33_4710976sequential_33_4710978sequential_33_4710980sequential_33_4710982sequential_33_4710984sequential_33_4710986sequential_33_4710988sequential_33_4710990sequential_33_4710992sequential_33_4710994* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710553
IdentityIdentity.sequential_33/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџr
NoOpNoOp&^sequential_32/StatefulPartitionedCall&^sequential_33/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_32/StatefulPartitionedCall%sequential_32/StatefulPartitionedCall2N
%sequential_33/StatefulPartitionedCall%sequential_33/StatefulPartitionedCall:A =

_output_shapes
:
!
_user_specified_name	input_1:'#
!
_user_specified_name	4710919:'#
!
_user_specified_name	4710921:'#
!
_user_specified_name	4710923:'#
!
_user_specified_name	4710925:'#
!
_user_specified_name	4710927:'#
!
_user_specified_name	4710929:'#
!
_user_specified_name	4710931:'#
!
_user_specified_name	4710933:'	#
!
_user_specified_name	4710935:'
#
!
_user_specified_name	4710937:'#
!
_user_specified_name	4710939:'#
!
_user_specified_name	4710941:'#
!
_user_specified_name	4710943:'#
!
_user_specified_name	4710945:'#
!
_user_specified_name	4710947:'#
!
_user_specified_name	4710949:'#
!
_user_specified_name	4710951:'#
!
_user_specified_name	4710953:'#
!
_user_specified_name	4710956:'#
!
_user_specified_name	4710958:'#
!
_user_specified_name	4710960:'#
!
_user_specified_name	4710962:'#
!
_user_specified_name	4710964:'#
!
_user_specified_name	4710966:'#
!
_user_specified_name	4710968:'#
!
_user_specified_name	4710970:'#
!
_user_specified_name	4710972:'#
!
_user_specified_name	4710974:'#
!
_user_specified_name	4710976:'#
!
_user_specified_name	4710978:'#
!
_user_specified_name	4710980:' #
!
_user_specified_name	4710982:'!#
!
_user_specified_name	4710984:'"#
!
_user_specified_name	4710986:'##
!
_user_specified_name	4710988:'$#
!
_user_specified_name	4710990:'%#
!
_user_specified_name	4710992:'&#
!
_user_specified_name	4710994
Ђ

G__inference_conv2d_106_layer_call_and_return_conditional_losses_4710489

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџp
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџt
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

Т
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711712

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѓ
i
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4710378

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:Е
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
half_pixel_centers(
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Э
g
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4712158

inputs
identityq
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ :i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4711649

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
 

з
8__inference_batch_normalization_15_layer_call_fn_4711896

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4710182
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711886:'#
!
_user_specified_name	4711888:'#
!
_user_specified_name	4711890:'#
!
_user_specified_name	4711892


г
8__inference_batch_normalization_12_layer_call_fn_4711593

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4709693
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711583:'#
!
_user_specified_name	4711585:'#
!
_user_specified_name	4711587:'#
!
_user_specified_name	4711589
п
	
%__inference_signature_wrapper_4711326
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	%

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@ 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*H
_read_only_resource_inputs*
(&	
 !"#$%&*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_4709657
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:A =

_output_shapes
:
!
_user_specified_name	input_1:'#
!
_user_specified_name	4711248:'#
!
_user_specified_name	4711250:'#
!
_user_specified_name	4711252:'#
!
_user_specified_name	4711254:'#
!
_user_specified_name	4711256:'#
!
_user_specified_name	4711258:'#
!
_user_specified_name	4711260:'#
!
_user_specified_name	4711262:'	#
!
_user_specified_name	4711264:'
#
!
_user_specified_name	4711266:'#
!
_user_specified_name	4711268:'#
!
_user_specified_name	4711270:'#
!
_user_specified_name	4711272:'#
!
_user_specified_name	4711274:'#
!
_user_specified_name	4711276:'#
!
_user_specified_name	4711278:'#
!
_user_specified_name	4711280:'#
!
_user_specified_name	4711282:'#
!
_user_specified_name	4711284:'#
!
_user_specified_name	4711286:'#
!
_user_specified_name	4711288:'#
!
_user_specified_name	4711290:'#
!
_user_specified_name	4711292:'#
!
_user_specified_name	4711294:'#
!
_user_specified_name	4711296:'#
!
_user_specified_name	4711298:'#
!
_user_specified_name	4711300:'#
!
_user_specified_name	4711302:'#
!
_user_specified_name	4711304:'#
!
_user_specified_name	4711306:'#
!
_user_specified_name	4711308:' #
!
_user_specified_name	4711310:'!#
!
_user_specified_name	4711312:'"#
!
_user_specified_name	4711314:'##
!
_user_specified_name	4711316:'$#
!
_user_specified_name	4711318:'%#
!
_user_specified_name	4711320:'&#
!
_user_specified_name	4711322
э
Ђ
,__inference_conv2d_104_layer_call_fn_4711968

inputs"
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_104_layer_call_and_return_conditional_losses_4710426
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711962:'#
!
_user_specified_name	4711964
с


G__inference_conv2d_102_layer_call_and_return_conditional_losses_4711769

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ *
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

Т
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4709675

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е

G__inference_conv2d_105_layer_call_and_return_conditional_losses_4712086

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
л
/__inference_sequential_32_layer_call_fn_4710063
input_17!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	
identityЂStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinput_17unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_32_layer_call_and_return_conditional_losses_4709970x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:џџџџџџџџџ@: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
input_17:'#
!
_user_specified_name	4710025:'#
!
_user_specified_name	4710027:'#
!
_user_specified_name	4710029:'#
!
_user_specified_name	4710031:'#
!
_user_specified_name	4710033:'#
!
_user_specified_name	4710035:'#
!
_user_specified_name	4710037:'#
!
_user_specified_name	4710039:'	#
!
_user_specified_name	4710041:'
#
!
_user_specified_name	4710043:'#
!
_user_specified_name	4710045:'#
!
_user_specified_name	4710047:'#
!
_user_specified_name	4710049:'#
!
_user_specified_name	4710051:'#
!
_user_specified_name	4710053:'#
!
_user_specified_name	4710055:'#
!
_user_specified_name	4710057:'#
!
_user_specified_name	4710059
ѕH


J__inference_sequential_33_layer_call_and_return_conditional_losses_4710496
conv2d_103_input.
conv2d_103_4710396:!
conv2d_103_4710398:	-
batch_normalization_15_4710401:	-
batch_normalization_15_4710403:	-
batch_normalization_15_4710405:	-
batch_normalization_15_4710407:	-
conv2d_104_4710427:@ 
conv2d_104_4710429:@,
batch_normalization_16_4710432:@,
batch_normalization_16_4710434:@,
batch_normalization_16_4710436:@,
batch_normalization_16_4710438:@,
conv2d_105_4710458:@  
conv2d_105_4710460: ,
batch_normalization_17_4710463: ,
batch_normalization_17_4710465: ,
batch_normalization_17_4710467: ,
batch_normalization_17_4710469: ,
conv2d_106_4710490:  
conv2d_106_4710492:
identityЂ.batch_normalization_15/StatefulPartitionedCallЂ.batch_normalization_16/StatefulPartitionedCallЂ.batch_normalization_17/StatefulPartitionedCallЂ"conv2d_103/StatefulPartitionedCallЂ"conv2d_104/StatefulPartitionedCallЂ"conv2d_105/StatefulPartitionedCallЂ"conv2d_106/StatefulPartitionedCallЃ
"conv2d_103/StatefulPartitionedCallStatefulPartitionedCallconv2d_103_inputconv2d_103_4710396conv2d_103_4710398*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_103_layer_call_and_return_conditional_losses_4710395А
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall+conv2d_103/StatefulPartitionedCall:output:0batch_normalization_15_4710401batch_normalization_15_4710403batch_normalization_15_4710405batch_normalization_15_4710407*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4710164
leaky_re_lu_91/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4710414
 up_sampling2d_44/PartitionedCallPartitionedCall'leaky_re_lu_91/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4710220Л
"conv2d_104/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_44/PartitionedCall:output:0conv2d_104_4710427conv2d_104_4710429*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_104_layer_call_and_return_conditional_losses_4710426Џ
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall+conv2d_104/StatefulPartitionedCall:output:0batch_normalization_16_4710432batch_normalization_16_4710434batch_normalization_16_4710436batch_normalization_16_4710438*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4710243
leaky_re_lu_92/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4710445
 up_sampling2d_45/PartitionedCallPartitionedCall'leaky_re_lu_92/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4710299Л
"conv2d_105/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_45/PartitionedCall:output:0conv2d_105_4710458conv2d_105_4710460*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_105_layer_call_and_return_conditional_losses_4710457Џ
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall+conv2d_105/StatefulPartitionedCall:output:0batch_normalization_17_4710463batch_normalization_17_4710465batch_normalization_17_4710467batch_normalization_17_4710469*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4710322
leaky_re_lu_93/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4710476
 up_sampling2d_46/PartitionedCallPartitionedCall'leaky_re_lu_93/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4710378Л
"conv2d_106/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_46/PartitionedCall:output:0conv2d_106_4710490conv2d_106_4710492*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_106_layer_call_and_return_conditional_losses_4710489
IdentityIdentity+conv2d_106/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
NoOpNoOp/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall#^conv2d_103/StatefulPartitionedCall#^conv2d_104/StatefulPartitionedCall#^conv2d_105/StatefulPartitionedCall#^conv2d_106/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2H
"conv2d_103/StatefulPartitionedCall"conv2d_103/StatefulPartitionedCall2H
"conv2d_104/StatefulPartitionedCall"conv2d_104/StatefulPartitionedCall2H
"conv2d_105/StatefulPartitionedCall"conv2d_105/StatefulPartitionedCall2H
"conv2d_106/StatefulPartitionedCall"conv2d_106/StatefulPartitionedCall:t p
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
*
_user_specified_nameconv2d_103_input:'#
!
_user_specified_name	4710396:'#
!
_user_specified_name	4710398:'#
!
_user_specified_name	4710401:'#
!
_user_specified_name	4710403:'#
!
_user_specified_name	4710405:'#
!
_user_specified_name	4710407:'#
!
_user_specified_name	4710427:'#
!
_user_specified_name	4710429:'	#
!
_user_specified_name	4710432:'
#
!
_user_specified_name	4710434:'#
!
_user_specified_name	4710436:'#
!
_user_specified_name	4710438:'#
!
_user_specified_name	4710458:'#
!
_user_specified_name	4710460:'#
!
_user_specified_name	4710463:'#
!
_user_specified_name	4710465:'#
!
_user_specified_name	4710467:'#
!
_user_specified_name	4710469:'#
!
_user_specified_name	4710490:'#
!
_user_specified_name	4710492

Т
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712130

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

i
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4711851

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_44_layer_call_fn_4711644

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4709724
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Й

G__inference_conv2d_104_layer_call_and_return_conditional_losses_4710426

inputs9
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ћ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
А
M
$__inference__update_step_xla_4655238
gradient
variable:	*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:: *
	_noinline(:E A

_output_shapes	
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
 
	
0__inference_autoencoder_16_layer_call_fn_4711079
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	%

unknown_23:@

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@ 

unknown_30: 

unknown_31: 

unknown_32: 

unknown_33: 

unknown_34: $

unknown_35: 

unknown_36:
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*<
_read_only_resource_inputs
	
 !"%&*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710846
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:A =

_output_shapes
:
!
_user_specified_name	input_1:'#
!
_user_specified_name	4711001:'#
!
_user_specified_name	4711003:'#
!
_user_specified_name	4711005:'#
!
_user_specified_name	4711007:'#
!
_user_specified_name	4711009:'#
!
_user_specified_name	4711011:'#
!
_user_specified_name	4711013:'#
!
_user_specified_name	4711015:'	#
!
_user_specified_name	4711017:'
#
!
_user_specified_name	4711019:'#
!
_user_specified_name	4711021:'#
!
_user_specified_name	4711023:'#
!
_user_specified_name	4711025:'#
!
_user_specified_name	4711027:'#
!
_user_specified_name	4711029:'#
!
_user_specified_name	4711031:'#
!
_user_specified_name	4711033:'#
!
_user_specified_name	4711035:'#
!
_user_specified_name	4711037:'#
!
_user_specified_name	4711039:'#
!
_user_specified_name	4711041:'#
!
_user_specified_name	4711043:'#
!
_user_specified_name	4711045:'#
!
_user_specified_name	4711047:'#
!
_user_specified_name	4711049:'#
!
_user_specified_name	4711051:'#
!
_user_specified_name	4711053:'#
!
_user_specified_name	4711055:'#
!
_user_specified_name	4711057:'#
!
_user_specified_name	4711059:'#
!
_user_specified_name	4711061:' #
!
_user_specified_name	4711063:'!#
!
_user_specified_name	4711065:'"#
!
_user_specified_name	4711067:'##
!
_user_specified_name	4711069:'$#
!
_user_specified_name	4711071:'%#
!
_user_specified_name	4711073:'&#
!
_user_specified_name	4711075
Э
g
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4710445

inputs
identityq
	LeakyRelu	LeakyReluinputs*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<y
IdentityIdentityLeakyRelu:activations:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ж
й
/__inference_sequential_32_layer_call_fn_4711367

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	
identityЂStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710766
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:@ <

_output_shapes
:
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711329:'#
!
_user_specified_name	4711331:'#
!
_user_specified_name	4711333:'#
!
_user_specified_name	4711335:'#
!
_user_specified_name	4711337:'#
!
_user_specified_name	4711339:'#
!
_user_specified_name	4711341:'#
!
_user_specified_name	4711343:'	#
!
_user_specified_name	4711345:'
#
!
_user_specified_name	4711347:'#
!
_user_specified_name	4711349:'#
!
_user_specified_name	4711351:'#
!
_user_specified_name	4711353:'#
!
_user_specified_name	4711355:'#
!
_user_specified_name	4711357:'#
!
_user_specified_name	4711359:'#
!
_user_specified_name	4711361:'#
!
_user_specified_name	4711363


з
8__inference_batch_normalization_14_layer_call_fn_4711782

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4709819
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:'#
!
_user_specified_name	4711772:'#
!
_user_specified_name	4711774:'#
!
_user_specified_name	4711776:'#
!
_user_specified_name	4711778
ъ
Ё
,__inference_conv2d_105_layer_call_fn_4712076

inputs!
unknown:@ 
	unknown_0: 
identityЂStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_conv2d_105_layer_call_and_return_conditional_losses_4710457
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs:'#
!
_user_specified_name	4712070:'#
!
_user_specified_name	4712072
ћ_
э
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711548

inputsC
)conv2d_100_conv2d_readvariableop_resource: 8
*conv2d_100_biasadd_readvariableop_resource: <
.batch_normalization_12_readvariableop_resource: >
0batch_normalization_12_readvariableop_1_resource: M
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource: C
)conv2d_101_conv2d_readvariableop_resource: @8
*conv2d_101_biasadd_readvariableop_resource:@<
.batch_normalization_13_readvariableop_resource:@>
0batch_normalization_13_readvariableop_1_resource:@M
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:@D
)conv2d_102_conv2d_readvariableop_resource:@9
*conv2d_102_biasadd_readvariableop_resource:	=
.batch_normalization_14_readvariableop_resource:	?
0batch_normalization_14_readvariableop_1_resource:	N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	
identityЂ6batch_normalization_12/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_12/ReadVariableOpЂ'batch_normalization_12/ReadVariableOp_1Ђ6batch_normalization_13/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_13/ReadVariableOpЂ'batch_normalization_13/ReadVariableOp_1Ђ6batch_normalization_14/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_14/ReadVariableOpЂ'batch_normalization_14/ReadVariableOp_1Ђ!conv2d_100/BiasAdd/ReadVariableOpЂ conv2d_100/Conv2D/ReadVariableOpЂ!conv2d_101/BiasAdd/ReadVariableOpЂ conv2d_101/Conv2D/ReadVariableOpЂ!conv2d_102/BiasAdd/ReadVariableOpЂ conv2d_102/Conv2D/ReadVariableOp
 conv2d_100/Conv2D/ReadVariableOpReadVariableOp)conv2d_100_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0С
conv2d_100/Conv2DConv2Dinputs(conv2d_100/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
paddingSAME*
strides

!conv2d_100/BiasAdd/ReadVariableOpReadVariableOp*conv2d_100_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0А
conv2d_100/BiasAddBiasAddconv2d_100/Conv2D:output:0)conv2d_100/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes
: *
dtype0В
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ж
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0а
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_100/BiasAdd:output:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( Ѕ
leaky_re_lu_88/LeakyRelu	LeakyRelu+batch_normalization_12/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
alpha%
з#<Щ
max_pooling2d_44/MaxPoolMaxPool&leaky_re_lu_88/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *
ksize
*
paddingSAME*
strides

 conv2d_101/Conv2D/ReadVariableOpReadVariableOp)conv2d_101_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0м
conv2d_101/Conv2DConv2D!max_pooling2d_44/MaxPool:output:0(conv2d_101/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
paddingSAME*
strides

!conv2d_101/BiasAdd/ReadVariableOpReadVariableOp*conv2d_101_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0А
conv2d_101/BiasAddBiasAddconv2d_101/Conv2D:output:0)conv2d_101/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0а
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_101/BiasAdd:output:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( Ѕ
leaky_re_lu_89/LeakyRelu	LeakyRelu+batch_normalization_13/FusedBatchNormV3:y:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
alpha%
з#<Щ
max_pooling2d_45/MaxPoolMaxPool&leaky_re_lu_89/LeakyRelu:activations:0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*
ksize
*
paddingSAME*
strides

 conv2d_102/Conv2D/ReadVariableOpReadVariableOp)conv2d_102_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0н
conv2d_102/Conv2DConv2D!max_pooling2d_45/MaxPool:output:0(conv2d_102/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides

!conv2d_102/BiasAdd/ReadVariableOpReadVariableOp*conv2d_102_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Б
conv2d_102/BiasAddBiasAddconv2d_102/Conv2D:output:0)conv2d_102/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0е
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_102/BiasAdd:output:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( І
leaky_re_lu_90/LeakyRelu	LeakyRelu+batch_normalization_14/FusedBatchNormV3:y:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
alpha%
з#<Ъ
max_pooling2d_46/MaxPoolMaxPool&leaky_re_lu_90/LeakyRelu:activations:0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides

IdentityIdentity!max_pooling2d_46/MaxPool:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџЩ
NoOpNoOp7^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1"^conv2d_100/BiasAdd/ReadVariableOp!^conv2d_100/Conv2D/ReadVariableOp"^conv2d_101/BiasAdd/ReadVariableOp!^conv2d_101/Conv2D/ReadVariableOp"^conv2d_102/BiasAdd/ReadVariableOp!^conv2d_102/Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:: : : : : : : : : : : : : : : : : : 2p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12F
!conv2d_100/BiasAdd/ReadVariableOp!conv2d_100/BiasAdd/ReadVariableOp2D
 conv2d_100/Conv2D/ReadVariableOp conv2d_100/Conv2D/ReadVariableOp2F
!conv2d_101/BiasAdd/ReadVariableOp!conv2d_101/BiasAdd/ReadVariableOp2D
 conv2d_101/Conv2D/ReadVariableOp conv2d_101/Conv2D/ReadVariableOp2F
!conv2d_102/BiasAdd/ReadVariableOp!conv2d_102/BiasAdd/ReadVariableOp2D
 conv2d_102/Conv2D/ReadVariableOp conv2d_102/Conv2D/ReadVariableOp:@ <

_output_shapes
:
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Р

G__inference_conv2d_103_layer_call_and_return_conditional_losses_4711870

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ќ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџz
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource

i
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4709724

inputs
identityЁ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs"ЇL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ж
serving_defaultЂ
,
input_1!
serving_default_input_1:0V
output_1J
StatefulPartitionedCall:0+џџџџџџџџџџџџџџџџџџџџџџџџџџџtensorflow/serving/predict:ЛЩ
ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
encoder
	decoder

	optimizer

signatures"
_tf_keras_model
Ц
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21
"22
#23
$24
%25
&26
'27
(28
)29
*30
+31
,32
-33
.34
/35
036
137"
trackable_list_wrapper
ц
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
!15
$16
%17
&18
'19
*20
+21
,22
-23
024
125"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
г
7trace_0
8trace_12
0__inference_autoencoder_16_layer_call_fn_4711079
0__inference_autoencoder_16_layer_call_fn_4711160Е
ЎВЊ
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 z7trace_0z8trace_1

9trace_0
:trace_12в
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710846
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710998Е
ЎВЊ
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining%
kwonlydefaultsЊ

trainingp 
annotationsЊ *
 z9trace_0z:trace_1
ЭBЪ
"__inference__wrapped_model_4709657input_1"
В
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ф
;layer_with_weights-0
;layer-0
<layer_with_weights-1
<layer-1
=layer-2
>layer-3
?layer_with_weights-2
?layer-4
@layer_with_weights-3
@layer-5
Alayer-6
Blayer-7
Clayer_with_weights-4
Clayer-8
Dlayer_with_weights-5
Dlayer-9
Elayer-10
Flayer-11
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_sequential

Mlayer_with_weights-0
Mlayer-0
Nlayer_with_weights-1
Nlayer-1
Olayer-2
Player-3
Qlayer_with_weights-2
Qlayer-4
Rlayer_with_weights-3
Rlayer-5
Slayer-6
Tlayer-7
Ulayer_with_weights-4
Ulayer-8
Vlayer_with_weights-5
Vlayer-9
Wlayer-10
Xlayer-11
Ylayer_with_weights-6
Ylayer-12
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_sequential

`
_variables
a_iterations
b_learning_rate
c_index_dict
d
_momentums
e_velocities
f_update_step_xla"
experimentalOptimizer
,
gserving_default"
signature_map
+:) 2conv2d_100/kernel
: 2conv2d_100/bias
*:( 2batch_normalization_12/gamma
):' 2batch_normalization_12/beta
2:0  (2"batch_normalization_12/moving_mean
6:4  (2&batch_normalization_12/moving_variance
+:) @2conv2d_101/kernel
:@2conv2d_101/bias
*:(@2batch_normalization_13/gamma
):'@2batch_normalization_13/beta
2:0@ (2"batch_normalization_13/moving_mean
6:4@ (2&batch_normalization_13/moving_variance
,:*@2conv2d_102/kernel
:2conv2d_102/bias
+:)2batch_normalization_14/gamma
*:(2batch_normalization_14/beta
3:1 (2"batch_normalization_14/moving_mean
7:5 (2&batch_normalization_14/moving_variance
-:+2conv2d_103/kernel
:2conv2d_103/bias
+:)2batch_normalization_15/gamma
*:(2batch_normalization_15/beta
3:1 (2"batch_normalization_15/moving_mean
7:5 (2&batch_normalization_15/moving_variance
,:*@2conv2d_104/kernel
:@2conv2d_104/bias
*:(@2batch_normalization_16/gamma
):'@2batch_normalization_16/beta
2:0@ (2"batch_normalization_16/moving_mean
6:4@ (2&batch_normalization_16/moving_variance
+:)@ 2conv2d_105/kernel
: 2conv2d_105/bias
*:( 2batch_normalization_17/gamma
):' 2batch_normalization_17/beta
2:0  (2"batch_normalization_17/moving_mean
6:4  (2&batch_normalization_17/moving_variance
+:) 2conv2d_106/kernel
:2conv2d_106/bias
v
0
1
2
3
4
5
"6
#7
(8
)9
.10
/11"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
'
h0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
чBф
0__inference_autoencoder_16_layer_call_fn_4711079input_1"Є
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining
kwonlydefaults
 
annotationsЊ *
 
чBф
0__inference_autoencoder_16_layer_call_fn_4711160input_1"Є
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining
kwonlydefaults
 
annotationsЊ *
 
Bџ
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710846input_1"Є
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining
kwonlydefaults
 
annotationsЊ *
 
Bџ
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710998input_1"Є
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs

jtraining
kwonlydefaults
 
annotationsЊ *
 
н
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

kernel
bias
 o_jit_compiled_convolution_op"
_tf_keras_layer
ъ
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
vaxis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
Ѕ
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
Ј
}	variables
~trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

kernel
bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
	variables
trainable_variables
regularization_losses
 	keras_api
Ё__call__
+Ђ&call_and_return_all_conditional_losses

kernel
bias
!Ѓ_jit_compiled_convolution_op"
_tf_keras_layer
ё
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses
	Њaxis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
Ћ
Ћ	variables
Ќtrainable_variables
­regularization_losses
Ў	keras_api
Џ__call__
+А&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses"
_tf_keras_layer
І
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
я
Мtrace_0
Нtrace_1
Оtrace_2
Пtrace_32ќ
/__inference_sequential_32_layer_call_fn_4710063
/__inference_sequential_32_layer_call_fn_4710104
/__inference_sequential_32_layer_call_fn_4711367
/__inference_sequential_32_layer_call_fn_4711408Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zМtrace_0zНtrace_1zОtrace_2zПtrace_3
л
Рtrace_0
Сtrace_1
Тtrace_2
Уtrace_32ш
J__inference_sequential_32_layer_call_and_return_conditional_losses_4709970
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710022
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711478
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711548Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zРtrace_0zСtrace_1zТtrace_2zУtrace_3
ф
Ф	variables
Хtrainable_variables
Цregularization_losses
Ч	keras_api
Ш__call__
+Щ&call_and_return_all_conditional_losses

kernel
bias
!Ъ_jit_compiled_convolution_op"
_tf_keras_layer
ё
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
	бaxis
	 gamma
!beta
"moving_mean
#moving_variance"
_tf_keras_layer
Ћ
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
о	variables
пtrainable_variables
рregularization_losses
с	keras_api
т__call__
+у&call_and_return_all_conditional_losses

$kernel
%bias
!ф_jit_compiled_convolution_op"
_tf_keras_layer
ё
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses
	ыaxis
	&gamma
'beta
(moving_mean
)moving_variance"
_tf_keras_layer
Ћ
ь	variables
эtrainable_variables
юregularization_losses
я	keras_api
№__call__
+ё&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
ђ	variables
ѓtrainable_variables
єregularization_losses
ѕ	keras_api
і__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
ј	variables
љtrainable_variables
њregularization_losses
ћ	keras_api
ќ__call__
+§&call_and_return_all_conditional_losses

*kernel
+bias
!ў_jit_compiled_convolution_op"
_tf_keras_layer
ё
џ	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis
	,gamma
-beta
.moving_mean
/moving_variance"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

0kernel
1bias
!_jit_compiled_convolution_op"
_tf_keras_layer
Ж
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119"
trackable_list_wrapper

0
1
 2
!3
$4
%5
&6
'7
*8
+9
,10
-11
012
113"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
е
trace_0
trace_12
/__inference_sequential_33_layer_call_fn_4710598
/__inference_sequential_33_layer_call_fn_4710643Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

 trace_0
Ёtrace_12а
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710496
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710553Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z trace_0zЁtrace_1
ђ
a0
Ђ1
Ѓ2
Є3
Ѕ4
І5
Ї6
Ј7
Љ8
Њ9
Ћ10
Ќ11
­12
Ў13
Џ14
А15
Б16
В17
Г18
Д19
Е20
Ж21
З22
И23
Й24
К25
Л26
М27
Н28
О29
П30
Р31
С32
Т33
У34
Ф35
Х36
Ц37
Ч38
Ш39
Щ40
Ъ41
Ы42
Ь43
Э44
Ю45
Я46
а47
б48
в49
г50
д51
е52"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper

Ђ0
Є1
І2
Ј3
Њ4
Ќ5
Ў6
А7
В8
Д9
Ж10
И11
К12
М13
О14
Р15
Т16
Ф17
Ц18
Ш19
Ъ20
Ь21
Ю22
а23
в24
д25"
trackable_list_wrapper

Ѓ0
Ѕ1
Ї2
Љ3
Ћ4
­5
Џ6
Б7
Г8
Е9
З10
Й11
Л12
Н13
П14
С15
У16
Х17
Ч18
Щ19
Ы20
Э21
Я22
б23
г24
е25"
trackable_list_wrapper
б
жtrace_0
зtrace_1
иtrace_2
йtrace_3
кtrace_4
лtrace_5
мtrace_6
нtrace_7
оtrace_8
пtrace_9
рtrace_10
сtrace_112њ
$__inference__update_step_xla_4655183
$__inference__update_step_xla_4655188
$__inference__update_step_xla_4655193
$__inference__update_step_xla_4655198
$__inference__update_step_xla_4655203
$__inference__update_step_xla_4655208
$__inference__update_step_xla_4655213
$__inference__update_step_xla_4655218
$__inference__update_step_xla_4655223
$__inference__update_step_xla_4655228
$__inference__update_step_xla_4655233
$__inference__update_step_xla_4655238Џ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0zжtrace_0zзtrace_1zиtrace_2zйtrace_3zкtrace_4zлtrace_5zмtrace_6zнtrace_7zоtrace_8zпtrace_9zрtrace_10zсtrace_11
бBЮ
%__inference_signature_wrapper_4711326input_1"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs
	jinput_1
kwonlydefaults
 
annotationsЊ *
 
R
т	variables
у	keras_api

фtotal

хcount"
_tf_keras_metric
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
ш
ыtrace_02Щ
,__inference_conv2d_100_layer_call_fn_4711557
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zыtrace_0

ьtrace_02ф
G__inference_conv2d_100_layer_call_and_return_conditional_losses_4711567
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zьtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ч
ђtrace_0
ѓtrace_12Ќ
8__inference_batch_normalization_12_layer_call_fn_4711580
8__inference_batch_normalization_12_layer_call_fn_4711593Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zђtrace_0zѓtrace_1

єtrace_0
ѕtrace_12т
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711611
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711629Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zєtrace_0zѕtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
ь
ћtrace_02Э
0__inference_leaky_re_lu_88_layer_call_fn_4711634
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zћtrace_0

ќtrace_02ш
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4711639
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zќtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
}	variables
~trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
2__inference_max_pooling2d_44_layer_call_fn_4711644
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4711649
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ш
trace_02Щ
,__inference_conv2d_101_layer_call_fn_4711658
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ф
G__inference_conv2d_101_layer_call_and_return_conditional_losses_4711668
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ч
trace_0
trace_12Ќ
8__inference_batch_normalization_13_layer_call_fn_4711681
8__inference_batch_normalization_13_layer_call_fn_4711694Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12т
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711712
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711730Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ь
trace_02Э
0__inference_leaky_re_lu_89_layer_call_fn_4711735
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ш
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4711740
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ю
 trace_02Я
2__inference_max_pooling2d_45_layer_call_fn_4711745
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z trace_0

Ёtrace_02ъ
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4711750
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЁtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
	variables
trainable_variables
regularization_losses
Ё__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
ш
Їtrace_02Щ
,__inference_conv2d_102_layer_call_fn_4711759
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЇtrace_0

Јtrace_02ф
G__inference_conv2d_102_layer_call_and_return_conditional_losses_4711769
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЈtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Љnon_trainable_variables
Њlayers
Ћmetrics
 Ќlayer_regularization_losses
­layer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
ч
Ўtrace_0
Џtrace_12Ќ
8__inference_batch_normalization_14_layer_call_fn_4711782
8__inference_batch_normalization_14_layer_call_fn_4711795Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0zЏtrace_1

Аtrace_0
Бtrace_12т
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711813
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711831Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zАtrace_0zБtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Ћ	variables
Ќtrainable_variables
­regularization_losses
Џ__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
ь
Зtrace_02Э
0__inference_leaky_re_lu_90_layer_call_fn_4711836
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЗtrace_0

Иtrace_02ш
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4711841
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zИtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
ю
Оtrace_02Я
2__inference_max_pooling2d_46_layer_call_fn_4711846
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zОtrace_0

Пtrace_02ъ
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4711851
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zПtrace_0
J
0
1
2
3
4
5"
trackable_list_wrapper
v
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яBь
/__inference_sequential_32_layer_call_fn_4710063input_17"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
/__inference_sequential_32_layer_call_fn_4710104input_17"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
/__inference_sequential_32_layer_call_fn_4711367inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
/__inference_sequential_32_layer_call_fn_4711408inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_32_layer_call_and_return_conditional_losses_4709970input_17"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710022input_17"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711478inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711548inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Ф	variables
Хtrainable_variables
Цregularization_losses
Ш__call__
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
ш
Хtrace_02Щ
,__inference_conv2d_103_layer_call_fn_4711860
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zХtrace_0

Цtrace_02ф
G__inference_conv2d_103_layer_call_and_return_conditional_losses_4711870
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЦtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
 0
!1
"2
#3"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
ч
Ьtrace_0
Эtrace_12Ќ
8__inference_batch_normalization_15_layer_call_fn_4711883
8__inference_batch_normalization_15_layer_call_fn_4711896Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЬtrace_0zЭtrace_1

Юtrace_0
Яtrace_12т
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711914
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711932Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЮtrace_0zЯtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
ь
еtrace_02Э
0__inference_leaky_re_lu_91_layer_call_fn_4711937
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zеtrace_0

жtrace_02ш
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4711942
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zжtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
ю
мtrace_02Я
2__inference_up_sampling2d_44_layer_call_fn_4711947
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zмtrace_0

нtrace_02ъ
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4711959
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zнtrace_0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
о	variables
пtrainable_variables
рregularization_losses
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
ш
уtrace_02Щ
,__inference_conv2d_104_layer_call_fn_4711968
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zуtrace_0

фtrace_02ф
G__inference_conv2d_104_layer_call_and_return_conditional_losses_4711978
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zфtrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
&0
'1
(2
)3"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
ч
ъtrace_0
ыtrace_12Ќ
8__inference_batch_normalization_16_layer_call_fn_4711991
8__inference_batch_normalization_16_layer_call_fn_4712004Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zъtrace_0zыtrace_1

ьtrace_0
эtrace_12т
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712022
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712040Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zьtrace_0zэtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
ь	variables
эtrainable_variables
юregularization_losses
№__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
ь
ѓtrace_02Э
0__inference_leaky_re_lu_92_layer_call_fn_4712045
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zѓtrace_0

єtrace_02ш
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4712050
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zєtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
љlayer_metrics
ђ	variables
ѓtrainable_variables
єregularization_losses
і__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
ю
њtrace_02Я
2__inference_up_sampling2d_45_layer_call_fn_4712055
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zњtrace_0

ћtrace_02ъ
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4712067
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zћtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
ј	variables
љtrainable_variables
њregularization_losses
ќ__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
ш
trace_02Щ
,__inference_conv2d_105_layer_call_fn_4712076
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ф
G__inference_conv2d_105_layer_call_and_return_conditional_losses_4712086
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
џ	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ч
trace_0
trace_12Ќ
8__inference_batch_normalization_17_layer_call_fn_4712099
8__inference_batch_normalization_17_layer_call_fn_4712112Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12т
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712130
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712148Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ь
trace_02Э
0__inference_leaky_re_lu_93_layer_call_fn_4712153
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ш
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4712158
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ю
trace_02Я
2__inference_up_sampling2d_46_layer_call_fn_4712163
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ъ
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4712175
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ш
trace_02Щ
,__inference_conv2d_106_layer_call_fn_4712184
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

 trace_02ф
G__inference_conv2d_106_layer_call_and_return_conditional_losses_4712195
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z trace_0
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
J
"0
#1
(2
)3
.4
/5"
trackable_list_wrapper
~
M0
N1
O2
P3
Q4
R5
S6
T7
U8
V9
W10
X11
Y12"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBє
/__inference_sequential_33_layer_call_fn_4710598conv2d_103_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
/__inference_sequential_33_layer_call_fn_4710643conv2d_103_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710496conv2d_103_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710553conv2d_103_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0:. 2Adam/m/conv2d_100/kernel
0:. 2Adam/v/conv2d_100/kernel
":  2Adam/m/conv2d_100/bias
":  2Adam/v/conv2d_100/bias
/:- 2#Adam/m/batch_normalization_12/gamma
/:- 2#Adam/v/batch_normalization_12/gamma
.:, 2"Adam/m/batch_normalization_12/beta
.:, 2"Adam/v/batch_normalization_12/beta
0:. @2Adam/m/conv2d_101/kernel
0:. @2Adam/v/conv2d_101/kernel
": @2Adam/m/conv2d_101/bias
": @2Adam/v/conv2d_101/bias
/:-@2#Adam/m/batch_normalization_13/gamma
/:-@2#Adam/v/batch_normalization_13/gamma
.:,@2"Adam/m/batch_normalization_13/beta
.:,@2"Adam/v/batch_normalization_13/beta
1:/@2Adam/m/conv2d_102/kernel
1:/@2Adam/v/conv2d_102/kernel
#:!2Adam/m/conv2d_102/bias
#:!2Adam/v/conv2d_102/bias
0:.2#Adam/m/batch_normalization_14/gamma
0:.2#Adam/v/batch_normalization_14/gamma
/:-2"Adam/m/batch_normalization_14/beta
/:-2"Adam/v/batch_normalization_14/beta
2:02Adam/m/conv2d_103/kernel
2:02Adam/v/conv2d_103/kernel
#:!2Adam/m/conv2d_103/bias
#:!2Adam/v/conv2d_103/bias
0:.2#Adam/m/batch_normalization_15/gamma
0:.2#Adam/v/batch_normalization_15/gamma
/:-2"Adam/m/batch_normalization_15/beta
/:-2"Adam/v/batch_normalization_15/beta
1:/@2Adam/m/conv2d_104/kernel
1:/@2Adam/v/conv2d_104/kernel
": @2Adam/m/conv2d_104/bias
": @2Adam/v/conv2d_104/bias
/:-@2#Adam/m/batch_normalization_16/gamma
/:-@2#Adam/v/batch_normalization_16/gamma
.:,@2"Adam/m/batch_normalization_16/beta
.:,@2"Adam/v/batch_normalization_16/beta
0:.@ 2Adam/m/conv2d_105/kernel
0:.@ 2Adam/v/conv2d_105/kernel
":  2Adam/m/conv2d_105/bias
":  2Adam/v/conv2d_105/bias
/:- 2#Adam/m/batch_normalization_17/gamma
/:- 2#Adam/v/batch_normalization_17/gamma
.:, 2"Adam/m/batch_normalization_17/beta
.:, 2"Adam/v/batch_normalization_17/beta
0:. 2Adam/m/conv2d_106/kernel
0:. 2Adam/v/conv2d_106/kernel
": 2Adam/m/conv2d_106/bias
": 2Adam/v/conv2d_106/bias
яBь
$__inference__update_step_xla_4655183gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655188gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655193gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655198gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655203gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655208gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655213gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655218gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655223gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655228gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655233gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
$__inference__update_step_xla_4655238gradientvariable"­
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
ф0
х1"
trackable_list_wrapper
.
т	variables"
_generic_user_object
:  (2total
:  (2count
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
жBг
,__inference_conv2d_100_layer_call_fn_4711557inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_conv2d_100_layer_call_and_return_conditional_losses_4711567inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
іBѓ
8__inference_batch_normalization_12_layer_call_fn_4711580inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
8__inference_batch_normalization_12_layer_call_fn_4711593inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711611inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711629inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
кBз
0__inference_leaky_re_lu_88_layer_call_fn_4711634inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4711639inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
2__inference_max_pooling2d_44_layer_call_fn_4711644inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4711649inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
жBг
,__inference_conv2d_101_layer_call_fn_4711658inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_conv2d_101_layer_call_and_return_conditional_losses_4711668inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
іBѓ
8__inference_batch_normalization_13_layer_call_fn_4711681inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
8__inference_batch_normalization_13_layer_call_fn_4711694inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711712inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711730inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
кBз
0__inference_leaky_re_lu_89_layer_call_fn_4711735inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4711740inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
2__inference_max_pooling2d_45_layer_call_fn_4711745inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4711750inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
жBг
,__inference_conv2d_102_layer_call_fn_4711759inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_conv2d_102_layer_call_and_return_conditional_losses_4711769inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
іBѓ
8__inference_batch_normalization_14_layer_call_fn_4711782inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
8__inference_batch_normalization_14_layer_call_fn_4711795inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711813inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711831inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
кBз
0__inference_leaky_re_lu_90_layer_call_fn_4711836inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4711841inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
2__inference_max_pooling2d_46_layer_call_fn_4711846inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4711851inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
жBг
,__inference_conv2d_103_layer_call_fn_4711860inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_conv2d_103_layer_call_and_return_conditional_losses_4711870inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
іBѓ
8__inference_batch_normalization_15_layer_call_fn_4711883inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
8__inference_batch_normalization_15_layer_call_fn_4711896inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711914inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711932inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
кBз
0__inference_leaky_re_lu_91_layer_call_fn_4711937inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4711942inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
2__inference_up_sampling2d_44_layer_call_fn_4711947inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4711959inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
жBг
,__inference_conv2d_104_layer_call_fn_4711968inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_conv2d_104_layer_call_and_return_conditional_losses_4711978inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
іBѓ
8__inference_batch_normalization_16_layer_call_fn_4711991inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
8__inference_batch_normalization_16_layer_call_fn_4712004inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712022inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712040inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
кBз
0__inference_leaky_re_lu_92_layer_call_fn_4712045inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4712050inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
2__inference_up_sampling2d_45_layer_call_fn_4712055inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4712067inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
жBг
,__inference_conv2d_105_layer_call_fn_4712076inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_conv2d_105_layer_call_and_return_conditional_losses_4712086inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
іBѓ
8__inference_batch_normalization_17_layer_call_fn_4712099inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
8__inference_batch_normalization_17_layer_call_fn_4712112inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712130inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712148inputs"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
кBз
0__inference_leaky_re_lu_93_layer_call_fn_4712153inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4712158inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
мBй
2__inference_up_sampling2d_46_layer_call_fn_4712163inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
їBє
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4712175inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
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
жBг
,__inference_conv2d_106_layer_call_fn_4712184inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_conv2d_106_layer_call_and_return_conditional_losses_4712195inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 І
$__inference__update_step_xla_4655183~xЂu
nЂk
!
gradient 
<9	%Ђ"
њ 

p
` VariableSpec 
` ыщО=
Њ "
 
$__inference__update_step_xla_4655188f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`РъщО=
Њ "
 
$__inference__update_step_xla_4655193f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
` ШїщО=
Њ "
 
$__inference__update_step_xla_4655198f`Ђ]
VЂS

gradient 
0-	Ђ
њ 

p
` VariableSpec 
`рЯїщО=
Њ "
 І
$__inference__update_step_xla_4655203~xЂu
nЂk
!
gradient @
<9	%Ђ"
њ @

p
` VariableSpec 
`рњыщО=
Њ "
 
$__inference__update_step_xla_4655208f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` МыщО=
Њ "
 
$__inference__update_step_xla_4655213f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
` кящО=
Њ "
 
$__inference__update_step_xla_4655218f`Ђ]
VЂS

gradient@
0-	Ђ
њ@

p
` VariableSpec 
`рлящО=
Њ "
 Љ
$__inference__update_step_xla_4655223zЂw
pЂm
"
gradient@
=:	&Ђ#
њ@

p
` VariableSpec 
` ПјоеО=
Њ "
 
$__inference__update_step_xla_4655228hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
`ЛЭзщО=
Њ "
 
$__inference__update_step_xla_4655233hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
` МящО=
Њ "
 
$__inference__update_step_xla_4655238hbЂ_
XЂU

gradient
1.	Ђ
њ

p
` VariableSpec 
` ОющО=
Њ "
 С
"__inference__wrapped_model_4709657& !"#$%&'()*+,-./01!Ђ
Ђ

input_1
Њ "MЊJ
H
output_1<9
output_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџѓ
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710846Ѓ& !"#$%&'()*+,-./011Ђ.
Ђ

input_1
Њ

trainingp"FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ѓ
K__inference_autoencoder_16_layer_call_and_return_conditional_losses_4710998Ѓ& !"#$%&'()*+,-./011Ђ.
Ђ

input_1
Њ

trainingp "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Э
0__inference_autoencoder_16_layer_call_fn_4711079& !"#$%&'()*+,-./011Ђ.
Ђ

input_1
Њ

trainingp";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџЭ
0__inference_autoencoder_16_layer_call_fn_4711160& !"#$%&'()*+,-./011Ђ.
Ђ

input_1
Њ

trainingp ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџљ
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711611ЁQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 љ
S__inference_batch_normalization_12_layer_call_and_return_conditional_losses_4711629ЁQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 г
8__inference_batch_normalization_12_layer_call_fn_4711580QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ г
8__inference_batch_normalization_12_layer_call_fn_4711593QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ љ
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711712ЁQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 љ
S__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4711730ЁQЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 г
8__inference_batch_normalization_13_layer_call_fn_4711681QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@г
8__inference_batch_normalization_13_layer_call_fn_4711694QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@ћ
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711813ЃRЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ћ
S__inference_batch_normalization_14_layer_call_and_return_conditional_losses_4711831ЃRЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 е
8__inference_batch_normalization_14_layer_call_fn_4711782RЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџе
8__inference_batch_normalization_14_layer_call_fn_4711795RЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџћ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711914Ѓ !"#RЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ћ
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_4711932Ѓ !"#RЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 е
8__inference_batch_normalization_15_layer_call_fn_4711883 !"#RЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџе
8__inference_batch_normalization_15_layer_call_fn_4711896 !"#RЂO
HЂE
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџљ
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712022Ё&'()QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 љ
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_4712040Ё&'()QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 г
8__inference_batch_normalization_16_layer_call_fn_4711991&'()QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@г
8__inference_batch_normalization_16_layer_call_fn_4712004&'()QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@љ
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712130Ё,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 љ
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_4712148Ё,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 г
8__inference_batch_normalization_17_layer_call_fn_4712099,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ г
8__inference_batch_normalization_17_layer_call_fn_4712112,-./QЂN
GЂD
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Р
G__inference_conv2d_100_layer_call_and_return_conditional_losses_4711567u8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@ 
 
,__inference_conv2d_100_layer_call_fn_4711557j8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@
Њ "*'
unknownџџџџџџџџџ@ О
G__inference_conv2d_101_layer_call_and_return_conditional_losses_4711668s7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @ 
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ @@
 
,__inference_conv2d_101_layer_call_fn_4711658h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @ 
Њ ")&
unknownџџџџџџџџџ @@П
G__inference_conv2d_102_layer_call_and_return_conditional_losses_4711769t7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ 
 
,__inference_conv2d_102_layer_call_fn_4711759i7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @
Њ "*'
unknownџџџџџџџџџ х
G__inference_conv2d_103_layer_call_and_return_conditional_losses_4711870JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 П
,__inference_conv2d_103_layer_call_fn_4711860JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџф
G__inference_conv2d_104_layer_call_and_return_conditional_losses_4711978$%JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 О
,__inference_conv2d_104_layer_call_fn_4711968$%JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@у
G__inference_conv2d_105_layer_call_and_return_conditional_losses_4712086*+IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Н
,__inference_conv2d_105_layer_call_fn_4712076*+IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ у
G__inference_conv2d_106_layer_call_and_return_conditional_losses_471219501IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Н
,__inference_conv2d_106_layer_call_fn_471218401IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџР
K__inference_leaky_re_lu_88_layer_call_and_return_conditional_losses_4711639q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@ 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ@ 
 
0__inference_leaky_re_lu_88_layer_call_fn_4711634f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ@ 
Њ "*'
unknownџџџџџџџџџ@ О
K__inference_leaky_re_lu_89_layer_call_and_return_conditional_losses_4711740o7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @@
Њ "4Ђ1
*'
tensor_0џџџџџџџџџ @@
 
0__inference_leaky_re_lu_89_layer_call_fn_4711735d7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ @@
Њ ")&
unknownџџџџџџџџџ @@Р
K__inference_leaky_re_lu_90_layer_call_and_return_conditional_losses_4711841q8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ 
 
0__inference_leaky_re_lu_90_layer_call_fn_4711836f8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ 
Њ "*'
unknownџџџџџџџџџ х
K__inference_leaky_re_lu_91_layer_call_and_return_conditional_losses_4711942JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 П
0__inference_leaky_re_lu_91_layer_call_fn_4711937JЂG
@Ђ=
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџу
K__inference_leaky_re_lu_92_layer_call_and_return_conditional_losses_4712050IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Н
0__inference_leaky_re_lu_92_layer_call_fn_4712045IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@у
K__inference_leaky_re_lu_93_layer_call_and_return_conditional_losses_4712158IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Н
0__inference_leaky_re_lu_93_layer_call_fn_4712153IЂF
?Ђ<
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ї
M__inference_max_pooling2d_44_layer_call_and_return_conditional_losses_4711649ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
2__inference_max_pooling2d_44_layer_call_fn_4711644RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
M__inference_max_pooling2d_45_layer_call_and_return_conditional_losses_4711750ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
2__inference_max_pooling2d_45_layer_call_fn_4711745RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
M__inference_max_pooling2d_46_layer_call_and_return_conditional_losses_4711851ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
2__inference_max_pooling2d_46_layer_call_fn_4711846RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџо
J__inference_sequential_32_layer_call_and_return_conditional_losses_4709970BЂ?
8Ђ5
+(
input_17џџџџџџџџџ@
p

 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 о
J__inference_sequential_32_layer_call_and_return_conditional_losses_4710022BЂ?
8Ђ5
+(
input_17џџџџџџџџџ@
p 

 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџ
 ж
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711478(Ђ%
Ђ

inputs
p

 
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ж
J__inference_sequential_32_layer_call_and_return_conditional_losses_4711548(Ђ%
Ђ

inputs
p 

 
Њ "GЂD
=:
tensor_0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 И
/__inference_sequential_32_layer_call_fn_4710063BЂ?
8Ђ5
+(
input_17џџџџџџџџџ@
p

 
Њ "*'
unknownџџџџџџџџџИ
/__inference_sequential_32_layer_call_fn_4710104BЂ?
8Ђ5
+(
input_17џџџџџџџџџ@
p 

 
Њ "*'
unknownџџџџџџџџџЏ
/__inference_sequential_32_layer_call_fn_4711367|(Ђ%
Ђ

inputs
p

 
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџЏ
/__inference_sequential_32_layer_call_fn_4711408|(Ђ%
Ђ

inputs
p 

 
Њ "<9
unknown,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710496М !"#$%&'()*+,-./01\ЂY
RЂO
EB
conv2d_103_input,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
J__inference_sequential_33_layer_call_and_return_conditional_losses_4710553М !"#$%&'()*+,-./01\ЂY
RЂO
EB
conv2d_103_input,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ "FЂC
<9
tensor_0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 х
/__inference_sequential_33_layer_call_fn_4710598Б !"#$%&'()*+,-./01\ЂY
RЂO
EB
conv2d_103_input,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџх
/__inference_sequential_33_layer_call_fn_4710643Б !"#$%&'()*+,-./01\ЂY
RЂO
EB
conv2d_103_input,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 

 
Њ ";8
unknown+џџџџџџџџџџџџџџџџџџџџџџџџџџџЯ
%__inference_signature_wrapper_4711326Ѕ& !"#$%&'()*+,-./01,Ђ)
Ђ 
"Њ

input_1
input_1"MЊJ
H
output_1<9
output_1+џџџџџџџџџџџџџџџџџџџџџџџџџџџї
M__inference_up_sampling2d_44_layer_call_and_return_conditional_losses_4711959ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
2__inference_up_sampling2d_44_layer_call_fn_4711947RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
M__inference_up_sampling2d_45_layer_call_and_return_conditional_losses_4712067ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
2__inference_up_sampling2d_45_layer_call_fn_4712055RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџї
M__inference_up_sampling2d_46_layer_call_and_return_conditional_losses_4712175ЅRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "OЂL
EB
tensor_04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 б
2__inference_up_sampling2d_46_layer_call_fn_4712163RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "DA
unknown4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ