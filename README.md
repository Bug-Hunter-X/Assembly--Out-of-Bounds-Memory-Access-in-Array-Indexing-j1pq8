# Assembly: Out-of-Bounds Memory Access Bug

This repository demonstrates a common error in assembly programming: accessing memory outside the bounds of an array.  The bug involves an instruction that uses an unchecked index, potentially causing a segmentation fault or other unpredictable behavior.  A solution is provided to illustrate safe array access techniques.

## Bug Description
The `mov eax, [ebx+ecx*4]` instruction can cause a segmentation fault if `ecx` exceeds the array's allocated size.  The code doesn't perform boundary checks before accessing the array.