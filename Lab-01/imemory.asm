add  r0, r0, r0  // useless instruction
addi r2, r0, 10  // size of arrays
addi r3, r0, 40  // base address of A[]
addi r4, r0, 100 // base address of B[] 
addi r5, r0, 160 // base address of C[]
addi r6, r0, 200 // base address of D[]
addi r8, r0, 0   // i

init:
beq	r8, r2, done	//if (r8 == r2) goto done

add r9, r3, r8		// memlocation = base address + offset into A
store r8, 0(r9)		// A[i] = i

add	r9, r4, r8		// memlocation = base address + offset into B
store r8, 0(r9)		// B[i] = i

add r9, r3, r8		// memlocation = base address + offset into A
load r10, 0(r9)		// r10 = A[i]
addi r10, r10, 1	// r10 = r10 + 1
add	r9, r5, r8		// memlocation = base address + offset into C
store r10, 0(r9)	// C[i] = A[i] + 1

add	r9, r4, r8		// memlocation = base address + offset into B
load r10, 0(r9)		// r10 = B[i]
addi r10, r10, 2	// r10 = r10 + 2
add	r9, r6, r8		// memlocation = base address + offset into D
store r10, 0(r9)	// D[i] = B[i] + 2

addi r8, r8, 1		// i++
j init

done:
j done
