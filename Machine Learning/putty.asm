0x140001000:	push	rsi
0x140001001:	push	rdi
0x140001002:	sub	rsp, 0x28
0x140001006:	mov	rsi, rcx
0x140001009:	mov	ecx, 1
0x14000100e:	mov	edx, 0x50
0x140001013:	xor	r8d, r8d
0x140001016:	call	0x140011830
0x14000101b:	mov	rdi, rax
0x14000101e:	mov	qword ptr [rax], rsi
0x140001021:	lea	rax, [rip + 0x9bfd8]
0x140001028:	mov	qword ptr [rdi + 0x40], rax
0x14000102c:	mov	dword ptr [rdi + 0x48], 0
0x140001033:	mov	byte ptr [rdi + 0x39], 0
0x140001037:	lea	rcx, [rdi + 8]
0x14000103b:	call	0x14005fa2c
0x140001040:	mov	qword ptr [rdi + 0x30], 0
0x140001048:	mov	byte ptr [rdi + 0x38], 1
0x14000104c:	lea	rax, [rdi + 0x40]
0x140001050:	add	rsp, 0x28
0x140001054:	pop	rdi
0x140001055:	pop	rsi
0x140001056:	ret	
0x140001057:	push	rsi
0x140001058:	push	rdi
0x140001059:	sub	rsp, 0x28
0x14000105d:	mov	rsi, rcx
0x140001060:	lea	rax, [rip + 0x9bf99]
0x140001067:	cmp	qword ptr [rcx], rax
0x14000106a:	je	0x140001085
0x14000106c:	lea	rcx, [rip + 0xbc595]
0x140001073:	lea	rdx, [rip + 0xbda10]
0x14000107a:	mov	r8d, 0xbe
0x140001080:	call	0x140088ff4
0x140001085:	lea	rdi, [rsi - 0x40]
0x140001089:	mov	rcx, qword ptr [rsi - 0x10]
0x14000108d:	test	rcx, rcx
0x140001090:	je	0x140001097
0x140001092:	call	0x1400774bf
0x140001097:	add	rsi, -0x38
0x14000109b:	mov	rcx, rsi
0x14000109e:	call	0x14005fa6b
0x1400010a3:	mov	rcx, rdi
0x1400010a6:	add	rsp, 0x28
0x1400010aa:	pop	rdi
0x1400010ab:	pop	rsi
0x1400010ac:	jmp	0x1400118b0
0x1400010b1:	push	r15
0x1400010b3:	push	r14
0x1400010b5:	push	rsi
0x1400010b6:	push	rdi
0x1400010b7:	push	rbx
0x1400010b8:	sub	rsp, 0x20
0x1400010bc:	mov	r14, r9
0x1400010bf:	mov	r15, r8
0x1400010c2:	mov	rsi, rcx
0x1400010c5:	lea	rax, [rip + 0x9bf34]
0x1400010cc:	cmp	qword ptr [rcx], rax
0x1400010cf:	je	0x1400010ea
0x1400010d1:	lea	rcx, [rip + 0xbc530]
0x1400010d8:	lea	rdx, [rip + 0xbd9ab]
0x1400010df:	mov	r8d, 0xca
0x1400010e5:	call	0x140088ff4
0x1400010ea:	lea	rbx, [rsi - 0x40]
0x1400010ee:	lea	rdi, [rsi - 0x38]
0x1400010f2:	mov	rcx, rdi
0x1400010f5:	mov	rdx, r15
0x1400010f8:	mov	r8, r14
0x1400010fb:	call	0x14005fab8
0x140001100:	mov	rcx, rbx
0x140001103:	call	0x1400011cf
0x140001108:	cmp	qword ptr [rsi - 0x10], 0
0x14000110d:	je	0x140001122
0x14000110f:	mov	rcx, rdi
0x140001112:	add	rsp, 0x20
0x140001116:	pop	rbx
0x140001117:	pop	rdi
0x140001118:	pop	rsi
0x140001119:	pop	r14
0x14000111b:	pop	r15
0x14000111d:	jmp	0x14005faaa
0x140001122:	xor	eax, eax
0x140001124:	add	rsp, 0x20
0x140001128:	pop	rbx
0x140001129:	pop	rdi
0x14000112a:	pop	rsi
0x14000112b:	pop	r14
0x14000112d:	pop	r15
0x14000112f:	ret	
0x140001130:	push	rsi
0x140001131:	sub	rsp, 0x20
0x140001135:	mov	rsi, rcx
0x140001138:	lea	rax, [rip + 0x9bec1]
0x14000113f:	cmp	qword ptr [rcx], rax
0x140001142:	je	0x14000115d
0x140001144:	lea	rcx, [rip + 0xbc4bd]
0x14000114b:	lea	rdx, [rip + 0xbd938]
0x140001152:	mov	r8d, 0xdc
0x140001158:	call	0x140088ff4
0x14000115d:	mov	byte ptr [rsi - 7], 1
0x140001161:	add	rsi, -0x40
0x140001165:	mov	rcx, rsi
0x140001168:	add	rsp, 0x20
0x14000116c:	pop	rsi
0x14000116d:	jmp	0x1400011cf
0x140001172:	push	rsi
0x140001173:	push	rbx
0x140001174:	sub	rsp, 0x28
0x140001178:	mov	ebx, edx
0x14000117a:	mov	rsi, rcx
0x14000117d:	lea	rax, [rip + 0x9be7c]
0x140001184:	cmp	qword ptr [rcx], rax
0x140001187:	je	0x1400011a2
0x140001189:	lea	rcx, [rip + 0xbc478]
0x140001190:	lea	rdx, [rip + 0xbd8f3]
0x140001197:	mov	r8d, 0xee
0x14000119d:	call	0x140088ff4
0x1400011a2:	mov	byte ptr [rsi - 8], bl
0x1400011a5:	test	bl, bl
0x1400011a7:	je	0x1400011bb
0x1400011a9:	add	rsi, -0x40
0x1400011ad:	mov	rcx, rsi
0x1400011b0:	add	rsp, 0x28
0x1400011b4:	pop	rbx
0x1400011b5:	pop	rsi
0x1400011b6:	jmp	0x1400011cf
0x1400011bb:	nop	
0x1400011bc:	add	rsp, 0x28
0x1400011c0:	pop	rbx
0x1400011c1:	pop	rsi
0x1400011c2:	ret	
0x1400011c3:	lea	rcx, [rip + 0xb50f3]
0x1400011ca:	jmp	0x14005f215
0x1400011cf:	push	r15
0x1400011d1:	push	r14
0x1400011d3:	push	r13
0x1400011d5:	push	r12
0x1400011d7:	push	rsi
0x1400011d8:	push	rdi
0x1400011d9:	push	rbp
0x1400011da:	push	rbx
0x1400011db:	sub	rsp, 0x48
0x1400011df:	mov	rax, qword ptr [rip + 0xc8f0a]
0x1400011e6:	xor	rax, rsp
0x1400011e9:	mov	qword ptr [rsp + 0x40], rax
0x1400011ee:	cmp	qword ptr [rcx + 0x30], 0
0x1400011f3:	je	0x140001214
0x1400011f5:	mov	rcx, qword ptr [rsp + 0x40]
0x1400011fa:	xor	rcx, rsp
0x1400011fd:	call	0x14007d5e0
0x140001202:	nop	
0x140001203:	add	rsp, 0x48
0x140001207:	pop	rbx
0x140001208:	pop	rbp
0x140001209:	pop	rdi
0x14000120a:	pop	rsi
0x14000120b:	pop	r12
0x14000120d:	pop	r13
0x14000120f:	pop	r14
0x140001211:	pop	r15
0x140001213:	ret	
0x140001214:	mov	rsi, rcx
0x140001217:	cmp	byte ptr [rcx + 0x38], 0
0x14000121b:	je	0x1400011f5
0x14000121d:	lea	rdi, [rsi + 8]
0x140001221:	mov	rcx, rdi
0x140001224:	call	0x14005faaa
0x140001229:	cmp	rax, 4
0x14000122d:	jae	0x14000123b
0x14000122f:	cmp	byte ptr [rsi + 0x39], 0
0x140001233:	jne	0x140001354
0x140001239:	jmp	0x1400011f5
0x14000123b:	mov	rbx, rax
0x14000123e:	lea	r13, [rsp + 0x3c]
0x140001243:	lea	r14, [rip + 0x118]
0x14000124a:	lea	r15, [rsp + 0x30]
0x14000124f:	lea	r12, [rsp + 0x2c]
0x140001254:	mov	r8d, 4
0x14000125a:	mov	rcx, rdi
0x14000125d:	mov	rdx, r13
0x140001260:	call	0x14005fc7c
0x140001265:	mov	ebp, dword ptr [rsp + 0x3c]
0x140001269:	shl	rbp, 0x20
0x14000126d:	bswap	rbp
0x140001270:	cmp	ebp, 0x3fffd
0x140001276:	jae	0x140001335
0x14000127c:	add	rbx, -4
0x140001280:	cmp	rbx, rbp
0x140001283:	jb	0x14000122f
0x140001285:	mov	edx, 4
0x14000128a:	mov	rcx, rdi
0x14000128d:	call	0x14005fb9d
0x140001292:	call	0x14005f6eb
0x140001297:	mov	rbx, rax
0x14000129a:	mov	rcx, rax
0x14000129d:	mov	rdx, rbp
0x1400012a0:	call	0x14005f4c6
0x1400012a5:	mov	rcx, rdi
0x1400012a8:	mov	rdx, rax
0x1400012ab:	mov	r8, rbp
0x1400012ae:	call	0x14005fd18
0x1400012b3:	mov	qword ptr [rsp + 0x20], rsi
0x1400012b8:	mov	rcx, rbx
0x1400012bb:	mov	rdx, r15
0x1400012be:	mov	r8, r12
0x1400012c1:	mov	r9, r14
0x1400012c4:	call	0x1400774e2
0x1400012c9:	mov	qword ptr [rsi + 0x30], rax
0x1400012cd:	mov	rcx, rbx
0x1400012d0:	call	0x14005f61a
0x1400012d5:	cmp	qword ptr [rsi + 0x30], 0
0x1400012da:	jne	0x1400011f5
0x1400012e0:	movsxd	r9, dword ptr [rsp + 0x2c]
0x1400012e5:	mov	r8, qword ptr [rsp + 0x30]
0x1400012ea:	xor	eax, eax
0x1400012ec:	mov	qword ptr [rsi + 0x30], rax
0x1400012f0:	test	r8, r8
0x1400012f3:	lea	rax, [rip + 0xbbe4a]
0x1400012fa:	cmove	r8, rax
0x1400012fe:	mov	eax, 5
0x140001303:	cmove	r9, rax
0x140001307:	mov	rcx, qword ptr [rsi]
0x14000130a:	mov	rax, qword ptr [rcx]
0x14000130d:	xor	edx, edx
0x14000130f:	call	qword ptr [rax]
0x140001311:	mov	rcx, qword ptr [rsp + 0x30]
0x140001316:	call	0x1400118b0
0x14000131b:	mov	rcx, rdi
0x14000131e:	call	0x14005faaa
0x140001323:	mov	rbx, rax
0x140001326:	cmp	rax, 3
0x14000132a:	ja	0x140001254
0x140001330:	jmp	0x14000122f
0x140001335:	mov	qword ptr [rsi + 0x30], 0
0x14000133d:	mov	rcx, qword ptr [rsi]
0x140001340:	mov	rax, qword ptr [rcx]
0x140001343:	lea	r8, [rip + 0xbbdfa]
0x14000134a:	mov	r9d, 5
0x140001350:	xor	edx, edx
0x140001352:	call	qword ptr [rax]
0x140001354:	mov	rcx, qword ptr [rsi]
0x140001357:	mov	rax, qword ptr [rcx]
0x14000135a:	call	qword ptr [rax + 8]
0x14000135d:	jmp	0x1400011f5
0x140001362:	push	rsi
0x140001363:	push	rdi
0x140001364:	sub	rsp, 0x28
0x140001368:	mov	rsi, rdx
0x14000136b:	mov	rdi, rcx
0x14000136e:	xor	eax, eax
0x140001370:	mov	qword ptr [rcx + 0x30], rax
0x140001374:	test	rdx, rdx
0x140001377:	lea	rax, [rip + 0xbbdc6]
0x14000137e:	cmovne	rax, rdx
0x140001382:	movsxd	rcx, r8d
0x140001385:	mov	r9d, 5
0x14000138b:	cmovne	r9, rcx
0x14000138f:	mov	rcx, qword ptr [rdi]
0x140001392:	mov	r10, qword ptr [rcx]
0x140001395:	xor	edx, edx
0x140001397:	mov	r8, rax
0x14000139a:	call	qword ptr [r10]
0x14000139d:	mov	rcx, rsi
0x1400013a0:	call	0x1400118b0
0x1400013a5:	mov	rcx, rdi
0x1400013a8:	add	rsp, 0x28
0x1400013ac:	pop	rdi
0x1400013ad:	pop	rsi
0x1400013ae:	jmp	0x1400011cf
0x1400013b3:	int3	
0x1400013b4:	push	r15
0x1400013b6:	push	r14
0x1400013b8:	push	rsi
0x1400013b9:	push	rdi
0x1400013ba:	push	rbp
0x1400013bb:	push	rbx
0x1400013bc:	sub	rsp, 0x128
0x1400013c3:	mov	r14, rdx
0x1400013c6:	mov	rdi, qword ptr [rsp + 0x188]
0x1400013ce:	mov	rax, qword ptr [rip + 0xc8d1b]
0x1400013d5:	xor	rax, rsp
0x1400013d8:	mov	qword ptr [rsp + 0x120], rax
0x1400013e0:	cmp	r8d, 2
0x1400013e4:	je	0x14000143d
0x1400013e6:	mov	rsi, r9
0x1400013e9:	cmp	r8d, 1
0x1400013ed:	je	0x1400014d5
0x1400013f3:	test	r8d, r8d
0x1400013f6:	jne	0x14000152b
0x1400013fc:	lea	rdx, [rsp + 0x20]
0x140001401:	mov	rcx, rsi
0x140001404:	mov	r8d, 0x100
0x14000140a:	call	0x14007515e
0x14000140f:	mov	rcx, rsi
0x140001412:	call	0x140075250
0x140001417:	test	al, al
0x140001419:	je	0x1400014ff
0x14000141f:	mov	r8d, dword ptr [rsp + 0x180]
0x140001427:	lea	rcx, [rip + 0xb5736]
0x14000142e:	lea	rdx, [rsp + 0x20]
0x140001433:	call	0x14005f1b3
0x140001438:	jmp	0x140001510
0x14000143d:	mov	rbx, rcx
0x140001440:	mov	bpl, byte ptr [rsp + 0x1a0]
0x140001448:	mov	r15, qword ptr [rsp + 0x198]
0x140001450:	lea	rcx, [rip + 0xbb7d7]
0x140001457:	mov	rdx, rdi
0x14000145a:	call	0x14005f1b3
0x14000145f:	mov	rdi, rax
0x140001462:	mov	rcx, rax
0x140001465:	call	0x14008cbc0
0x14000146a:	mov	rsi, rax
0x14000146d:	cmp	esi, 1
0x140001470:	jg	0x14000148b
0x140001472:	lea	rcx, [rip + 0xbe8f1]
0x140001479:	lea	rdx, [rip + 0xbd772]
0x140001480:	mov	r8d, 0x28
0x140001486:	call	0x140088ff4
0x14000148b:	mov	rcx, r15
0x14000148e:	mov	edx, 0x13
0x140001493:	call	0x140003425
0x140001498:	cmp	eax, 2
0x14000149b:	movzx	ecx, bpl
0x14000149f:	cmovne	ecx, eax
0x1400014a2:	shl	rsi, 0x20
0x1400014a6:	test	ecx, ecx
0x1400014a8:	jne	0x1400014be
0x1400014aa:	mov	r9, rsi
0x1400014ad:	sar	r9, 0x20
0x1400014b1:	mov	rax, qword ptr [rbx]
0x1400014b4:	mov	rcx, rbx
0x1400014b7:	mov	dl, 1
0x1400014b9:	mov	r8, rdi
0x1400014bc:	call	qword ptr [rax]
0x1400014be:	movabs	rax, 0xfffffffe00000000
0x1400014c8:	add	rsi, rax
0x1400014cb:	sar	rsi, 0x20
0x1400014cf:	mov	byte ptr [rdi + rsi], 0
0x1400014d3:	jmp	0x140001518
0x1400014d5:	lea	rbx, [rsp + 0x20]
0x1400014da:	mov	rcx, rsi
0x1400014dd:	mov	rdx, rbx
0x1400014e0:	mov	r8d, 0x100
0x1400014e6:	call	0x14007515e
0x1400014eb:	lea	rcx, [rip + 0xafec6]
0x1400014f2:	mov	rdx, rbx
0x1400014f5:	mov	r8, rdi
0x1400014f8:	call	0x14005f1b3
0x1400014fd:	jmp	0x140001510
0x1400014ff:	lea	rcx, [rip + 0xafbef]
0x140001506:	lea	rdx, [rsp + 0x20]
0x14000150b:	call	0x14005f1b3
0x140001510:	mov	rdi, rax
0x140001513:	test	rax, rax
0x140001516:	je	0x14000152b
0x140001518:	mov	rcx, r14
0x14000151b:	mov	rdx, rdi
0x14000151e:	call	0x14000fd6b
0x140001523:	mov	rcx, rdi
0x140001526:	call	0x1400118b0
0x14000152b:	mov	rcx, qword ptr [rsp + 0x120]
0x140001533:	xor	rcx, rsp
0x140001536:	call	0x14007d5e0
0x14000153b:	nop	
0x14000153c:	add	rsp, 0x128
0x140001543:	pop	rbx
0x140001544:	pop	rbp
0x140001545:	pop	rdi
0x140001546:	pop	rsi
0x140001547:	pop	r14
0x140001549:	pop	r15
0x14000154b:	ret	
0x14000154c:	mov	qword ptr [rcx + 0x2000], 0
0x140001557:	ret	
0x140001558:	push	r15
0x14000155a:	push	r14
0x14000155c:	push	r13
0x14000155e:	push	r12
0x140001560:	push	rsi
0x140001561:	push	rdi
0x140001562:	push	rbp
0x140001563:	push	rbx
0x140001564:	sub	rsp, 0x38
0x140001568:	test	r9, r9
0x14000156b:	je	0x140001749
0x140001571:	mov	rdi, r9
0x140001574:	mov	r12, r8
0x140001577:	mov	rbx, rdx
0x14000157a:	mov	rsi, rcx
0x14000157d:	mov	r13, qword ptr [rdx + 0x2000]
0x140001584:	cmp	r13, 0x2000
0x14000158b:	jb	0x1400015ad
0x14000158d:	lea	rcx, [rip + 0xbf220]
0x140001594:	lea	rdx, [rip + 0xbd657]
0x14000159b:	mov	r8d, 0x5a
0x1400015a1:	call	0x140088ff4
0x1400015a6:	mov	r13, qword ptr [rbx + 0x2000]
0x1400015ad:	mov	r15d, 0x2000
0x1400015b3:	sub	r15, r13
0x1400015b6:	cmp	r15, rdi
0x1400015b9:	cmova	r15, rdi
0x1400015bd:	add	r13, rbx
0x1400015c0:	mov	rcx, r13
0x1400015c3:	mov	rdx, r12
0x1400015c6:	mov	r8, r15
0x1400015c9:	call	0x14007e6c0
0x1400015ce:	mov	r13, qword ptr [rbx + 0x2000]
0x1400015d5:	add	r13, r15
0x1400015d8:	mov	qword ptr [rbx + 0x2000], r13
0x1400015df:	je	0x1400016ad
0x1400015e5:	mov	qword ptr [rsp + 0x30], rdi
0x1400015ea:	xor	edi, edi
0x1400015ec:	mov	r8, r13
0x1400015ef:	sub	r8, rdi
0x1400015f2:	lea	r14, [rbx + rdi]
0x1400015f6:	mov	rcx, r14
0x1400015f9:	mov	edx, 0xa
0x1400015fe:	call	0x14007e5b0
0x140001603:	test	rax, rax
0x140001606:	je	0x1400016b4
0x14000160c:	mov	rbp, rax
0x14000160f:	sub	rbp, rbx
0x140001612:	mov	rdx, rbp
0x140001615:	cmp	rbp, rdi
0x140001618:	jbe	0x140001634
0x14000161a:	mov	rdx, rbp
0x14000161d:	mov	al, byte ptr [rbx + rdx - 1]
0x140001621:	cmp	al, 0xd
0x140001623:	je	0x140001629
0x140001625:	cmp	al, 0xa
0x140001627:	jne	0x140001634
0x140001629:	dec	rdx
0x14000162c:	cmp	rdx, rdi
0x14000162f:	ja	0x14000161d
0x140001631:	mov	rdx, rdi
0x140001634:	sub	edx, edi
0x140001636:	lea	rcx, [rip + 0xaf725]
0x14000163d:	mov	r8, r14
0x140001640:	call	0x14005f1b3
0x140001645:	mov	rdi, rax
0x140001648:	mov	rax, qword ptr [rsi]
0x14000164b:	mov	qword ptr [rsp + 0x20], rdi
0x140001650:	mov	dword ptr [rsp + 0x28], 0
0x140001658:	mov	rcx, rsi
0x14000165b:	mov	edx, 2
0x140001660:	xor	r8d, r8d
0x140001663:	xor	r9d, r9d
0x140001666:	call	qword ptr [rax]
0x140001668:	mov	rcx, rdi
0x14000166b:	call	0x1400118b0
0x140001670:	inc	rbp
0x140001673:	mov	r13, qword ptr [rbx + 0x2000]
0x14000167a:	cmp	rbp, r13
0x14000167d:	jbe	0x14000169f
0x14000167f:	lea	rcx, [rip + 0xbcbf6]
0x140001686:	lea	rdx, [rip + 0xbd565]
0x14000168d:	mov	r8d, 0x79
0x140001693:	call	0x140088ff4
0x140001698:	mov	r13, qword ptr [rbx + 0x2000]
0x14000169f:	mov	rdi, rbp
0x1400016a2:	cmp	r13, rbp
0x1400016a5:	ja	0x1400015ec
0x1400016ab:	jmp	0x1400016b7
0x1400016ad:	xor	ebp, ebp
0x1400016af:	xor	r13d, r13d
0x1400016b2:	jmp	0x14000171d
0x1400016b4:	mov	rbp, rdi
0x1400016b7:	test	rbp, rbp
0x1400016ba:	jne	0x140001718
0x1400016bc:	cmp	r13, 0x2000
0x1400016c3:	jne	0x140001716
0x1400016c5:	lea	rcx, [rip + 0xaf710]
0x1400016cc:	mov	edx, 0x2000
0x1400016d1:	mov	r8, rbx
0x1400016d4:	call	0x14005f1b3
0x1400016d9:	mov	rdi, rax
0x1400016dc:	mov	rax, qword ptr [rsi]
0x1400016df:	mov	qword ptr [rsp + 0x20], rdi
0x1400016e4:	mov	dword ptr [rsp + 0x28], 0
0x1400016ec:	mov	rcx, rsi
0x1400016ef:	mov	edx, 2
0x1400016f4:	xor	r8d, r8d
0x1400016f7:	xor	r9d, r9d
0x1400016fa:	call	qword ptr [rax]
0x1400016fc:	mov	rcx, rdi
0x1400016ff:	call	0x1400118b0
0x140001704:	mov	qword ptr [rbx + 0x2000], 0
0x14000170f:	xor	ebp, ebp
0x140001711:	xor	r13d, r13d
0x140001714:	jmp	0x140001718
0x140001716:	xor	ebp, ebp
0x140001718:	mov	rdi, qword ptr [rsp + 0x30]
0x14000171d:	sub	rdi, r15
0x140001720:	sub	r13, rbp
0x140001723:	je	0x140001736
0x140001725:	add	rbp, rbx
0x140001728:	mov	rcx, rbx
0x14000172b:	mov	rdx, rbp
0x14000172e:	mov	r8, r13
0x140001731:	call	0x14007e6c0
0x140001736:	add	r12, r15
0x140001739:	mov	qword ptr [rbx + 0x2000], r13
0x140001740:	test	rdi, rdi
0x140001743:	jne	0x140001584
0x140001749:	add	rsp, 0x38
0x14000174d:	pop	rbx
0x14000174e:	pop	rbp
0x14000174f:	pop	rdi
0x140001750:	pop	rsi
0x140001751:	pop	r12
0x140001753:	pop	r13
0x140001755:	pop	r14
0x140001757:	pop	r15
0x140001759:	ret	
0x14000175a:	int3	
0x14000175b:	int3	
0x14000175c:	cmp	byte ptr [rcx + 0x10], 0
0x140001760:	je	0x140001763
0x140001762:	ret	
0x140001763:	mov	rdx, rcx
0x140001766:	mov	byte ptr [rcx + 0x10], 1
0x14000176a:	lea	rcx, [rip + 0x84]
0x140001771:	jmp	0x140001776
0x140001776:	push	rsi
0x140001777:	push	rdi
0x140001778:	push	rbx
0x140001779:	sub	rsp, 0x20
0x14000177d:	mov	rdi, rdx
0x140001780:	mov	rbx, rcx
0x140001783:	mov	ecx, 1
0x140001788:	mov	edx, 0x18
0x14000178d:	xor	r8d, r8d
0x140001790:	call	0x140011830
0x140001795:	mov	rsi, rax
0x140001798:	mov	qword ptr [rax + 8], rbx
0x14000179c:	mov	qword ptr [rax + 0x10], rdi
0x1400017a0:	mov	rax, qword ptr [rip + 0xc9459]
0x1400017a7:	test	rax, rax
0x1400017aa:	je	0x1400017c9
0x1400017ac:	cmp	qword ptr [rip + 0xc943c], 0
0x1400017b4:	jne	0x1400017c9
0x1400017b6:	cmp	qword ptr [rip + 0xc942a], 0
0x1400017be:	jne	0x1400017c9
0x1400017c0:	mov	rcx, qword ptr [rip + 0xc9441]
0x1400017c7:	call	rax
0x1400017c9:	mov	rax, qword ptr [rip + 0xc9428]
0x1400017d0:	test	rax, rax
0x1400017d3:	lea	rcx, [rip + 0xc9416]
0x1400017da:	cmovne	rcx, rax
0x1400017de:	mov	qword ptr [rcx], rsi
0x1400017e1:	mov	qword ptr [rip + 0xc9410], rsi
0x1400017e8:	xor	eax, eax
0x1400017ea:	mov	qword ptr [rsi], rax
0x1400017ed:	add	rsp, 0x20
0x1400017f1:	pop	rbx
0x1400017f2:	pop	rdi
0x1400017f3:	pop	rsi
0x1400017f4:	ret	
0x1400017f5:	mov	rax, rcx
0x1400017f8:	mov	byte ptr [rcx + 0x10], 0
0x1400017fc:	mov	rcx, qword ptr [rcx + 8]
0x140001800:	jmp	qword ptr [rax]
0x140001803:	push	r14
0x140001805:	push	rsi
0x140001806:	push	rdi
0x140001807:	push	rbx
0x140001808:	sub	rsp, 0x28
0x14000180c:	mov	rsi, rcx
0x14000180f:	mov	rcx, qword ptr [rip + 0xc93da]
0x140001816:	test	rcx, rcx
0x140001819:	je	0x140001880
0x14000181b:	xor	ebx, ebx
0x14000181d:	lea	r14, [rip - 0x2f]
0x140001824:	xor	edi, edi
0x140001826:	mov	rax, qword ptr [rcx]
0x140001829:	mov	qword ptr [rip + 0xc93c0], rax
0x140001830:	mov	rax, qword ptr [rcx + 0x10]
0x140001834:	cmp	rax, rsi
0x140001837:	je	0x140001852
0x140001839:	cmp	qword ptr [rcx + 8], r14
0x14000183d:	jne	0x140001845
0x14000183f:	cmp	qword ptr [rax + 8], rsi
0x140001843:	je	0x140001852
0x140001845:	test	rbx, rbx
0x140001848:	je	0x140001859
0x14000184a:	mov	qword ptr [rdi], rcx
0x14000184d:	mov	rdi, rcx
0x140001850:	jmp	0x14000185f
0x140001852:	call	0x1400118b0
0x140001857:	jmp	0x14000185f
0x140001859:	mov	rdi, rcx
0x14000185c:	mov	rbx, rcx
0x14000185f:	mov	rcx, qword ptr [rip + 0xc938a]
0x140001866:	test	rcx, rcx
0x140001869:	jne	0x140001826
0x14000186b:	mov	qword ptr [rip + 0xc937e], rbx
0x140001872:	mov	qword ptr [rip + 0xc937f], rdi
0x140001879:	test	rdi, rdi
0x14000187c:	jne	0x140001892
0x14000187e:	jmp	0x140001899
0x140001880:	mov	qword ptr [rip + 0xc9365], 0
0x14000188b:	lea	rdi, [rip + 0xc9366]
0x140001892:	mov	qword ptr [rdi], 0
0x140001899:	add	rsp, 0x28
0x14000189d:	pop	rbx
0x14000189e:	pop	rdi
0x14000189f:	pop	rsi
0x1400018a0:	pop	r14
0x1400018a2:	ret	
0x1400018a3:	sub	rsp, 0x28
0x1400018a7:	mov	rax, qword ptr [rip + 0xc9342]
0x1400018ae:	test	rax, rax
0x1400018b1:	je	0x1400018f6
0x1400018b3:	mov	qword ptr [rip + 0xc932e], rax
0x1400018ba:	mov	rcx, qword ptr [rax]
0x1400018bd:	mov	qword ptr [rip + 0xc932c], rcx
0x1400018c4:	test	rcx, rcx
0x1400018c7:	jne	0x1400018d4
0x1400018c9:	mov	qword ptr [rip + 0xc9324], 0
0x1400018d4:	mov	rcx, qword ptr [rax + 0x10]
0x1400018d8:	call	qword ptr [rax + 8]
0x1400018db:	mov	rcx, qword ptr [rip + 0xc9306]
0x1400018e2:	call	0x1400118b0
0x1400018e7:	mov	qword ptr [rip + 0xc92f6], 0
0x1400018f2:	mov	al, 1
0x1400018f4:	jmp	0x1400018f8
0x1400018f6:	xor	eax, eax
0x1400018f8:	add	rsp, 0x28
0x1400018fc:	ret	
0x1400018fd:	mov	rax, qword ptr [rip + 0xc92e4]
0x140001904:	or	rax, qword ptr [rip + 0xc92e5]
0x14000190b:	setne	al
0x14000190e:	ret	
0x14000190f:	int3	
0x140001910:	push	rsi
0x140001911:	sub	rsp, 0x20
0x140001915:	mov	rdx, qword ptr [rip + 0xc92f4]
0x14000191c:	mov	eax, 0xffffffff
0x140001921:	test	rdx, rdx
0x140001924:	je	0x140001987
0x140001926:	cmp	qword ptr [rcx + 0x28], 1
0x14000192b:	jne	0x140001987
0x14000192d:	mov	rcx, qword ptr [rcx + 0x38]
0x140001931:	mov	rcx, qword ptr [rcx]
0x140001934:	cmp	byte ptr [rcx + 8], 0
0x140001938:	jne	0x140001987
0x14000193a:	xor	eax, eax
0x14000193c:	cmp	byte ptr [rip + 0xc930d], 0
0x140001943:	jne	0x140001987
0x140001945:	call	0x14001451d
0x14000194a:	mov	rsi, qword ptr [rip + 0xc92bf]
0x140001951:	mov	rcx, rsi
0x140001954:	call	0x14008cbc0
0x140001959:	mov	rcx, rsi
0x14000195c:	mov	rdx, rax
0x14000195f:	call	0x140074310
0x140001964:	mov	rcx, qword ptr [rip + 0xc92a5]
0x14000196b:	call	0x1400118b0
0x140001970:	mov	qword ptr [rip + 0xc9295], 0
0x14000197b:	mov	byte ptr [rip + 0xc92ce], 1
0x140001982:	mov	eax, 1
0x140001987:	add	rsp, 0x20
0x14000198b:	pop	rsi
0x14000198c:	ret	
0x14000198d:	int3	
0x14000198e:	int3	
0x14000198f:	int3	
0x140001990:	push	r15
0x140001992:	push	r14
0x140001994:	push	r13
0x140001996:	push	r12
0x140001998:	push	rsi
0x140001999:	push	rdi
0x14000199a:	push	rbp
0x14000199b:	push	rbx
0x14000199c:	mov	eax, 0x1028
0x1400019a1:	call	0x14007d570
0x1400019a6:	sub	rsp, rax
0x1400019a9:	mov	r14, r9
0x1400019ac:	mov	esi, r8d
0x1400019af:	mov	rdi, rcx
0x1400019b2:	mov	rax, qword ptr [rip + 0xc8737]
0x1400019b9:	xor	rax, rsp
0x1400019bc:	mov	qword ptr [rsp + 0x1020], rax
0x1400019c4:	cmp	byte ptr [rcx], 0x2d
0x1400019c7:	jne	0x140001eda
0x1400019cd:	mov	rbx, rdx
0x1400019d0:	lea	rdx, [rip + 0xb4ee6]
0x1400019d7:	mov	rcx, rdi
0x1400019da:	call	0x14008c8e0
0x1400019df:	test	eax, eax
0x1400019e1:	je	0x140001f69
0x1400019e7:	lea	rdx, [rip + 0xb21cc]
0x1400019ee:	mov	rcx, rdi
0x1400019f1:	call	0x14008c8e0
0x1400019f6:	test	eax, eax
0x1400019f8:	je	0x140001fa5
0x1400019fe:	lea	rdx, [rip + 0xade3a]
0x140001a05:	mov	rcx, rdi
0x140001a08:	call	0x14008c8e0
0x140001a0d:	test	eax, eax
0x140001a0f:	je	0x140002012
0x140001a15:	lea	rdx, [rip + 0xb150a]
0x140001a1c:	mov	rcx, rdi
0x140001a1f:	call	0x14008c8e0
0x140001a24:	test	eax, eax
0x140001a26:	je	0x140002109
0x140001a2c:	lea	rdx, [rip + 0xad2be]
0x140001a33:	mov	rcx, rdi
0x140001a36:	call	0x14008c8e0
0x140001a3b:	xor	ebp, ebp
0x140001a3d:	test	eax, eax
0x140001a3f:	je	0x14000216b
0x140001a45:	lea	rdx, [rip + 0xb1dbf]
0x140001a4c:	mov	rcx, rdi
0x140001a4f:	call	0x14008c8e0
0x140001a54:	test	eax, eax
0x140001a56:	je	0x14000225a
0x140001a5c:	lea	rdx, [rip + 0xad2c6]
0x140001a63:	mov	rcx, rdi
0x140001a66:	call	0x14008c8e0
0x140001a6b:	test	eax, eax
0x140001a6d:	jne	0x140001a83
0x140001a6f:	test	esi, esi
0x140001a71:	js	0x140002593
0x140001a77:	or	byte ptr [rip + 0xcb5c2], 1
0x140001a7e:	mov	ebp, 1
0x140001a83:	lea	rdx, [rip + 0xb1dab]
0x140001a8a:	mov	rcx, rdi
0x140001a8d:	call	0x14008c8e0
0x140001a92:	test	eax, eax
0x140001a94:	je	0x1400022d0
0x140001a9a:	lea	rdx, [rip + 0xad5fc]
0x140001aa1:	mov	rcx, rdi
0x140001aa4:	call	0x14008c8e0
0x140001aa9:	test	eax, eax
0x140001aab:	je	0x140002315
0x140001ab1:	lea	rdx, [rip + 0xacce7]
0x140001ab8:	mov	rcx, rdi
0x140001abb:	call	0x14008c8e0
0x140001ac0:	test	eax, eax
0x140001ac2:	je	0x140002408
0x140001ac8:	lea	rdx, [rip + 0xb5f51]
0x140001acf:	mov	rcx, rdi
0x140001ad2:	call	0x14008c8e0
0x140001ad7:	test	eax, eax
0x140001ad9:	je	0x14000235a
0x140001adf:	lea	rdx, [rip + 0xb5b3c]
0x140001ae6:	mov	rcx, rdi
0x140001ae9:	call	0x14008c8e0
0x140001aee:	test	eax, eax
0x140001af0:	je	0x14000235a
0x140001af6:	lea	rdx, [rip + 0xb683e]
0x140001afd:	mov	rcx, rdi
0x140001b00:	call	0x14008c8e0
0x140001b05:	test	eax, eax
0x140001b07:	je	0x14000235a
0x140001b0d:	lea	rdx, [rip + 0xb5111]
0x140001b14:	mov	rcx, rdi
0x140001b17:	call	0x14008c8e0
0x140001b1c:	test	eax, eax
0x140001b1e:	je	0x14000259d
0x140001b24:	lea	rdx, [rip + 0xb180b]
0x140001b2b:	mov	rcx, rdi
0x140001b2e:	call	0x14008c8e0
0x140001b33:	test	eax, eax
0x140001b35:	je	0x140002635
0x140001b3b:	lea	rdx, [rip + 0xb5b8a]
0x140001b42:	mov	rcx, rdi
0x140001b45:	call	0x14008c8e0
0x140001b4a:	test	eax, eax
0x140001b4c:	je	0x140002768
0x140001b52:	lea	rdx, [rip + 0xacfbe]
0x140001b59:	mov	rcx, rdi
0x140001b5c:	call	0x14008c8e0
0x140001b61:	test	eax, eax
0x140001b63:	je	0x1400027b1
0x140001b69:	lea	rdx, [rip + 0xada48]
0x140001b70:	mov	rcx, rdi
0x140001b73:	call	0x14008c8e0
0x140001b78:	test	eax, eax
0x140001b7a:	je	0x140001ba2
0x140001b7c:	lea	rdx, [rip + 0xada24]
0x140001b83:	mov	rcx, rdi
0x140001b86:	call	0x14008c8e0
0x140001b8b:	test	eax, eax
0x140001b8d:	je	0x140001ba2
0x140001b8f:	lea	rdx, [rip + 0xada3d]
0x140001b96:	mov	rcx, rdi
0x140001b99:	call	0x14008c8e0
0x140001b9e:	test	eax, eax
0x140001ba0:	jne	0x140001bd9
0x140001ba2:	mov	ebp, 1
0x140001ba7:	test	esi, esi
0x140001ba9:	js	0x140002f8a
0x140001baf:	test	byte ptr [rip + 0xc909e], 2
0x140001bb6:	jne	0x140002f74
0x140001bbc:	test	esi, esi
0x140001bbe:	jne	0x140002433
0x140001bc4:	mov	rcx, r14
0x140001bc7:	mov	edx, 0x1d
0x140001bcc:	mov	r8b, 1
0x140001bcf:	call	0x140003a71
0x140001bd4:	mov	ebp, 1
0x140001bd9:	lea	rdx, [rip + 0xad9cf]
0x140001be0:	mov	rcx, rdi
0x140001be3:	call	0x14008c8e0
0x140001be8:	test	eax, eax
0x140001bea:	je	0x140001c12
0x140001bec:	lea	rdx, [rip + 0xad9aa]
0x140001bf3:	mov	rcx, rdi
0x140001bf6:	call	0x14008c8e0
0x140001bfb:	test	eax, eax
0x140001bfd:	je	0x140001c12
0x140001bff:	lea	rdx, [rip + 0xad9c2]
0x140001c06:	mov	rcx, rdi
0x140001c09:	call	0x14008c8e0
0x140001c0e:	test	eax, eax
0x140001c10:	jne	0x140001c49
0x140001c12:	mov	ebp, 1
0x140001c17:	test	esi, esi
0x140001c19:	js	0x140002f8a
0x140001c1f:	test	byte ptr [rip + 0xc902e], 2
0x140001c26:	jne	0x140002f74
0x140001c2c:	test	esi, esi
0x140001c2e:	jne	0x140002433
0x140001c34:	mov	rcx, r14
0x140001c37:	mov	edx, 0x1d
0x140001c3c:	xor	r8d, r8d
0x140001c3f:	call	0x140003a71
0x140001c44:	mov	ebp, 1
0x140001c49:	lea	rdx, [rip + 0xb2d63]
0x140001c50:	mov	rcx, rdi
0x140001c53:	call	0x14008c8e0
0x140001c58:	test	eax, eax
0x140001c5a:	je	0x1400028be
0x140001c60:	lea	rdx, [rip + 0xb2d2a]
0x140001c67:	mov	rcx, rdi
0x140001c6a:	call	0x14008c8e0
0x140001c6f:	test	eax, eax
0x140001c71:	je	0x140002909
0x140001c77:	lea	rdx, [rip + 0xb6b20]
0x140001c7e:	mov	rcx, rdi
0x140001c81:	call	0x14008c8e0
0x140001c86:	test	eax, eax
0x140001c88:	je	0x140002956
0x140001c8e:	lea	rdx, [rip + 0xb5359]
0x140001c95:	mov	rcx, rdi
0x140001c98:	call	0x14008c8e0
0x140001c9d:	test	eax, eax
0x140001c9f:	je	0x140002992
0x140001ca5:	lea	rdx, [rip + 0xb5506]
0x140001cac:	mov	rcx, rdi
0x140001caf:	call	0x14008c8e0
0x140001cb4:	test	eax, eax
0x140001cb6:	je	0x1400029ce
0x140001cbc:	lea	rdx, [rip + 0xace36]
0x140001cc3:	mov	rcx, rdi
0x140001cc6:	call	0x14008c8e0
0x140001ccb:	test	eax, eax
0x140001ccd:	je	0x140002a0a
0x140001cd3:	lea	rdx, [rip + 0xadf66]
0x140001cda:	mov	rcx, rdi
0x140001cdd:	call	0x14008c8e0
0x140001ce2:	test	eax, eax
0x140001ce4:	je	0x140002a46
0x140001cea:	lea	rdx, [rip + 0xb5712]
0x140001cf1:	mov	rcx, rdi
0x140001cf4:	call	0x14008c8e0
0x140001cf9:	test	eax, eax
0x140001cfb:	je	0x140002a7e
0x140001d01:	lea	rdx, [rip + 0xb5bb4]
0x140001d08:	mov	rcx, rdi
0x140001d0b:	call	0x14008c8e0
0x140001d10:	test	eax, eax
0x140001d12:	je	0x140002aaa
0x140001d18:	lea	rdx, [rip + 0xb6898]
0x140001d1f:	mov	rcx, rdi
0x140001d22:	call	0x14008c8e0
0x140001d27:	test	eax, eax
0x140001d29:	je	0x140002ae6
0x140001d2f:	lea	rdx, [rip + 0xb8024]
0x140001d36:	mov	rcx, rdi
0x140001d39:	call	0x14008c8e0
0x140001d3e:	test	eax, eax
0x140001d40:	je	0x140002b22
0x140001d46:	lea	rdx, [rip + 0xb7c50]
0x140001d4d:	mov	rcx, rdi
0x140001d50:	call	0x14008c8e0
0x140001d55:	test	eax, eax
0x140001d57:	je	0x140002b5e
0x140001d5d:	lea	rdx, [rip + 0xb1d21]
0x140001d64:	mov	rcx, rdi
0x140001d67:	call	0x14008c8e0
0x140001d6c:	test	eax, eax
0x140001d6e:	je	0x140002b9d
0x140001d74:	lea	rdx, [rip + 0xb79cd]
0x140001d7b:	mov	rcx, rdi
0x140001d7e:	call	0x14008c8e0
0x140001d83:	test	eax, eax
0x140001d85:	je	0x140001d9a
0x140001d87:	lea	rdx, [rip + 0xb7927]
0x140001d8e:	mov	rcx, rdi
0x140001d91:	call	0x14008c8e0
0x140001d96:	test	eax, eax
0x140001d98:	jne	0x140001dc0
0x140001d9a:	test	esi, esi
0x140001d9c:	js	0x140002593
0x140001da2:	jne	0x140002aa0
0x140001da8:	mov	ebp, 1
0x140001dad:	mov	rcx, r14
0x140001db0:	mov	edx, 3
0x140001db5:	mov	r8d, 1
0x140001dbb:	call	0x140003b70
0x140001dc0:	lea	rdx, [rip + 0xb7827]
0x140001dc7:	mov	rcx, rdi
0x140001dca:	call	0x14008c8e0
0x140001dcf:	test	eax, eax
0x140001dd1:	je	0x140001de6
0x140001dd3:	lea	rdx, [rip + 0xb7601]
0x140001dda:	mov	rcx, rdi
0x140001ddd:	call	0x14008c8e0
0x140001de2:	test	eax, eax
0x140001de4:	jne	0x140001e0c
0x140001de6:	test	esi, esi
0x140001de8:	js	0x140002593
0x140001dee:	jne	0x140002aa0
0x140001df4:	mov	rcx, r14
0x140001df7:	mov	edx, 3
0x140001dfc:	mov	r8d, 2
0x140001e02:	call	0x140003b70
0x140001e07:	mov	ebp, 1
0x140001e0c:	lea	rdx, [rip + 0xb250e]
0x140001e13:	mov	rcx, rdi
0x140001e16:	call	0x14008c8e0
0x140001e1b:	test	eax, eax
0x140001e1d:	je	0x140002c0f
0x140001e23:	lea	rdx, [rip + 0xb2040]
0x140001e2a:	mov	rcx, rdi
0x140001e2d:	call	0x14008c8e0
0x140001e32:	test	eax, eax
0x140001e34:	je	0x140002ebd
0x140001e3a:	lea	rdx, [rip + 0xb2035]
0x140001e41:	mov	rcx, rdi
0x140001e44:	call	0x14008c8e0
0x140001e49:	test	eax, eax
0x140001e4b:	je	0x140002e3c
0x140001e51:	lea	rdx, [rip + 0xb2007]
0x140001e58:	mov	rcx, rdi
0x140001e5b:	call	0x14008c8e0
0x140001e60:	test	eax, eax
0x140001e62:	je	0x140002e3c
0x140001e68:	lea	rdx, [rip + 0xb3e7b]
0x140001e6f:	mov	rcx, rdi
0x140001e72:	call	0x14008c8e0
0x140001e77:	test	eax, eax
0x140001e79:	je	0x140002f28
0x140001e7f:	lea	rdx, [rip + 0xb18eb]
0x140001e86:	mov	rcx, rdi
0x140001e89:	call	0x14008c8e0
0x140001e8e:	test	eax, eax
0x140001e90:	je	0x140001ebc
0x140001e92:	lea	rdx, [rip + 0xb18ca]
0x140001e99:	mov	rcx, rdi
0x140001e9c:	call	0x14008c8e0
0x140001ea1:	test	eax, eax
0x140001ea3:	je	0x140001ebc
0x140001ea5:	lea	rdx, [rip + 0xb18aa]
0x140001eac:	mov	rcx, rdi
0x140001eaf:	call	0x14008c8e0
0x140001eb4:	test	eax, eax
0x140001eb6:	jne	0x140002f8a
0x140001ebc:	mov	ebp, 1
0x140001ec1:	test	esi, esi
0x140001ec3:	js	0x140002f8a
0x140001ec9:	call	0x1400784b9
0x140001ece:	mov	byte ptr [rip + 0xcb18b], 1
0x140001ed5:	jmp	0x140002f8a
0x140001eda:	xor	ebp, ebp
0x140001edc:	test	esi, esi
0x140001ede:	js	0x140002f8a
0x140001ee4:	mov	eax, dword ptr [rip + 0xc8d6a]
0x140001eea:	test	al, 4
0x140001eec:	je	0x140001efb
0x140001eee:	cmp	byte ptr [rip + 0xc8d63], 0
0x140001ef5:	je	0x140001fee
0x140001efb:	test	al, 0x40
0x140001efd:	je	0x140002f8a
0x140001f03:	cmp	byte ptr [rip + 0xc8d4f], 0
0x140001f0a:	jne	0x140002f8a
0x140001f10:	mov	rcx, rdi
0x140001f13:	call	0x14005f215
0x140001f18:	mov	rsi, rax
0x140001f1b:	lea	rcx, [rip + 0xb57aa]
0x140001f22:	mov	ebp, 1
0x140001f27:	mov	rdx, rax
0x140001f2a:	mov	r8d, 1
0x140001f30:	mov	r9, r14
0x140001f33:	call	0x140001990
0x140001f38:	mov	edi, eax
0x140001f3a:	mov	rcx, rsi
0x140001f3d:	call	0x1400118b0
0x140001f42:	cmp	edi, 2
0x140001f45:	je	0x14000224e
0x140001f4b:	lea	rcx, [rip + 0xbde40]
0x140001f52:	lea	rdx, [rip + 0xbcbeb]
0x140001f59:	mov	r8d, 0x180
0x140001f5f:	call	0x140088ff4
0x140001f64:	jmp	0x14000224e
0x140001f69:	test	rbx, rbx
0x140001f6c:	je	0x140002f85
0x140001f72:	mov	ebp, 2
0x140001f77:	test	esi, esi
0x140001f79:	js	0x140002f8a
0x140001f7f:	mov	rcx, rbx
0x140001f82:	mov	rdx, r14
0x140001f85:	call	0x140021a8d
0x140001f8a:	mov	byte ptr [rip + 0xcbd6f], 1
0x140001f91:	mov	rcx, rbx
0x140001f94:	call	0x14005f215
0x140001f99:	mov	qword ptr [rip + 0xcbd68], rax
0x140001fa0:	jmp	0x140002f8a
0x140001fa5:	mov	ebp, 1
0x140001faa:	test	esi, esi
0x140001fac:	js	0x140002f8a
0x140001fb2:	test	byte ptr [rip + 0xc8c9b], 3
0x140001fb9:	jne	0x140002f74
0x140001fbf:	test	esi, esi
0x140001fc1:	jne	0x140002433
0x140001fc7:	mov	dword ptr [rip + 0xcb087], 3
0x140001fd1:	mov	dword ptr [rip + 0xcb081], 0x16
0x140001fdb:	mov	rcx, r14
0x140001fde:	mov	edx, 2
0x140001fe3:	mov	r8d, 3
0x140001fe9:	jmp	0x14000214d
0x140001fee:	test	al, 0x20
0x140001ff0:	je	0x14000206c
0x140001ff2:	cmp	byte ptr [rip + 0xcbd07], 0
0x140001ff9:	je	0x14000206c
0x140001ffb:	mov	rcx, r14
0x140001ffe:	call	0x1400145f4
0x140002003:	test	al, al
0x140002005:	je	0x14000206c
0x140002007:	mov	eax, dword ptr [rip + 0xc8c47]
0x14000200d:	jmp	0x140001efb
0x140002012:	mov	ebp, 1
0x140002017:	test	esi, esi
0x140002019:	js	0x140002f8a
0x14000201f:	test	byte ptr [rip + 0xc8c2e], 3
0x140002026:	jne	0x140002f74
0x14000202c:	test	esi, esi
0x14000202e:	jne	0x140002433
0x140002034:	mov	dword ptr [rip + 0xcb01a], 1
0x14000203e:	mov	dword ptr [rip + 0xcb014], 0x17
0x140002048:	mov	ebp, 1
0x14000204d:	mov	rcx, r14
0x140002050:	mov	edx, 2
0x140002055:	mov	r8d, 1
0x14000205b:	call	0x140003b70
0x140002060:	mov	r8d, dword ptr [rip + 0xcaff5]
0x140002067:	jmp	0x14000215e
0x14000206c:	lea	rdx, [rip + 0xb6bc4]
0x140002073:	mov	r8d, 7
0x140002079:	mov	rcx, rdi
0x14000207c:	call	0x14008cc80
0x140002081:	test	eax, eax
0x140002083:	je	0x1400021b1
0x140002089:	mov	esi, dword ptr [rip + 0xc8bc5]
0x14000208f:	mov	r15d, 0xffffffff
0x140002095:	test	sil, 0x10
0x140002099:	je	0x14000246f
0x14000209f:	mov	rcx, rdi
0x1400020a2:	mov	edx, 0x2c
0x1400020a7:	call	0x14007ecb0
0x1400020ac:	test	rax, rax
0x1400020af:	je	0x14000246f
0x1400020b5:	mov	rbx, rax
0x1400020b8:	mov	edx, ebx
0x1400020ba:	sub	edx, edi
0x1400020bc:	lea	rcx, [rip + 0xaed2f]
0x1400020c3:	mov	r8, rdi
0x1400020c6:	call	0x14005f1b3
0x1400020cb:	mov	rsi, rax
0x1400020ce:	mov	rcx, rax
0x1400020d1:	call	0x14001d6ec
0x1400020d6:	test	rax, rax
0x1400020d9:	je	0x140002446
0x1400020df:	mov	rdi, rax
0x1400020e2:	mov	r8d, dword ptr [rax + 0x88]
0x1400020e9:	mov	dword ptr [rip + 0xcaf68], r8d
0x1400020f0:	mov	rcx, r14
0x1400020f3:	mov	edx, 2
0x1400020f8:	call	0x140003b70
0x1400020fd:	mov	r15d, dword ptr [rdi + 0x8c]
0x140002104:	jmp	0x14000245b
0x140002109:	mov	ebp, 1
0x14000210e:	test	esi, esi
0x140002110:	js	0x140002f8a
0x140002116:	test	byte ptr [rip + 0xc8b37], 3
0x14000211d:	jne	0x140002f74
0x140002123:	test	esi, esi
0x140002125:	jne	0x140002433
0x14000212b:	mov	dword ptr [rip + 0xcaf23], 2
0x140002135:	mov	dword ptr [rip + 0xcaf1d], 0x201
0x14000213f:	mov	rcx, r14
0x140002142:	mov	edx, 2
0x140002147:	mov	r8d, 2
0x14000214d:	call	0x140003b70
0x140002152:	mov	r8d, dword ptr [rip + 0xcaf03]
0x140002159:	mov	ebp, 1
0x14000215e:	mov	rcx, r14
0x140002161:	mov	edx, 1
0x140002166:	jmp	0x140002589
0x14000216b:	mov	ebp, 1
0x140002170:	test	esi, esi
0x140002172:	js	0x140002f8a
0x140002178:	test	byte ptr [rip + 0xc8ad5], 3
0x14000217f:	jne	0x140002f74
0x140002185:	test	esi, esi
0x140002187:	jne	0x140002433
0x14000218d:	mov	dword ptr [rip + 0xcaec1], 0
0x140002197:	mov	rcx, r14
0x14000219a:	mov	edx, 2
0x14000219f:	xor	r8d, r8d
0x1400021a2:	call	0x140003b70
0x1400021a7:	mov	ebp, 1
0x1400021ac:	jmp	0x140001a45
0x1400021b1:	lea	rsi, [rdi + 7]
0x1400021b5:	cmp	byte ptr [rdi + 7], 0x2f
0x1400021b9:	jne	0x1400021c7
0x1400021bb:	lea	rax, [rdi + 9]
0x1400021bf:	cmp	byte ptr [rdi + 8], 0x2f
0x1400021c3:	cmove	rsi, rax
0x1400021c7:	mov	ebp, 1
0x1400021cc:	mov	rcx, r14
0x1400021cf:	mov	edx, 2
0x1400021d4:	mov	r8d, 1
0x1400021da:	call	0x140003b70
0x1400021df:	lea	rdx, [rip + 0xb7e46]
0x1400021e6:	mov	rcx, rsi
0x1400021e9:	call	0x14005eff5
0x1400021ee:	mov	rdi, rax
0x1400021f1:	lea	rcx, [rip + 0xaebfa]
0x1400021f8:	mov	edx, edi
0x1400021fa:	mov	r8, rsi
0x1400021fd:	call	0x14005f1b3
0x140002202:	mov	rbx, rax
0x140002205:	mov	rcx, r14
0x140002208:	xor	edx, edx
0x14000220a:	mov	r8, rax
0x14000220d:	call	0x140003c9c
0x140002212:	mov	rcx, rbx
0x140002215:	call	0x1400118b0
0x14000221a:	mov	byte ptr [rip + 0xc8a37], 1
0x140002221:	cmp	byte ptr [rsi + rdi], 0x3a
0x140002225:	jne	0x1400022bd
0x14000222b:	add	rsi, rdi
0x14000222e:	inc	rsi
0x140002231:	mov	rcx, rsi
0x140002234:	call	0x14008a488
0x140002239:	mov	ebp, 1
0x14000223e:	mov	rcx, r14
0x140002241:	mov	edx, 1
0x140002246:	mov	r8d, eax
0x140002249:	call	0x140003b70
0x14000224e:	mov	byte ptr [rip + 0xc8a04], 1
0x140002255:	jmp	0x140002f8a
0x14000225a:	mov	ebp, 1
0x14000225f:	test	esi, esi
0x140002261:	js	0x140002f8a
0x140002267:	test	byte ptr [rip + 0xc89e6], 3
0x14000226e:	jne	0x140002f74
0x140002274:	test	esi, esi
0x140002276:	jne	0x140002433
0x14000227c:	mov	dword ptr [rip + 0xcadd2], 4
0x140002286:	mov	rcx, r14
0x140002289:	mov	edx, 2
0x14000228e:	mov	r8d, 4
0x140002294:	call	0x140003b70
0x140002299:	mov	rcx, r14
0x14000229c:	xor	edx, edx
0x14000229e:	call	0x14000359b
0x1400022a3:	mov	rcx, r14
0x1400022a6:	mov	edx, 0x3c
0x1400022ab:	mov	r8, rax
0x1400022ae:	call	0x140003c9c
0x1400022b3:	mov	ebp, 1
0x1400022b8:	jmp	0x140001a5c
0x1400022bd:	mov	rcx, r14
0x1400022c0:	mov	edx, 1
0x1400022c5:	mov	r8d, 0xffffffff
0x1400022cb:	jmp	0x140002589
0x1400022d0:	test	rbx, rbx
0x1400022d3:	je	0x140002f85
0x1400022d9:	mov	ebp, 2
0x1400022de:	test	esi, esi
0x1400022e0:	js	0x140002f8a
0x1400022e6:	test	byte ptr [rip + 0xc8967], 2
0x1400022ed:	jne	0x140002f74
0x1400022f3:	test	esi, esi
0x1400022f5:	jne	0x140002433
0x1400022fb:	mov	rcx, r14
0x1400022fe:	mov	edx, 0x37
0x140002303:	mov	r8, rbx
0x140002306:	call	0x140003c9c
0x14000230b:	mov	ebp, 2
0x140002310:	jmp	0x140001a9a
0x140002315:	test	rbx, rbx
0x140002318:	je	0x140002f85
0x14000231e:	mov	ebp, 2
0x140002323:	test	esi, esi
0x140002325:	js	0x140002f8a
0x14000232b:	test	byte ptr [rip + 0xc8922], 2
0x140002332:	jne	0x140002f74
0x140002338:	test	esi, esi
0x14000233a:	jne	0x140002433
0x140002340:	mov	rcx, r14
0x140002343:	mov	edx, 9
0x140002348:	mov	r8, rbx
0x14000234b:	call	0x140003c9c
0x140002350:	mov	ebp, 2
0x140002355:	jmp	0x140001ab1
0x14000235a:	test	rbx, rbx
0x14000235d:	je	0x140002f85
0x140002363:	mov	ebp, 2
0x140002368:	test	esi, esi
0x14000236a:	js	0x140002f8a
0x140002370:	test	byte ptr [rip + 0xc88dd], 3
0x140002377:	jne	0x140002f74
0x14000237d:	test	esi, esi
0x14000237f:	jne	0x140002433
0x140002385:	lea	rdx, [rip + 0xb5faf]
0x14000238c:	mov	rcx, rdi
0x14000238f:	call	0x14008c8e0
0x140002394:	test	eax, eax
0x140002396:	je	0x14000281d
0x14000239c:	movsx	r15d, byte ptr [rdi + 1]
0x1400023a1:	mov	rcx, rbx
0x1400023a4:	mov	edx, 0x3a
0x1400023a9:	call	0x14005f08e
0x1400023ae:	test	rax, rax
0x1400023b1:	je	0x140002809
0x1400023b7:	mov	r13, rax
0x1400023ba:	mov	r12, rax
0x1400023bd:	lea	rcx, [r13 + 1]
0x1400023c1:	mov	edx, 0x3a
0x1400023c6:	call	0x14005f08e
0x1400023cb:	mov	rcx, rax
0x1400023ce:	mov	rax, r13
0x1400023d1:	mov	r13, rcx
0x1400023d4:	test	rcx, rcx
0x1400023d7:	jne	0x1400023ba
0x1400023d9:	test	r12, r12
0x1400023dc:	je	0x140002809
0x1400023e2:	mov	r8d, r12d
0x1400023e5:	sub	r8d, ebx
0x1400023e8:	lea	rcx, [rip + 0xae963]
0x1400023ef:	mov	edx, r15d
0x1400023f2:	mov	r9, rbx
0x1400023f5:	call	0x14005f1b3
0x1400023fa:	mov	r15, rax
0x1400023fd:	inc	r12
0x140002400:	mov	rcx, r12
0x140002403:	jmp	0x140002836
0x140002408:	test	rbx, rbx
0x14000240b:	je	0x140002f85
0x140002411:	mov	ebp, 2
0x140002416:	test	esi, esi
0x140002418:	js	0x140002f8a
0x14000241e:	test	byte ptr [rip + 0xc882f], 2
0x140002425:	jne	0x140002f74
0x14000242b:	test	esi, esi
0x14000242d:	je	0x140002724
0x140002433:	mov	rcx, rdi
0x140002436:	mov	rdx, rbx
0x140002439:	xor	r8d, r8d
0x14000243c:	call	0x140002fcc
0x140002441:	jmp	0x140002f8a
0x140002446:	lea	rcx, [rip + 0xb9efd]
0x14000244d:	mov	rdx, rsi
0x140002450:	call	0x14006832a
0x140002455:	mov	r15d, 0xffffffff
0x14000245b:	mov	rcx, rsi
0x14000245e:	call	0x1400118b0
0x140002463:	inc	rbx
0x140002466:	mov	esi, dword ptr [rip + 0xc87e8]
0x14000246c:	mov	rdi, rbx
0x14000246f:	test	sil, 8
0x140002473:	je	0x1400024a5
0x140002475:	mov	rcx, rdi
0x140002478:	mov	edx, 0x40
0x14000247d:	call	0x14007ed3c
0x140002482:	test	rax, rax
0x140002485:	je	0x1400024a5
0x140002487:	mov	rbp, rax
0x14000248a:	mov	edx, ebp
0x14000248c:	sub	edx, edi
0x14000248e:	lea	rcx, [rip + 0xae95d]
0x140002495:	mov	r8, rdi
0x140002498:	call	0x14005f1b3
0x14000249d:	mov	rbx, rax
0x1400024a0:	inc	rbp
0x1400024a3:	jmp	0x1400024aa
0x1400024a5:	xor	ebx, ebx
0x1400024a7:	mov	rbp, rdi
0x1400024aa:	lea	rdx, [rip + 0xbac69]
0x1400024b1:	mov	rcx, rdi
0x1400024b4:	call	0x14008cf48
0x1400024b9:	add	rdi, rax
0x1400024bc:	mov	rcx, rdi
0x1400024bf:	call	0x14005f215
0x1400024c4:	mov	rdi, rax
0x1400024c7:	mov	rcx, rax
0x1400024ca:	call	0x14008cbc0
0x1400024cf:	test	rax, rax
0x1400024d2:	je	0x1400024ec
0x1400024d4:	mov	cl, byte ptr [rdi + rax - 1]
0x1400024d8:	cmp	cl, 0x20
0x1400024db:	je	0x1400024e2
0x1400024dd:	cmp	cl, 9
0x1400024e0:	jne	0x1400024ec
0x1400024e2:	mov	byte ptr [rdi + rax - 1], 0
0x1400024e7:	dec	rax
0x1400024ea:	jne	0x1400024d4
0x1400024ec:	mov	byte ptr [rip + 0xc8765], 1
0x1400024f3:	mov	rcx, r14
0x1400024f6:	xor	edx, edx
0x1400024f8:	mov	r8, rdi
0x1400024fb:	call	0x140003c9c
0x140002500:	test	byte ptr [rip + 0xc874d], 8
0x140002507:	je	0x140002564
0x140002509:	cmp	byte ptr [rip + 0xcb7f0], 0
0x140002510:	jne	0x140002564
0x140002512:	call	0x14000313c
0x140002517:	mov	rsi, rax
0x14000251a:	mov	rcx, rbp
0x14000251d:	mov	rdx, rax
0x140002520:	call	0x140021a8d
0x140002525:	test	al, al
0x140002527:	je	0x14000255c
0x140002529:	mov	rcx, rsi
0x14000252c:	call	0x1400145f4
0x140002531:	test	al, al
0x140002533:	je	0x14000255c
0x140002535:	mov	rcx, r14
0x140002538:	mov	rdx, rsi
0x14000253b:	call	0x140003210
0x140002540:	mov	byte ptr [rip + 0xcb7b9], 1
0x140002547:	test	rbx, rbx
0x14000254a:	je	0x14000255c
0x14000254c:	mov	rcx, r14
0x14000254f:	mov	edx, 0x37
0x140002554:	mov	r8, rbx
0x140002557:	call	0x140003c9c
0x14000255c:	mov	rcx, rsi
0x14000255f:	call	0x1400031c2
0x140002564:	mov	rcx, rdi
0x140002567:	call	0x1400118b0
0x14000256c:	mov	rcx, rbx
0x14000256f:	call	0x1400118b0
0x140002574:	test	r15d, r15d
0x140002577:	js	0x140002593
0x140002579:	mov	ebp, 1
0x14000257e:	mov	rcx, r14
0x140002581:	mov	edx, 1
0x140002586:	mov	r8d, r15d
0x140002589:	call	0x140003b70
0x14000258e:	jmp	0x140002f8a
0x140002593:	mov	ebp, 1
0x140002598:	jmp	0x140002f8a
0x14000259d:	test	rbx, rbx
0x1400025a0:	je	0x140002f85
0x1400025a6:	mov	ebp, 2
0x1400025ab:	test	esi, esi
0x1400025ad:	js	0x140002f8a
0x1400025b3:	test	byte ptr [rip + 0xc869a], 3
0x1400025ba:	jne	0x140002f74
0x1400025c0:	test	esi, esi
0x1400025c2:	jne	0x140002433
0x1400025c8:	mov	rcx, rbx
0x1400025cb:	mov	edx, 0x3a
0x1400025d0:	call	0x14005f08e
0x1400025d5:	test	rax, rax
0x1400025d8:	je	0x14000286b
0x1400025de:	mov	r15, rax
0x1400025e1:	mov	edx, r15d
0x1400025e4:	sub	edx, ebx
0x1400025e6:	lea	rcx, [rip + 0xae805]
0x1400025ed:	mov	r8, rbx
0x1400025f0:	call	0x14005f1b3
0x1400025f5:	mov	rbp, rax
0x1400025f8:	mov	rcx, r14
0x1400025fb:	mov	edx, 0x31
0x140002600:	mov	r8, rax
0x140002603:	call	0x140003c9c
0x140002608:	inc	r15
0x14000260b:	mov	rcx, r15
0x14000260e:	call	0x14008a488
0x140002613:	mov	rcx, r14
0x140002616:	mov	edx, 0x32
0x14000261b:	mov	r8d, eax
0x14000261e:	call	0x140003b70
0x140002623:	mov	rcx, rbp
0x140002626:	call	0x1400118b0
0x14000262b:	mov	ebp, 2
0x140002630:	jmp	0x140001b24
0x140002635:	test	rbx, rbx
0x140002638:	je	0x140002f85
0x14000263e:	mov	ebp, 2
0x140002643:	test	esi, esi
0x140002645:	js	0x140002f8a
0x14000264b:	test	byte ptr [rip + 0xc8602], 3
0x140002652:	jne	0x140002f74
0x140002658:	test	esi, esi
0x14000265a:	jne	0x140002433
0x140002660:	lea	rdx, [rip + 0xafa89]
0x140002667:	mov	rcx, rbx
0x14000266a:	call	0x14008b718
0x14000266f:	test	rax, rax
0x140002672:	je	0x1400028fa
0x140002678:	mov	r15, rax
0x14000267b:	call	0x14005f59f
0x140002680:	mov	r12, rax
0x140002683:	lea	rcx, [rsp + 0x20]
0x140002688:	mov	edx, 1
0x14000268d:	mov	r8d, 0x1000
0x140002693:	mov	r9, r15
0x140002696:	call	0x14008b8b4
0x14000269b:	test	rax, rax
0x14000269e:	je	0x1400026d5
0x1400026a0:	mov	rbp, r12
0x1400026a3:	add	rbp, 0x18
0x1400026a7:	lea	r13, [rsp + 0x20]
0x1400026ac:	mov	rcx, rbp
0x1400026af:	mov	rdx, r13
0x1400026b2:	mov	r8, rax
0x1400026b5:	call	0x1400112e8
0x1400026ba:	mov	edx, 1
0x1400026bf:	mov	r8d, 0x1000
0x1400026c5:	mov	rcx, r13
0x1400026c8:	mov	r9, r15
0x1400026cb:	call	0x14008b8b4
0x1400026d0:	test	rax, rax
0x1400026d3:	jne	0x1400026ac
0x1400026d5:	mov	rcx, r15
0x1400026d8:	call	0x14008b1fc
0x1400026dd:	mov	r8, qword ptr [r12]
0x1400026e1:	mov	rcx, r14
0x1400026e4:	mov	edx, 0x14
0x1400026e9:	call	0x140003c9c
0x1400026ee:	lea	r8, [rip + 0xbab60]
0x1400026f5:	mov	rcx, r14
0x1400026f8:	mov	edx, 0x15
0x1400026fd:	call	0x140003c9c
0x140002702:	mov	rcx, r14
0x140002705:	mov	edx, 0x16
0x14000270a:	mov	r8b, 1
0x14000270d:	call	0x140003a71
0x140002712:	mov	rcx, r12
0x140002715:	call	0x14005f61a
0x14000271a:	mov	ebp, 2
0x14000271f:	jmp	0x140001b3b
0x140002724:	mov	rcx, rbx
0x140002727:	call	0x14005f215
0x14000272c:	mov	r15, rax
0x14000272f:	mov	rcx, rax
0x140002732:	call	0x140014653
0x140002737:	test	al, al
0x140002739:	je	0x1400027ed
0x14000273f:	lea	r9, [rip + 0xbab0f]
0x140002746:	mov	rcx, r14
0x140002749:	mov	edx, 0xbb
0x14000274e:	mov	r8, r15
0x140002751:	call	0x140003d37
0x140002756:	mov	rcx, r15
0x140002759:	call	0x1400118b0
0x14000275e:	mov	ebp, 2
0x140002763:	jmp	0x140001ac8
0x140002768:	test	rbx, rbx
0x14000276b:	je	0x140002f85
0x140002771:	mov	ebp, 2
0x140002776:	test	esi, esi
0x140002778:	js	0x140002f8a
0x14000277e:	test	byte ptr [rip + 0xc84cf], 2
0x140002785:	jne	0x140002f74
0x14000278b:	test	esi, esi
0x14000278d:	jne	0x1400027dc
0x14000278f:	mov	rcx, rbx
0x140002792:	call	0x14008a488
0x140002797:	mov	rcx, r14
0x14000279a:	mov	edx, 1
0x14000279f:	mov	r8d, eax
0x1400027a2:	call	0x140003b70
0x1400027a7:	mov	ebp, 2
0x1400027ac:	jmp	0x140001b52
0x1400027b1:	test	rbx, rbx
0x1400027b4:	je	0x140002f85
0x1400027ba:	mov	ebp, 2
0x1400027bf:	test	esi, esi
0x1400027c1:	js	0x140002f8a
0x1400027c7:	test	byte ptr [rip + 0xc8486], 2
0x1400027ce:	jne	0x140002f74
0x1400027d4:	test	esi, esi
0x1400027d6:	je	0x14000287c
0x1400027dc:	mov	rcx, rdi
0x1400027df:	mov	rdx, rbx
0x1400027e2:	mov	r8d, 1
0x1400027e8:	jmp	0x14000243c
0x1400027ed:	lea	rcx, [rip + 0xb045e]
0x1400027f4:	mov	rdx, rbx
0x1400027f7:	call	0x14006832a
0x1400027fc:	mov	rcx, r15
0x1400027ff:	call	0x1400118b0
0x140002804:	jmp	0x140002f8a
0x140002809:	lea	rcx, [rip + 0xaccb6]
0x140002810:	mov	edx, r15d
0x140002813:	call	0x14006832a
0x140002818:	jmp	0x140002f8a
0x14000281d:	lea	rcx, [rip + 0xae788]
0x140002824:	mov	rdx, rbx
0x140002827:	call	0x14005f1b3
0x14000282c:	mov	r15, rax
0x14000282f:	lea	rcx, [rip + 0xb5b06]
0x140002836:	call	0x14005f215
0x14000283b:	mov	rbp, rax
0x14000283e:	mov	rcx, r14
0x140002841:	mov	edx, 0xa9
0x140002846:	mov	r8, r15
0x140002849:	mov	r9, rax
0x14000284c:	call	0x140003d37
0x140002851:	mov	rcx, r15
0x140002854:	call	0x1400118b0
0x140002859:	mov	rcx, rbp
0x14000285c:	call	0x1400118b0
0x140002861:	mov	ebp, 2
0x140002866:	jmp	0x140001b0d
0x14000286b:	lea	rcx, [rip + 0xb9a81]
0x140002872:	call	0x14006832a
0x140002877:	jmp	0x140002f8a
0x14000287c:	mov	ebp, 2
0x140002881:	mov	rcx, r14
0x140002884:	mov	edx, 2
0x140002889:	call	0x140003425
0x14000288e:	cmp	eax, 3
0x140002891:	jne	0x140002945
0x140002897:	mov	rcx, rbx
0x14000289a:	call	0x14005f215
0x14000289f:	mov	qword ptr [rip + 0xc836a], rax
0x1400028a6:	mov	rcx, rbx
0x1400028a9:	call	0x14008cbc0
0x1400028ae:	mov	rcx, rbx
0x1400028b1:	mov	rdx, rax
0x1400028b4:	call	0x140074310
0x1400028b9:	jmp	0x140001b69
0x1400028be:	mov	ebp, 1
0x1400028c3:	test	esi, esi
0x1400028c5:	js	0x140002f8a
0x1400028cb:	test	byte ptr [rip + 0xc8382], 2
0x1400028d2:	jne	0x140002f74
0x1400028d8:	test	esi, esi
0x1400028da:	jne	0x140002433
0x1400028e0:	mov	rcx, r14
0x1400028e3:	mov	edx, 0xb8
0x1400028e8:	mov	r8b, 1
0x1400028eb:	call	0x140003a71
0x1400028f0:	mov	ebp, 1
0x1400028f5:	jmp	0x140001c60
0x1400028fa:	lea	rcx, [rip + 0xb9cf3]
0x140002901:	mov	rdx, rbx
0x140002904:	jmp	0x140002f7e
0x140002909:	mov	ebp, 1
0x14000290e:	test	esi, esi
0x140002910:	js	0x140002f8a
0x140002916:	test	byte ptr [rip + 0xc8337], 2
0x14000291d:	jne	0x140002f74
0x140002923:	test	esi, esi
0x140002925:	jne	0x140002433
0x14000292b:	mov	rcx, r14
0x14000292e:	mov	edx, 0xb8
0x140002933:	xor	r8d, r8d
0x140002936:	call	0x140003a71
0x14000293b:	mov	ebp, 1
0x140002940:	jmp	0x140001c77
0x140002945:	lea	rcx, [rip + 0xb0b07]
0x14000294c:	call	0x14006832a
0x140002951:	jmp	0x140001b69
0x140002956:	mov	ebp, 1
0x14000295b:	test	esi, esi
0x14000295d:	js	0x140002f8a
0x140002963:	test	byte ptr [rip + 0xc82ea], 3
0x14000296a:	jne	0x140002f74
0x140002970:	test	esi, esi
0x140002972:	jne	0x140002433
0x140002978:	mov	rcx, r14
0x14000297b:	mov	edx, 0x1e
0x140002980:	mov	r8b, 1
0x140002983:	call	0x140003a71
0x140002988:	mov	ebp, 1
0x14000298d:	jmp	0x140001c8e
0x140002992:	mov	ebp, 1
0x140002997:	test	esi, esi
0x140002999:	js	0x140002f8a
0x14000299f:	test	byte ptr [rip + 0xc82ae], 3
0x1400029a6:	jne	0x140002f74
0x1400029ac:	test	esi, esi
0x1400029ae:	jne	0x140002433
0x1400029b4:	mov	rcx, r14
0x1400029b7:	mov	edx, 0x1e
0x1400029bc:	xor	r8d, r8d
0x1400029bf:	call	0x140003a71
0x1400029c4:	mov	ebp, 1
0x1400029c9:	jmp	0x140001ca5
0x1400029ce:	mov	ebp, 1
0x1400029d3:	test	esi, esi
0x1400029d5:	js	0x140002f8a
0x1400029db:	test	byte ptr [rip + 0xc8272], 3
0x1400029e2:	jne	0x140002f74
0x1400029e8:	test	esi, esi
0x1400029ea:	jne	0x140002433
0x1400029f0:	mov	rcx, r14
0x1400029f3:	mov	edx, 0xa3
0x1400029f8:	mov	r8b, 1
0x1400029fb:	call	0x140003a71
0x140002a00:	mov	ebp, 1
0x140002a05:	jmp	0x140001cbc
0x140002a0a:	mov	ebp, 1
0x140002a0f:	test	esi, esi
0x140002a11:	js	0x140002f8a
0x140002a17:	test	byte ptr [rip + 0xc8236], 3
0x140002a1e:	jne	0x140002f74
0x140002a24:	test	esi, esi
0x140002a26:	jne	0x140002433
0x140002a2c:	mov	rcx, r14
0x140002a2f:	mov	edx, 0xa3
0x140002a34:	xor	r8d, r8d
0x140002a37:	call	0x140003a71
0x140002a3c:	mov	ebp, 1
0x140002a41:	jmp	0x140001cd3
0x140002a46:	mov	ebp, 1
0x140002a4b:	test	esi, esi
0x140002a4d:	js	0x140002f8a
0x140002a53:	test	byte ptr [rip + 0xc81fa], 3
0x140002a5a:	jne	0x140002f74
0x140002a60:	test	esi, esi
0x140002a62:	jne	0x140002aa0
0x140002a64:	mov	rcx, r14
0x140002a67:	mov	edx, 0x16
0x140002a6c:	xor	r8d, r8d
0x140002a6f:	call	0x140003a71
0x140002a74:	mov	ebp, 1
0x140002a79:	jmp	0x140001cea
0x140002a7e:	mov	ebp, 1
0x140002a83:	test	esi, esi
0x140002a85:	js	0x140002f8a
0x140002a8b:	test	byte ptr [rip + 0xc81c2], 3
0x140002a92:	jne	0x140002f74
0x140002a98:	test	esi, esi
0x140002a9a:	je	0x140002bf5
0x140002aa0:	mov	ebp, 1
0x140002aa5:	jmp	0x1400027dc
0x140002aaa:	mov	ebp, 1
0x140002aaf:	test	esi, esi
0x140002ab1:	js	0x140002f8a
0x140002ab7:	test	byte ptr [rip + 0xc8196], 3
0x140002abe:	jne	0x140002f74
0x140002ac4:	test	esi, esi
0x140002ac6:	jne	0x140002433
0x140002acc:	mov	rcx, r14
0x140002acf:	mov	edx, 0x30
0x140002ad4:	mov	r8b, 1
0x140002ad7:	call	0x140003a71
0x140002adc:	mov	ebp, 1
0x140002ae1:	jmp	0x140001d18
0x140002ae6:	mov	ebp, 1
0x140002aeb:	test	esi, esi
0x140002aed:	js	0x140002f8a
0x140002af3:	test	byte ptr [rip + 0xc815a], 2
0x140002afa:	jne	0x140002f74
0x140002b00:	test	esi, esi
0x140002b02:	jne	0x140002433
0x140002b08:	mov	rcx, r14
0x140002b0b:	mov	edx, 0x17
0x140002b10:	mov	r8b, 1
0x140002b13:	call	0x140003a71
0x140002b18:	mov	ebp, 1
0x140002b1d:	jmp	0x140001d2f
0x140002b22:	mov	ebp, 1
0x140002b27:	test	esi, esi
0x140002b29:	js	0x140002f8a
0x140002b2f:	test	byte ptr [rip + 0xc811e], 2
0x140002b36:	jne	0x140002f74
0x140002b3c:	test	esi, esi
0x140002b3e:	jne	0x140002433
0x140002b44:	mov	rcx, r14
0x140002b47:	mov	edx, 0x22
0x140002b4c:	xor	r8d, r8d
0x140002b4f:	call	0x140003b70
0x140002b54:	mov	ebp, 1
0x140002b59:	jmp	0x140001d46
0x140002b5e:	mov	ebp, 1
0x140002b63:	test	esi, esi
0x140002b65:	js	0x140002f8a
0x140002b6b:	test	byte ptr [rip + 0xc80e2], 2
0x140002b72:	jne	0x140002f74
0x140002b78:	test	esi, esi
0x140002b7a:	jne	0x140002433
0x140002b80:	mov	rcx, r14
0x140002b83:	mov	edx, 0x22
0x140002b88:	mov	r8d, 3
0x140002b8e:	call	0x140003b70
0x140002b93:	mov	ebp, 1
0x140002b98:	jmp	0x140001d5d
0x140002b9d:	test	rbx, rbx
0x140002ba0:	je	0x140002f85
0x140002ba6:	mov	ebp, 2
0x140002bab:	test	esi, esi
0x140002bad:	js	0x140002f8a
0x140002bb3:	test	byte ptr [rip + 0xc809a], 2
0x140002bba:	jne	0x140002f74
0x140002bc0:	test	esi, esi
0x140002bc2:	jne	0x140002433
0x140002bc8:	mov	rcx, rbx
0x140002bcb:	call	0x140073998
0x140002bd0:	mov	rbp, rax
0x140002bd3:	mov	rcx, r14
0x140002bd6:	mov	edx, 0x21
0x140002bdb:	mov	r8, rax
0x140002bde:	call	0x140003f04
0x140002be3:	mov	rcx, rbp
0x140002be6:	call	0x140073a25
0x140002beb:	mov	ebp, 2
0x140002bf0:	jmp	0x140001d74
0x140002bf5:	mov	rcx, r14
0x140002bf8:	mov	edx, 0x16
0x140002bfd:	mov	r8b, 1
0x140002c00:	call	0x140003a71
0x140002c05:	mov	ebp, 1
0x140002c0a:	jmp	0x140001d01
0x140002c0f:	test	rbx, rbx
0x140002c12:	je	0x140002f85
0x140002c18:	mov	ebp, 2
0x140002c1d:	test	esi, esi
0x140002c1f:	js	0x140002f8a
0x140002c25:	test	byte ptr [rip + 0xc8028], 3
0x140002c2c:	jne	0x140002f74
0x140002c32:	test	esi, esi
0x140002c34:	jne	0x1400027dc
0x140002c3a:	mov	ebp, 2
0x140002c3f:	mov	rcx, r14
0x140002c42:	mov	edx, 2
0x140002c47:	call	0x140003425
0x140002c4c:	cmp	eax, 4
0x140002c4f:	je	0x140002c5d
0x140002c51:	lea	rcx, [rip + 0xb07be]
0x140002c58:	call	0x14006832a
0x140002c5d:	cmp	byte ptr [rbx], 0
0x140002c60:	je	0x140001e23
0x140002c66:	lea	r15, [rip + 0xb6a3c]
0x140002c6d:	mov	r13, rbx
0x140002c70:	mov	rcx, r13
0x140002c73:	mov	edx, 0x2c
0x140002c78:	call	0x14007ecb0
0x140002c7d:	test	rax, rax
0x140002c80:	je	0x140002c99
0x140002c82:	mov	rbp, rax
0x140002c85:	sub	rbp, r13
0x140002c88:	movsxd	rax, ebp
0x140002c8b:	mov	byte ptr [r13 + rax], 0
0x140002c91:	mov	r12d, 1
0x140002c97:	jmp	0x140002ca7
0x140002c99:	mov	rcx, r13
0x140002c9c:	call	0x14008cbc0
0x140002ca1:	mov	rbp, rax
0x140002ca4:	xor	r12d, r12d
0x140002ca7:	cmp	ebp, 3
0x140002caa:	je	0x140002cda
0x140002cac:	cmp	ebp, 1
0x140002caf:	jne	0x140002cef
0x140002cb1:	movsx	r8d, byte ptr [r13]
0x140002cb6:	cmp	r8d, 0x4d
0x140002cba:	jg	0x140002d1f
0x140002cbc:	lea	eax, [r8 - 0x35]
0x140002cc0:	cmp	eax, 5
0x140002cc3:	jae	0x140002d86
0x140002cc9:	add	r8d, -0x30
0x140002ccd:	mov	rcx, r14
0x140002cd0:	mov	edx, 0x3e
0x140002cd5:	jmp	0x140002e16
0x140002cda:	mov	r8d, 3
0x140002ce0:	mov	rcx, r13
0x140002ce3:	mov	rdx, r15
0x140002ce6:	call	0x14008cc80
0x140002ceb:	test	eax, eax
0x140002ced:	je	0x140002d50
0x140002cef:	mov	rcx, r13
0x140002cf2:	call	0x14008a488
0x140002cf7:	test	eax, eax
0x140002cf9:	je	0x140002d0b
0x140002cfb:	mov	rcx, r14
0x140002cfe:	mov	edx, 0x3d
0x140002d03:	mov	r8d, eax
0x140002d06:	jmp	0x140002e16
0x140002d0b:	lea	rcx, [rip + 0xb9903]
0x140002d12:	mov	rdx, r13
0x140002d15:	call	0x14006832a
0x140002d1a:	jmp	0x140002e1b
0x140002d1f:	cmp	r8d, 0x64
0x140002d23:	jg	0x140002d63
0x140002d25:	cmp	r8d, 0x4e
0x140002d29:	je	0x140002db0
0x140002d2f:	cmp	r8d, 0x52
0x140002d33:	je	0x140002dba
0x140002d39:	cmp	r8d, 0x58
0x140002d3d:	jne	0x140002dda
0x140002d43:	mov	rcx, r14
0x140002d46:	mov	edx, 0x41
0x140002d4b:	jmp	0x140002e00
0x140002d50:	mov	rcx, r14
0x140002d53:	mov	edx, 0x3f
0x140002d58:	mov	r8d, 3
0x140002d5e:	jmp	0x140002e16
0x140002d63:	lea	eax, [r8 - 0x6d]
0x140002d67:	cmp	eax, 6
0x140002d6a:	ja	0x140002dc4
0x140002d6c:	lea	rcx, [rip + 0x23d]
0x140002d73:	movsxd	rax, dword ptr [rcx + rax*4]
0x140002d77:	add	rax, rcx
0x140002d7a:	jmp	rax
0x140002d7c:	mov	rcx, r14
0x140002d7f:	mov	edx, 0x40
0x140002d84:	jmp	0x140002d58
0x140002d86:	lea	eax, [r8 - 0x31]
0x140002d8a:	cmp	eax, 2
0x140002d8d:	jae	0x140002da0
0x140002d8f:	add	r8d, r8d
0x140002d92:	add	r8d, -0x60
0x140002d96:	mov	rcx, r14
0x140002d99:	mov	edx, 0x3f
0x140002d9e:	jmp	0x140002e16
0x140002da0:	cmp	r8d, 0x44
0x140002da4:	jne	0x140002dda
0x140002da6:	mov	rcx, r14
0x140002da9:	mov	edx, 0x41
0x140002dae:	jmp	0x140002d58
0x140002db0:	mov	rcx, r14
0x140002db3:	mov	edx, 0x41
0x140002db8:	jmp	0x140002df3
0x140002dba:	mov	rcx, r14
0x140002dbd:	mov	edx, 0x41
0x140002dc2:	jmp	0x140002dd2
0x140002dc4:	cmp	r8d, 0x65
0x140002dc8:	jne	0x140002dda
0x140002dca:	mov	rcx, r14
0x140002dcd:	mov	edx, 0x40
0x140002dd2:	mov	r8d, 2
0x140002dd8:	jmp	0x140002e16
0x140002dda:	lea	rcx, [rip + 0xb9858]
0x140002de1:	mov	edx, r8d
0x140002de4:	call	0x14006832a
0x140002de9:	jmp	0x140002e1b
0x140002deb:	mov	rcx, r14
0x140002dee:	mov	edx, 0x40
0x140002df3:	xor	r8d, r8d
0x140002df6:	jmp	0x140002e16
0x140002df8:	mov	rcx, r14
0x140002dfb:	mov	edx, 0x40
0x140002e00:	mov	r8d, 1
0x140002e06:	jmp	0x140002e16
0x140002e08:	mov	rcx, r14
0x140002e0b:	mov	edx, 0x40
0x140002e10:	mov	r8d, 4
0x140002e16:	call	0x140003b70
0x140002e1b:	add	r12d, ebp
0x140002e1e:	movsxd	rax, r12d
0x140002e21:	cmp	byte ptr [r13 + rax], 0
0x140002e27:	lea	r13, [r13 + rax]
0x140002e2c:	mov	ebp, 2
0x140002e31:	jne	0x140002c70
0x140002e37:	jmp	0x140001e23
0x140002e3c:	test	rbx, rbx
0x140002e3f:	je	0x140002f85
0x140002e45:	mov	ebp, 2
0x140002e4a:	test	esi, esi
0x140002e4c:	js	0x140002f8a
0x140002e52:	test	byte ptr [rip + 0xc7dfb], 2
0x140002e59:	jne	0x140002f74
0x140002e5f:	test	esi, esi
0x140002e61:	jne	0x140002433
0x140002e67:	mov	rcx, rbx
0x140002e6a:	call	0x140073998
0x140002e6f:	mov	rbp, rax
0x140002e72:	mov	rcx, r14
0x140002e75:	mov	edx, 0x7a
0x140002e7a:	mov	r8, rax
0x140002e7d:	call	0x140003f04
0x140002e82:	lea	rdx, [rip + 0xb0fed]
0x140002e89:	mov	rcx, rdi
0x140002e8c:	call	0x14008c8e0
0x140002e91:	cmp	eax, 1
0x140002e94:	mov	r8d, 4
0x140002e9a:	sbb	r8d, 0
0x140002e9e:	mov	rcx, r14
0x140002ea1:	mov	edx, 0x7b
0x140002ea6:	call	0x140003b70
0x140002eab:	mov	rcx, rbp
0x140002eae:	call	0x140073a25
0x140002eb3:	mov	ebp, 2
0x140002eb8:	jmp	0x140001e68
0x140002ebd:	test	rbx, rbx
0x140002ec0:	je	0x140002f85
0x140002ec6:	mov	ebp, 2
0x140002ecb:	test	esi, esi
0x140002ecd:	js	0x140002f8a
0x140002ed3:	test	byte ptr [rip + 0xc7d7a], 1
0x140002eda:	jne	0x140002f74
0x140002ee0:	test	esi, esi
0x140002ee2:	jne	0x140002433
0x140002ee8:	mov	rcx, rbx
0x140002eeb:	call	0x140073998
0x140002ef0:	mov	r15, rax
0x140002ef3:	mov	rcx, r14
0x140002ef6:	mov	edx, 0x7a
0x140002efb:	mov	r8, rax
0x140002efe:	call	0x140003f04
0x140002f03:	mov	ebp, 2
0x140002f08:	mov	rcx, r14
0x140002f0b:	mov	edx, 0x7b
0x140002f10:	mov	r8d, 2
0x140002f16:	call	0x140003b70
0x140002f1b:	mov	rcx, r15
0x140002f1e:	call	0x140073a25
0x140002f23:	jmp	0x140001e3a
0x140002f28:	test	rbx, rbx
0x140002f2b:	je	0x140002f85
0x140002f2d:	mov	ebp, 2
0x140002f32:	test	esi, esi
0x140002f34:	js	0x140002f8a
0x140002f36:	test	byte ptr [rip + 0xc7d17], 2
0x140002f3d:	jne	0x140002f74
0x140002f3f:	test	esi, esi
0x140002f41:	jne	0x140002433
0x140002f47:	mov	rcx, r14
0x140002f4a:	mov	edx, 0xd
0x140002f4f:	mov	r8d, 5
0x140002f55:	call	0x140003b70
0x140002f5a:	mov	rcx, r14
0x140002f5d:	mov	edx, 0x12
0x140002f62:	mov	r8, rbx
0x140002f65:	call	0x140003c9c
0x140002f6a:	mov	ebp, 2
0x140002f6f:	jmp	0x140001e7f
0x140002f74:	lea	rcx, [rip + 0xb042e]
0x140002f7b:	mov	rdx, rdi
0x140002f7e:	call	0x14006832a
0x140002f83:	jmp	0x140002f8a
0x140002f85:	mov	ebp, 0xfffffffe
0x140002f8a:	mov	rcx, qword ptr [rsp + 0x1020]
0x140002f92:	xor	rcx, rsp
0x140002f95:	call	0x14007d5e0
0x140002f9a:	mov	eax, ebp
0x140002f9c:	add	rsp, 0x1028
0x140002fa3:	pop	rbx
0x140002fa4:	pop	rbp
0x140002fa5:	pop	rdi
0x140002fa6:	pop	rsi
0x140002fa7:	pop	r12
0x140002fa9:	pop	r13
0x140002fab:	pop	r14
0x140002fad:	pop	r15
0x140002faf:	ret	
0x140002fb0:	int3	
0x140002fb1:	std	
0x14009d000:	push	rdi
0x14009d001:	adc	byte ptr [rax], al
0x14009d003:	add	dword ptr [rax], eax
0x14009d006:	add	byte ptr [rax], al
0x14009d008:	enter	0x4003, 1
0x14009d00d:	add	byte ptr [rax], al
0x14009d00f:	add	byte ptr [rcx - 0x38], cl
0x14009d012:	add	eax, dword ptr [rax + 1]
0x14009d015:	add	byte ptr [rax], al
0x14009d017:	add	byte ptr [rcx + 0x1400010], dh
0x14009d01d:	add	byte ptr [rax], al
0x14009d01f:	add	byte ptr [rax], dh
0x14009d021:	adc	dword ptr [rax], eax
0x14009d023:	add	dword ptr [rax], eax
0x14009d026:	add	byte ptr [rax], al
0x14009d028:	jb	0x14009d03b
0x14009d02a:	add	byte ptr [rax + 1], al
0x14009d02d:	add	byte ptr [rax], al
0x14009d02f:	add	bl, al
0x14009d031:	adc	dword ptr [rax], eax
0x14009d033:	add	dword ptr [rax], eax
0x14009d036:	add	byte ptr [rax], al
0x14009d038:	insb	byte ptr [rdi], dx
0x14009d039:	enter	0x4003, 1
0x14009d03d:	add	byte ptr [rax], al
0x14009d03f:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d045:	add	byte ptr [rax], al
0x14009d047:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d04d:	add	byte ptr [rax], al
0x14009d04f:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d055:	add	byte ptr [rax], al
0x14009d057:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d05d:	add	byte ptr [rax], al
0x14009d05f:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d065:	add	byte ptr [rax], al
0x14009d067:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d06d:	add	byte ptr [rax], al
0x14009d06f:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d075:	add	byte ptr [rax], al
0x14009d077:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d07d:	add	byte ptr [rax], al
0x14009d07f:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d085:	add	byte ptr [rax], al
0x14009d087:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d08d:	add	byte ptr [rax], al
0x14009d08f:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d095:	add	byte ptr [rax], al
0x14009d097:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d09d:	add	byte ptr [rax], al
0x14009d09f:	add	byte ptr [rbx + 0x14000ec], bh
0x14009d0a5:	add	byte ptr [rax], al
0x14009d0a7:	add	byte ptr [rdx - 0x38], dh
0x14009d0aa:	add	eax, dword ptr [rax + 1]
0x14009d0ad:	add	byte ptr [rax], al
0x14009d0af:	add	byte ptr [rcx], bh
0x14009d0b1:	jo	0x14009d0be
0x14009d0b3:	add	dword ptr [rax], eax
0x14009d0b6:	add	byte ptr [rax], al
0x14009d0b8:	add	eax, dword ptr [rax]
0x14009d0ba:	add	byte ptr [rax], al
0x14009d0bc:	add	byte ptr [rax], al
0x14009d0be:	add	byte ptr [rax], al
0x14009d0c0:	sub	byte ptr [rbx], al
0x14009d0c2:	or	al, byte ptr [rax + 1]
0x14009d0c5:	add	byte ptr [rax], al
0x14009d0c7:	add	byte ptr [rax], dl
0x14009d0c9:	or	r8b, byte ptr [r8 + 1]
0x14009d0cd:	add	byte ptr [rax], al
0x14009d0cf:	add	byte ptr [rax - 3], cl
0x14009d0d2:	or	dword ptr [rax + 1], eax
0x14009d0d5:	add	byte ptr [rax], al
0x14009d0d7:	add	byte ptr [rax + 0x14009fc], dl
0x14009d0dd:	add	byte ptr [rax], al
0x14009d0df:	add	byte ptr [rax + 0x70], al
0x14009d0e2:	or	al, byte ptr [rax + 1]
0x14009d0e5:	add	byte ptr [rax], al
0x14009d0e7:	add	byte ptr [rax], al
0x14009d0e9:	add	byte ptr [rax], al
0x14009d0eb:	add	byte ptr [rax], al
0x14009d0ed:	add	byte ptr [rax], al
0x14009d0ef:	add	byte ptr [rbx], al
0x14009d0f1:	add	byte ptr [rax], al
0x14009d0f3:	add	byte ptr [rdx], al
0x14009d0f5:	add	byte ptr [rax], al
0x14009d0f7:	add	byte ptr [rdx], al
0x14009d0f9:	add	byte ptr [rax], al
0x14009d0fb:	add	byte ptr [rdx], al
0x14009d0fd:	add	byte ptr [rax], al
0x14009d0ff:	add	byte ptr [rdx], al
0x14009d101:	add	byte ptr [rax], al
0x14009d103:	add	byte ptr [rcx], al
0x14009d105:	add	byte ptr [rax], al
0x14009d107:	add	byte ptr [rdx], al
0x14009d109:	add	byte ptr [rax], al
0x14009d10b:	add	byte ptr [rcx], al
0x14009d10d:	add	byte ptr [rax], al
0x14009d10f:	add	byte ptr [rcx], al
0x14009d111:	add	byte ptr [rax], al
0x14009d113:	add	byte ptr [rbx], al
0x14009d115:	add	byte ptr [rax], al
0x14009d117:	add	byte ptr [rbx], al
0x14009d119:	add	byte ptr [rax], al
0x14009d11b:	add	byte ptr [rdx], al
0x14009d11d:	add	byte ptr [rax], al
0x14009d11f:	add	byte ptr [rcx], al
0x14009d121:	add	byte ptr [rax], al
0x14009d123:	add	byte ptr [rdx], al
0x14009d125:	add	byte ptr [rax], al
0x14009d127:	add	byte ptr [rbx], al
0x14009d129:	add	byte ptr [rax], al
0x14009d12b:	add	byte ptr [rdx], al
0x14009d12d:	add	byte ptr [rax], al
0x14009d12f:	add	byte ptr [rbx], al
0x14009d131:	add	byte ptr [rax], al
0x14009d133:	add	byte ptr [rbx], al
0x14009d135:	add	byte ptr [rax], al
0x14009d137:	add	byte ptr [rbx], al
0x14009d139:	add	byte ptr [rax], al
0x14009d13b:	add	byte ptr [rdx], al
0x14009d13d:	add	byte ptr [rax], al
0x14009d13f:	add	byte ptr [rbx], al
0x14009d141:	add	byte ptr [rax], al
0x14009d143:	add	byte ptr [rbx], al
0x14009d145:	add	byte ptr [rax], al
0x14009d147:	add	byte ptr [rcx], al
0x14009d149:	add	byte ptr [rax], al
0x14009d14b:	add	byte ptr [rcx], al
0x14009d14d:	add	byte ptr [rax], al
0x14009d14f:	add	byte ptr [rdx], al
0x14009d151:	add	byte ptr [rax], al
0x14009d153:	add	byte ptr [rdx], al
0x14009d155:	add	byte ptr [rax], al
0x14009d157:	add	byte ptr [rcx], al
0x14009d159:	add	byte ptr [rax], al
0x14009d15b:	add	byte ptr [rdx], al
0x14009d15d:	add	byte ptr [rax], al
0x14009d15f:	add	byte ptr [rbx], al
0x14009d161:	add	byte ptr [rax], al
0x14009d163:	add	byte ptr [rcx], al
0x14009d165:	add	byte ptr [rax], al
0x14009d167:	add	byte ptr [rcx], al
0x14009d169:	add	byte ptr [rax], al
0x14009d16b:	add	byte ptr [rcx], al
0x14009d16d:	add	byte ptr [rax], al
0x14009d16f:	add	byte ptr [rdx], al
0x14009d171:	add	byte ptr [rax], al
0x14009d173:	add	byte ptr [rax + rax], al
0x14009d176:	add	byte ptr [rax], al
0x14009d178:	add	al, byte ptr [rax]
0x14009d17a:	add	byte ptr [rax], al
0x14009d17c:	add	dword ptr [rax], eax
0x14009d17e:	add	byte ptr [rax], al
0x14009d180:	add	dword ptr [rax], eax
0x14009d182:	add	byte ptr [rax], al
0x14009d184:	add	dword ptr [rax], eax
0x14009d186:	add	byte ptr [rax], al
0x14009d188:	add	dword ptr [rax], eax
0x14009d18a:	add	byte ptr [rax], al
0x14009d18c:	add	dword ptr [rax], eax
0x14009d18e:	add	byte ptr [rax], al
0x14009d190:	add	dword ptr [rax], eax
0x14009d192:	add	byte ptr [rax], al
0x14009d194:	add	dword ptr [rax], eax
0x14009d196:	add	byte ptr [rax], al
0x14009d198:	add	dword ptr [rax], eax
0x14009d19a:	add	byte ptr [rax], al
0x14009d19c:	add	al, byte ptr [rax]
0x14009d19e:	add	byte ptr [rax], al
0x14009d1a0:	add	al, byte ptr [rax]
0x14009d1a2:	add	byte ptr [rax], al
0x14009d1a4:	add	al, 0
0x14009d1a6:	add	byte ptr [rax], al
0x14009d1a8:	add	dword ptr [rax], eax
0x14009d1aa:	add	byte ptr [rax], al
0x14009d1ac:	add	dword ptr [rax], eax
0x14009d1ae:	add	byte ptr [rax], al
0x14009d1b0:	add	dword ptr [rax], eax
0x14009d1b2:	add	byte ptr [rax], al
0x14009d1b4:	add	eax, dword ptr [rax]
0x14009d1b6:	add	byte ptr [rax], al
0x14009d1b8:	add	al, byte ptr [rax]
0x14009d1ba:	add	byte ptr [rax], al
0x14009d1bc:	add	eax, dword ptr [rax]
0x14009d1be:	add	byte ptr [rax], al
0x14009d1c0:	add	eax, dword ptr [rax]
0x14009d1c2:	add	byte ptr [rax], al
0x14009d1c4:	add	eax, dword ptr [rax]
0x14009d1c6:	add	byte ptr [rax], al
0x14009d1c8:	add	eax, dword ptr [rax]
0x14009d1ca:	add	byte ptr [rax], al
0x14009d1cc:	add	eax, dword ptr [rax]
0x14009d1ce:	add	byte ptr [rax], al
0x14009d1d0:	add	dword ptr [rax], eax
0x14009d1d2:	add	byte ptr [rax], al
0x14009d1d4:	add	eax, dword ptr [rax]
0x14009d1d6:	add	byte ptr [rax], al
0x14009d1d8:	add	dword ptr [rax], eax
0x14009d1da:	add	byte ptr [rax], al
0x14009d1dc:	add	dword ptr [rax], eax
0x14009d1de:	add	byte ptr [rax], al
0x14009d1e0:	add	eax, dword ptr [rax]
0x14009d1e2:	add	byte ptr [rax], al
0x14009d1e4:	add	al, byte ptr [rax]
0x14009d1e6:	add	byte ptr [rax], al
0x14009d1e8:	add	al, byte ptr [rax]
0x14009d1ea:	add	byte ptr [rax], al
0x14009d1ec:	add	al, byte ptr [rax]
0x14009d1ee:	add	byte ptr [rax], al
0x14009d1f0:	add	al, byte ptr [rax]
0x14009d1f2:	add	byte ptr [rax], al
0x14009d1f4:	add	al, byte ptr [rax]
0x14009d1f6:	add	byte ptr [rax], al
0x14009d1f8:	add	dword ptr [rax], eax
0x14009d1fa:	add	byte ptr [rax], al
0x14009d1fc:	add	dword ptr [rax], eax
0x14009d1fe:	add	byte ptr [rax], al
0x14009d200:	add	al, byte ptr [rax]
0x14009d202:	add	byte ptr [rax], al
0x14009d204:	add	dword ptr [rax], eax
0x14009d206:	add	byte ptr [rax], al
0x14009d208:	add	dword ptr [rax], eax
0x14009d20a:	add	byte ptr [rax], al
0x14009d20c:	add	dword ptr [rax], eax
0x14009d20e:	add	byte ptr [rax], al
0x14009d210:	add	dword ptr [rax], eax
0x14009d212:	add	byte ptr [rax], al
0x14009d214:	add	dword ptr [rax], eax
0x14009d216:	add	byte ptr [rax], al
0x14009d218:	add	dword ptr [rax], eax
0x14009d21a:	add	byte ptr [rax], al
0x14009d21c:	add	dword ptr [rax], eax
0x14009d21e:	add	byte ptr [rax], al
0x14009d220:	add	dword ptr [rax], eax
0x14009d222:	add	byte ptr [rax], al
0x14009d224:	add	dword ptr [rax], eax
0x14009d226:	add	byte ptr [rax], al
0x14009d228:	add	al, byte ptr [rax]
0x14009d22a:	add	byte ptr [rax], al
0x14009d22c:	add	dword ptr [rax], eax
0x14009d22e:	add	byte ptr [rax], al
0x14009d230:	add	dword ptr [rax], eax
0x14009d232:	add	byte ptr [rax], al
0x14009d234:	add	dword ptr [rax], eax
0x14009d236:	add	byte ptr [rax], al
0x14009d238:	add	dword ptr [rax], eax
0x14009d23a:	add	byte ptr [rax], al
0x14009d23c:	add	dword ptr [rax], eax
0x14009d23e:	add	byte ptr [rax], al
0x14009d240:	add	dword ptr [rax], eax
0x14009d242:	add	byte ptr [rax], al
0x14009d244:	add	dword ptr [rax], eax
0x14009d246:	add	byte ptr [rax], al
0x14009d248:	add	dword ptr [rax], eax
0x14009d24a:	add	byte ptr [rax], al
0x14009d24c:	add	al, byte ptr [rax]
0x14009d24e:	add	byte ptr [rax], al
0x14009d250:	add	al, byte ptr [rax]
0x14009d252:	add	byte ptr [rax], al
0x14009d254:	add	dword ptr [rax], eax
0x14009d256:	add	byte ptr [rax], al
0x14009d258:	add	dword ptr [rax], eax
0x14009d25a:	add	byte ptr [rax], al
0x14009d25c:	add	dword ptr [rax], eax
0x14009d25e:	add	byte ptr [rax], al
0x14009d260:	add	dword ptr [rax], eax
0x14009d262:	add	byte ptr [rax], al
0x14009d264:	add	dword ptr [rax], eax
0x14009d266:	add	byte ptr [rax], al
0x14009d268:	add	dword ptr [rax], eax
0x14009d26a:	add	byte ptr [rax], al
0x14009d26c:	add	dword ptr [rax], eax
0x14009d26e:	add	byte ptr [rax], al
0x14009d270:	add	dword ptr [rax], eax
0x14009d272:	add	byte ptr [rax], al
0x14009d274:	add	dword ptr [rax], eax
0x14009d276:	add	byte ptr [rax], al
0x14009d278:	add	eax, dword ptr [rax]
0x14009d27a:	add	byte ptr [rax], al
0x14009d27c:	add	al, byte ptr [rax]
0x14009d27e:	add	byte ptr [rax], al
0x14009d280:	add	dword ptr [rax], eax
0x14009d282:	add	byte ptr [rax], al
0x14009d284:	add	dword ptr [rax], eax
0x14009d286:	add	byte ptr [rax], al
0x14009d288:	add	dword ptr [rax], eax
0x14009d28a:	add	byte ptr [rax], al
0x14009d28c:	add	al, byte ptr [rax]
0x14009d28e:	add	byte ptr [rax], al
0x14009d290:	add	dword ptr [rax], eax
0x14009d292:	add	byte ptr [rax], al
0x14009d294:	add	al, byte ptr [rax]
0x14009d296:	add	byte ptr [rax], al
0x14009d298:	add	al, byte ptr [rax]
0x14009d29a:	add	byte ptr [rax], al
0x14009d29c:	add	dword ptr [rax], eax
0x14009d29e:	add	byte ptr [rax], al
0x14009d2a0:	add	al, byte ptr [rax]
0x14009d2a2:	add	byte ptr [rax], al
0x14009d2a4:	add	al, byte ptr [rax]
0x14009d2a6:	add	byte ptr [rax], al
0x14009d2a8:	add	al, byte ptr [rax]
0x14009d2aa:	add	byte ptr [rax], al
0x14009d2ac:	add	al, 0
0x14009d2ae:	add	byte ptr [rax], al
0x14009d2b0:	add	dword ptr [rax], eax
0x14009d2b2:	add	byte ptr [rax], al
0x14009d2b4:	add	dword ptr [rax], eax
0x14009d2b6:	add	byte ptr [rax], al
0x14009d2b8:	add	al, byte ptr [rax]
0x14009d2ba:	add	byte ptr [rax], al
0x14009d2bc:	add	dword ptr [rax], eax
0x14009d2be:	add	byte ptr [rax], al
0x14009d2c0:	add	dword ptr [rax], eax
0x14009d2c2:	add	byte ptr [rax], al
0x14009d2c4:	add	dword ptr [rax], eax
0x14009d2c6:	add	byte ptr [rax], al
0x14009d2c8:	add	al, byte ptr [rax]
0x14009d2ca:	add	byte ptr [rax], al
0x14009d2cc:	add	al, byte ptr [rax]
0x14009d2ce:	add	byte ptr [rax], al
0x14009d2d0:	add	eax, 0x2000000
0x14009d2d5:	add	byte ptr [rax], al
0x14009d2d7:	add	byte ptr [rax + rax], al
0x14009d2da:	add	byte ptr [rax], al
0x14009d2dc:	add	al, byte ptr [rax]
0x14009d2de:	add	byte ptr [rax], al
0x14009d2e0:	add	al, byte ptr [rax]
0x14009d2e2:	add	byte ptr [rax], al
0x14009d2e4:	add	dword ptr [rax], eax
0x14009d2e6:	add	byte ptr [rax], al
0x14009d2e8:	add	dword ptr [rax], eax
0x14009d2ea:	add	byte ptr [rax], al
0x14009d2ec:	add	dword ptr [rax], eax
0x14009d2ee:	add	byte ptr [rax], al
0x14009d2f0:	add	dword ptr [rax], eax
0x14009d2f2:	add	byte ptr [rax], al
0x14009d2f4:	add	dword ptr [rax], eax
0x14009d2f6:	add	byte ptr [rax], al
0x14009d2f8:	add	dword ptr [rax], eax
0x14009d2fa:	add	byte ptr [rax], al
0x14009d2fc:	add	al, byte ptr [rax]
0x14009d2fe:	add	byte ptr [rax], al
0x14009d300:	add	eax, dword ptr [rax]
0x14009d302:	add	byte ptr [rax], al
0x14009d304:	add	eax, dword ptr [rax]
0x14009d306:	add	byte ptr [rax], al
0x14009d308:	add	dword ptr [rax], eax
0x14009d30a:	add	byte ptr [rax], al
0x14009d30c:	add	dword ptr [rax], eax
0x14009d30e:	add	byte ptr [rax], al
0x14009d310:	add	dword ptr [rax], eax
0x14009d312:	add	byte ptr [rax], al
0x14009d314:	add	dword ptr [rax], eax
0x14009d316:	add	byte ptr [rax], al
0x14009d318:	add	dword ptr [rax], eax
0x14009d31a:	add	byte ptr [rax], al
0x14009d31c:	add	dword ptr [rax], eax
0x14009d31e:	add	byte ptr [rax], al
0x14009d320:	add	dword ptr [rax], eax
0x14009d322:	add	byte ptr [rax], al
0x14009d324:	add	al, byte ptr [rax]
0x14009d326:	add	byte ptr [rax], al
0x14009d328:	add	al, byte ptr [rax]
0x14009d32a:	add	byte ptr [rax], al
0x14009d32c:	add	al, byte ptr [rax]
0x14009d32e:	add	byte ptr [rax], al
0x14009d330:	add	dword ptr [rax], eax
0x14009d332:	add	byte ptr [rax], al
0x14009d334:	add	dword ptr [rax], eax
0x14009d336:	add	byte ptr [rax], al
0x14009d338:	add	dword ptr [rax], eax
0x14009d33a:	add	byte ptr [rax], al
0x14009d33c:	add	dword ptr [rax], eax
0x14009d33e:	add	byte ptr [rax], al
0x14009d340:	add	dword ptr [rax], eax
0x14009d342:	add	byte ptr [rax], al
0x14009d344:	add	dword ptr [rax], eax
0x14009d346:	add	byte ptr [rax], al
0x14009d348:	add	al, byte ptr [rax]
0x14009d34a:	add	byte ptr [rax], al
0x14009d34c:	add	dword ptr [rax], eax
0x14009d34e:	add	byte ptr [rax], al
0x14009d350:	add	al, byte ptr [rax]
0x14009d352:	add	byte ptr [rax], al
0x14009d354:	add	al, byte ptr [rax]
0x14009d356:	add	byte ptr [rax], al
0x14009d358:	add	al, byte ptr [rax]
0x14009d35a:	add	byte ptr [rax], al
0x14009d35c:	add	eax, dword ptr [rax]
0x14009d35e:	add	byte ptr [rax], al
0x14009d360:	add	eax, dword ptr [rax]
0x14009d362:	add	byte ptr [rax], al
0x14009d364:	add	eax, dword ptr [rax]
0x14009d366:	add	byte ptr [rax], al
0x14009d368:	add	al, byte ptr [rax]
0x14009d36a:	add	byte ptr [rax], al
0x14009d36c:	add	eax, dword ptr [rax]
0x14009d36e:	add	byte ptr [rax], al
0x14009d370:	add	dword ptr [rax], eax
0x14009d372:	add	byte ptr [rax], al
0x14009d374:	add	dword ptr [rax], eax
0x14009d376:	add	byte ptr [rax], al
0x14009d378:	add	dword ptr [rax], eax
0x14009d37a:	add	byte ptr [rax], al
0x14009d37c:	add	dword ptr [rax], eax
0x14009d37e:	add	byte ptr [rax], al
0x14009d380:	add	eax, dword ptr [rax]
0x14009d382:	add	byte ptr [rax], al
0x14009d384:	add	al, byte ptr [rax]
0x14009d386:	add	byte ptr [rax], al
0x14009d388:	add	al, 0
0x14009d38a:	add	byte ptr [rax], al
0x14009d38c:	add	dword ptr [rax], eax
0x14009d38e:	add	byte ptr [rax], al
0x14009d390:	add	dword ptr [rax], eax
0x14009d392:	add	byte ptr [rax], al
0x14009d394:	add	eax, dword ptr [rax]
0x14009d396:	add	byte ptr [rax], al
0x14009d398:	add	al, byte ptr [rax]
0x14009d39a:	add	byte ptr [rax], al
0x14009d39c:	add	al, byte ptr [rax]
0x14009d39e:	add	byte ptr [rax], al
0x14009d3a0:	add	al, byte ptr [rax]
0x14009d3a2:	add	byte ptr [rax], al
0x14009d3a4:	add	al, byte ptr [rax]
0x14009d3a6:	add	byte ptr [rax], al
0x14009d3a8:	add	al, byte ptr [rax]
0x14009d3aa:	add	byte ptr [rax], al
0x14009d3ac:	add	al, byte ptr [rax]
0x14009d3ae:	add	byte ptr [rax], al
0x14009d3b0:	add	al, byte ptr [rax]
0x14009d3b2:	add	byte ptr [rax], al
0x14009d3b4:	add	al, byte ptr [rax]
0x14009d3b6:	add	byte ptr [rax], al
0x14009d3b8:	add	al, byte ptr [rax]
0x14009d3ba:	add	byte ptr [rax], al
0x14009d3bc:	add	al, byte ptr [rax]
0x14009d3be:	add	byte ptr [rax], al
0x14009d3c0:	add	al, byte ptr [rax]
0x14009d3c2:	add	byte ptr [rax], al
0x14009d3c4:	add	al, byte ptr [rax]
0x14009d3c6:	add	byte ptr [rax], al
0x14009d3c8:	add	al, byte ptr [rax]
0x14009d3ca:	add	byte ptr [rax], al
0x14009d3cc:	add	dword ptr [rax], eax
0x14009d3ce:	add	byte ptr [rax], al
0x14009d3d0:	add	dword ptr [rax], eax
0x14009d3d2:	add	byte ptr [rax], al
0x14009d3d4:	add	dword ptr [rax], eax
0x14009d3d6:	add	byte ptr [rax], al
0x14009d3d8:	add	dword ptr [rax], eax
0x14009d3da:	add	byte ptr [rax], al
0x14009d3dc:	add	eax, dword ptr [rax]
0x14009d3de:	add	byte ptr [rax], al
0x14009d3e0:	add	dword ptr [rax], eax
0x14009d3e2:	add	byte ptr [rax], al
0x14009d3e4:	add	dword ptr [rax], eax
0x14009d3e6:	add	byte ptr [rax], al
0x14009d3e8:	add	dword ptr [rax], eax
0x14009d3ea:	add	byte ptr [rax], al
0x14009d3ec:	add	dword ptr [rax], eax
0x14009d3ee:	add	byte ptr [rax], al
0x14009d3f0:	add	eax, 0x5000000
0x14009d3f5:	add	byte ptr [rax], al
0x14009d3f7:	add	byte ptr [rip + 0x2000000], al
0x14009d3fd:	add	byte ptr [rax], al
0x14009d3ff:	add	byte ptr [rcx], al
0x14009d401:	add	byte ptr [rax], al
0x14009d403:	add	byte ptr [rbx], al
0x14009d405:	add	byte ptr [rax], al
0x14009d407:	add	byte ptr [rax], al
0x14009d409:	add	byte ptr [rax], al
0x14009d40b:	add	byte ptr [rax], al
0x14009d40d:	add	byte ptr [rax], al
0x14009d40f:	add	byte ptr [rax], al
0x14009d411:	add	byte ptr [rax], al
0x14009d413:	add	byte ptr [rax], al
0x14009d415:	add	byte ptr [rax], al
0x14009d417:	add	byte ptr [rax], al
0x14009d419:	add	byte ptr [rax], al
0x14009d41b:	add	byte ptr [rax], al
0x14009d41d:	add	byte ptr [rax], al
0x14009d41f:	add	byte ptr [rax], al
0x14009d421:	add	byte ptr [rax], al
0x14009d423:	add	byte ptr [rax], al
0x14009d425:	add	byte ptr [rax], al
0x14009d427:	add	byte ptr [rax], al
0x14009d429:	add	byte ptr [rax], al
0x14009d42b:	add	byte ptr [rax], al
0x14009d42d:	add	byte ptr [rax], al
0x14009d42f:	add	byte ptr [rax], al
0x14009d431:	add	byte ptr [rax], al
0x14009d433:	add	byte ptr [rax], al
0x14009d435:	add	byte ptr [rax], al
0x14009d437:	add	byte ptr [rax], al
0x14009d439:	add	byte ptr [rax], al
0x14009d43b:	add	byte ptr [rax], al
0x14009d43d:	add	byte ptr [rax], al
0x14009d43f:	add	byte ptr [rax], al
0x14009d441:	add	byte ptr [rax], al
0x14009d443:	add	byte ptr [rax], al
0x14009d445:	add	byte ptr [rax], al
0x14009d447:	add	byte ptr [rax], al
0x14009d449:	add	byte ptr [rax], al
0x14009d44b:	add	byte ptr [rax], al
0x14009d44d:	add	byte ptr [rax], al
0x14009d44f:	add	byte ptr [rax], al
0x14009d451:	add	byte ptr [rax], al
0x14009d453:	add	byte ptr [rax], al
0x14009d455:	add	byte ptr [rax], al
0x14009d457:	add	byte ptr [rax], al
0x14009d459:	add	byte ptr [rax], al
0x14009d45b:	add	byte ptr [rax], al
0x14009d45d:	add	byte ptr [rax], al
0x14009d45f:	add	byte ptr [rax], al
0x14009d461:	add	byte ptr [rax], al
0x14009d463:	add	byte ptr [rax], al
0x14009d465:	add	byte ptr [rax], al
0x14009d467:	add	byte ptr [rax], al
0x14009d469:	add	byte ptr [rax], al
0x14009d46b:	add	byte ptr [rax], al
0x14009d46d:	add	byte ptr [rax], al
0x14009d46f:	add	byte ptr [rdx], al
0x14009d471:	add	byte ptr [rax], al
0x14009d473:	add	byte ptr [rdx], al
0x14009d475:	add	byte ptr [rax], al
0x14009d477:	add	byte ptr [rax], al
0x14009d479:	add	byte ptr [rax], al
0x14009d47b:	add	byte ptr [rax], al
0x14009d47d:	add	byte ptr [rax], al
0x14009d47f:	add	byte ptr [rax], al
0x14009d481:	add	byte ptr [rax], al
0x14009d483:	add	byte ptr [rax], al
0x14009d485:	add	byte ptr [rax], al
0x14009d487:	add	byte ptr [rax], al
0x14009d489:	add	byte ptr [rax], al
0x14009d48b:	add	byte ptr [rax], al
0x14009d48d:	add	byte ptr [rax], al
0x14009d48f:	add	byte ptr [rdx], al
0x14009d491:	add	byte ptr [rax], al
0x14009d493:	add	byte ptr [rax], al
0x14009d495:	add	byte ptr [rax], al
0x14009d497:	add	byte ptr [rax], al
0x14009d499:	add	byte ptr [rax], al
0x14009d49b:	add	byte ptr [rax], al
0x14009d49d:	add	byte ptr [rax], al
0x14009d49f:	add	byte ptr [rax], al
0x14009d4a1:	add	byte ptr [rax], al
0x14009d4a3:	add	byte ptr [rax], al
0x14009d4a5:	add	byte ptr [rax], al
0x14009d4a7:	add	byte ptr [rax], al
0x14009d4a9:	add	byte ptr [rax], al
0x14009d4ab:	add	byte ptr [rax], al
0x14009d4ad:	add	byte ptr [rax], al
0x14009d4af:	add	byte ptr [rax], al
0x14009d4b1:	add	byte ptr [rax], al
0x14009d4b3:	add	byte ptr [rax], al
0x14009d4b5:	add	byte ptr [rax], al
0x14009d4b7:	add	byte ptr [rax], al
0x14009d4b9:	add	byte ptr [rax], al
0x14009d4bb:	add	byte ptr [rax], al
0x14009d4bd:	add	byte ptr [rax], al
0x14009d4bf:	add	byte ptr [rdx], al
0x14009d4c1:	add	byte ptr [rax], al
0x14009d4c3:	add	byte ptr [rax], al
0x14009d4c5:	add	byte ptr [rax], al
0x14009d4c7:	add	byte ptr [rax], al
0x14009d4c9:	add	byte ptr [rax], al
0x14009d4cb:	add	byte ptr [rax], al
0x14009d4cd:	add	byte ptr [rax], al
0x14009d4cf:	add	byte ptr [rax], al
0x14009d4d1:	add	byte ptr [rax], al
0x14009d4d3:	add	byte ptr [rax], al
0x14009d4d5:	add	byte ptr [rax], al
0x14009d4d7:	add	byte ptr [rax], al
0x14009d4d9:	add	byte ptr [rax], al
0x14009d4db:	add	byte ptr [rax], al
0x14009d4dd:	add	byte ptr [rax], al
0x14009d4df:	add	byte ptr [rax], al
0x14009d4e1:	add	byte ptr [rax], al
0x14009d4e3:	add	byte ptr [rbx], al
0x14009d4e5:	add	byte ptr [rax], al
0x14009d4e7:	add	byte ptr [rbx], al
0x14009d4e9:	add	byte ptr [rax], al
0x14009d4eb:	add	byte ptr [rax], al
0x14009d4ed:	add	byte ptr [rax], al
0x14009d4ef:	add	byte ptr [rax], al
0x14009d4f1:	add	byte ptr [rax], al
0x14009d4f3:	add	byte ptr [rax], al
0x14009d4f5:	add	byte ptr [rax], al
0x14009d4f7:	add	byte ptr [rax], al
0x14009d4f9:	add	byte ptr [rax], al
0x14009d4fb:	add	byte ptr [rax], al
0x14009d4fd:	add	byte ptr [rax], al
0x14009d4ff:	add	byte ptr [rax], al
0x14009d501:	add	byte ptr [rax], al
0x14009d503:	add	byte ptr [rax], al
0x14009d505:	add	byte ptr [rax], al
0x14009d507:	add	byte ptr [rax], al
0x14009d509:	add	byte ptr [rax], al
0x14009d50b:	add	byte ptr [rax], al
0x14009d50d:	add	byte ptr [rax], al
0x14009d50f:	add	byte ptr [rax], al
0x14009d511:	add	byte ptr [rax], al
0x14009d513:	add	byte ptr [rax], al
0x14009d515:	add	byte ptr [rax], al
0x14009d517:	add	byte ptr [rax], al
0x14009d519:	add	byte ptr [rax], al
0x14009d51b:	add	byte ptr [rax], al
0x14009d51d:	add	byte ptr [rax], al
0x14009d51f:	add	byte ptr [rax], al
0x14009d521:	add	byte ptr [rax], al
0x14009d523:	add	byte ptr [rax], al
0x14009d525:	add	byte ptr [rax], al
0x14009d527:	add	byte ptr [rax], al
0x14009d529:	add	byte ptr [rax], al
0x14009d52b:	add	byte ptr [rax], al
0x14009d52d:	add	byte ptr [rax], al
0x14009d52f:	add	byte ptr [rax], al
0x14009d531:	add	byte ptr [rax], al
0x14009d533:	add	byte ptr [rax], al
0x14009d535:	add	byte ptr [rax], al
0x14009d537:	add	byte ptr [rax], al
0x14009d539:	add	byte ptr [rax], al
0x14009d53b:	add	byte ptr [rax], al
0x14009d53d:	add	byte ptr [rax], al
0x14009d53f:	add	byte ptr [rax], al
0x14009d541:	add	byte ptr [rax], al
0x14009d543:	add	byte ptr [rax], al
0x14009d545:	add	byte ptr [rax], al
0x14009d547:	add	byte ptr [rax], al
0x14009d549:	add	byte ptr [rax], al
0x14009d54b:	add	byte ptr [rax], al
0x14009d54d:	add	byte ptr [rax], al
0x14009d54f:	add	byte ptr [rax], al
0x14009d551:	add	byte ptr [rax], al
0x14009d553:	add	byte ptr [rax], al
0x14009d555:	add	byte ptr [rax], al
0x14009d557:	add	byte ptr [rax], al
0x14009d559:	add	byte ptr [rax], al
0x14009d55b:	add	byte ptr [rax], al
0x14009d55d:	add	byte ptr [rax], al
0x14009d55f:	add	byte ptr [rax], al
0x14009d561:	add	byte ptr [rax], al
0x14009d563:	add	byte ptr [rax], al
0x14009d565:	add	byte ptr [rax], al
0x14009d567:	add	byte ptr [rax], al
0x14009d569:	add	byte ptr [rax], al
0x14009d56b:	add	byte ptr [rax], al
0x14009d56d:	add	byte ptr [rax], al
0x14009d56f:	add	byte ptr [rax], al
0x14009d571:	add	byte ptr [rax], al
0x14009d573:	add	byte ptr [rax], al
0x14009d575:	add	byte ptr [rax], al
0x14009d577:	add	byte ptr [rax], al
0x14009d579:	add	byte ptr [rax], al
0x14009d57b:	add	byte ptr [rax], al
0x14009d57d:	add	byte ptr [rax], al
0x14009d57f:	add	byte ptr [rax], al
0x14009d581:	add	byte ptr [rax], al
0x14009d583:	add	byte ptr [rax], al
0x14009d585:	add	byte ptr [rax], al
0x14009d587:	add	byte ptr [rax], al
0x14009d589:	add	byte ptr [rax], al
0x14009d58b:	add	byte ptr [rax], al
0x14009d58d:	add	byte ptr [rax], al
0x14009d58f:	add	byte ptr [rax], al
0x14009d591:	add	byte ptr [rax], al
0x14009d593:	add	byte ptr [rax], al
0x14009d595:	add	byte ptr [rax], al
0x14009d597:	add	byte ptr [rax], al
0x14009d599:	add	byte ptr [rax], al
0x14009d59b:	add	byte ptr [rax], al
0x14009d59d:	add	byte ptr [rax], al
0x14009d59f:	add	byte ptr [rax], al
0x14009d5a1:	add	byte ptr [rax], al
0x14009d5a3:	add	byte ptr [rax], al
0x14009d5a5:	add	byte ptr [rax], al
0x14009d5a7:	add	byte ptr [rax], al
0x14009d5a9:	add	byte ptr [rax], al
0x14009d5ab:	add	byte ptr [rax], al
0x14009d5ad:	add	byte ptr [rax], al
0x14009d5af:	add	byte ptr [rax], al
0x14009d5b1:	add	byte ptr [rax], al
0x14009d5b3:	add	byte ptr [rax], al
0x14009d5b5:	add	byte ptr [rax], al
0x14009d5b7:	add	byte ptr [rax], al
0x14009d5b9:	add	byte ptr [rax], al
0x14009d5bb:	add	byte ptr [rax], al
0x14009d5bd:	add	byte ptr [rax], al
0x14009d5bf:	add	byte ptr [rax], al
0x14009d5c1:	add	byte ptr [rax], al
0x14009d5c3:	add	byte ptr [rax], al
0x14009d5c5:	add	byte ptr [rax], al
0x14009d5c7:	add	byte ptr [rax], al
0x14009d5c9:	add	byte ptr [rax], al
0x14009d5cb:	add	byte ptr [rax], al
0x14009d5cd:	add	byte ptr [rax], al
0x14009d5cf:	add	byte ptr [rax], al
0x14009d5d1:	add	byte ptr [rax], al
0x14009d5d3:	add	byte ptr [rax], al
0x14009d5d5:	add	byte ptr [rax], al
0x14009d5d7:	add	byte ptr [rax], al
0x14009d5d9:	add	byte ptr [rax], al
0x14009d5db:	add	byte ptr [rax], al
0x14009d5dd:	add	byte ptr [rax], al
0x14009d5df:	add	byte ptr [rax], al
0x14009d5e1:	add	byte ptr [rax], al
0x14009d5e3:	add	byte ptr [rax], al
0x14009d5e5:	add	byte ptr [rax], al
0x14009d5e7:	add	byte ptr [rax], al
0x14009d5e9:	add	byte ptr [rax], al
0x14009d5eb:	add	byte ptr [rax], al
0x14009d5ed:	add	byte ptr [rax], al
0x14009d5ef:	add	byte ptr [rax], al
0x14009d5f1:	add	byte ptr [rax], al
0x14009d5f3:	add	byte ptr [rax], al
0x14009d5f5:	add	byte ptr [rax], al
0x14009d5f7:	add	byte ptr [rax], al
0x14009d5f9:	add	byte ptr [rax], al
0x14009d5fb:	add	byte ptr [rax], al
0x14009d5fd:	add	byte ptr [rax], al
0x14009d5ff:	add	byte ptr [rax], al
0x14009d601:	add	byte ptr [rax], al
0x14009d603:	add	byte ptr [rax], al
0x14009d605:	add	byte ptr [rax], al
0x14009d607:	add	byte ptr [rax], al
0x14009d609:	add	byte ptr [rax], al
0x14009d60b:	add	byte ptr [rax], al
0x14009d60d:	add	byte ptr [rax], al
0x14009d60f:	add	byte ptr [rax], al
0x14009d611:	add	byte ptr [rax], al
0x14009d613:	add	byte ptr [rax], al
0x14009d615:	add	byte ptr [rax], al
0x14009d617:	add	byte ptr [rax], al
0x14009d619:	add	byte ptr [rax], al
0x14009d61b:	add	byte ptr [rax], al
0x14009d61d:	add	byte ptr [rax], al
0x14009d61f:	add	byte ptr [rax], al
0x14009d621:	add	byte ptr [rax], al
0x14009d623:	add	byte ptr [rax], al
0x14009d625:	add	byte ptr [rax], al
0x14009d627:	add	byte ptr [rax], al
0x14009d629:	add	byte ptr [rax], al
0x14009d62b:	add	byte ptr [rax], al
0x14009d62d:	add	byte ptr [rax], al
0x14009d62f:	add	byte ptr [rax], al
0x14009d631:	add	byte ptr [rax], al
0x14009d633:	add	byte ptr [rax], al
0x14009d635:	add	byte ptr [rax], al
0x14009d637:	add	byte ptr [rax], al
0x14009d639:	add	byte ptr [rax], al
0x14009d63b:	add	byte ptr [rax], al
0x14009d63d:	add	byte ptr [rax], al
0x14009d63f:	add	byte ptr [rax], al
0x14009d641:	add	byte ptr [rax], al
0x14009d643:	add	byte ptr [rax], al
0x14009d645:	add	byte ptr [rax], al
0x14009d647:	add	byte ptr [rdx], al
0x14009d649:	add	byte ptr [rax], al
0x14009d64b:	add	byte ptr [rax], al
0x14009d64d:	add	byte ptr [rax], al
0x14009d64f:	add	byte ptr [rax], al
0x14009d651:	add	byte ptr [rax], al
0x14009d653:	add	byte ptr [rax], al
0x14009d655:	add	byte ptr [rax], al
0x14009d657:	add	byte ptr [rax], al
0x14009d659:	add	byte ptr [rax], al
0x14009d65b:	add	byte ptr [rax], al
0x14009d65d:	add	byte ptr [rax], al
0x14009d65f:	add	byte ptr [rax], al
0x14009d661:	add	byte ptr [rax], al
0x14009d663:	add	byte ptr [rax], al
0x14009d665:	add	byte ptr [rax], al
0x14009d667:	add	byte ptr [rdx], al
0x14009d669:	add	byte ptr [rax], al
0x14009d66b:	add	byte ptr [rax], al
0x14009d66d:	add	byte ptr [rax], al
0x14009d66f:	add	byte ptr [rax], al
0x14009d671:	add	byte ptr [rax], al
0x14009d673:	add	byte ptr [rax], al
0x14009d675:	add	byte ptr [rax], al
0x14009d677:	add	byte ptr [rax], al
0x14009d679:	add	byte ptr [rax], al
0x14009d67b:	add	byte ptr [rax], al
0x14009d67d:	add	byte ptr [rax], al
0x14009d67f:	add	byte ptr [rax], al
0x14009d681:	add	byte ptr [rax], al
0x14009d683:	add	byte ptr [rax], al
0x14009d685:	add	byte ptr [rax], al
0x14009d687:	add	byte ptr [rax], al
0x14009d689:	add	byte ptr [rax], al
0x14009d68b:	add	byte ptr [rax], al
0x14009d68d:	add	byte ptr [rax], al
0x14009d68f:	add	byte ptr [rax], al
0x14009d691:	add	byte ptr [rax], al
0x14009d693:	add	byte ptr [rax], al
0x14009d695:	add	byte ptr [rax], al
0x14009d697:	add	byte ptr [rax], al
0x14009d699:	add	byte ptr [rax], al
0x14009d69b:	add	byte ptr [rax], al
0x14009d69d:	add	byte ptr [rax], al
0x14009d69f:	add	byte ptr [rax], al
0x14009d6a1:	add	byte ptr [rax], al
0x14009d6a3:	add	byte ptr [rax], al
0x14009d6a5:	add	byte ptr [rax], al
0x14009d6a7:	add	byte ptr [rax], al
0x14009d6a9:	add	byte ptr [rax], al
0x14009d6ab:	add	byte ptr [rax], al
0x14009d6ad:	add	byte ptr [rax], al
0x14009d6af:	add	byte ptr [rax], al
0x14009d6b1:	add	byte ptr [rax], al
0x14009d6b3:	add	byte ptr [rbx], al
0x14009d6b5:	add	byte ptr [rax], al
0x14009d6b7:	add	byte ptr [rax], al
0x14009d6b9:	add	byte ptr [rax], al
0x14009d6bb:	add	byte ptr [rax], al
0x14009d6bd:	add	byte ptr [rax], al
0x14009d6bf:	add	byte ptr [rax], al
0x14009d6c1:	add	byte ptr [rax], al
0x14009d6c3:	add	byte ptr [rax], al
0x14009d6c5:	add	byte ptr [rax], al
0x14009d6c7:	add	byte ptr [rax], al
0x14009d6c9:	add	byte ptr [rax], al
0x14009d6cb:	add	byte ptr [rax], al
0x14009d6cd:	add	byte ptr [rax], al
0x14009d6cf:	add	byte ptr [rax], al
0x14009d6d1:	add	byte ptr [rax], al
0x14009d6d3:	add	byte ptr [rax], al
0x14009d6d5:	add	byte ptr [rax], al
0x14009d6d7:	add	byte ptr [rax], al
0x14009d6d9:	add	byte ptr [rax], al
0x14009d6db:	add	byte ptr [rax], al
0x14009d6dd:	add	byte ptr [rax], al
0x14009d6df:	add	byte ptr [rax], al
0x14009d6e1:	add	byte ptr [rax], al
0x14009d6e3:	add	byte ptr [rax], al
0x14009d6e5:	add	byte ptr [rax], al
0x14009d6e7:	add	byte ptr [rax], al
0x14009d6e9:	add	byte ptr [rax], al
0x14009d6eb:	add	byte ptr [rax], al
0x14009d6ed:	add	byte ptr [rax], al
0x14009d6ef:	add	byte ptr [rax], al
0x14009d6f1:	add	byte ptr [rax], al
0x14009d6f3:	add	byte ptr [rax], al
0x14009d6f5:	add	byte ptr [rax], al
0x14009d6f7:	add	byte ptr [rax], al
0x14009d6f9:	add	byte ptr [rax], al
0x14009d6fb:	add	byte ptr [rbx], al
0x14009d6fd:	add	byte ptr [rax], al
0x14009d6ff:	add	byte ptr [rax], al
0x14009d701:	add	byte ptr [rax], al
0x14009d703:	add	byte ptr [rax], al
0x14009d705:	add	byte ptr [rax], al
0x14009d707:	add	byte ptr [rax], al
0x14009d709:	add	byte ptr [rax], al
0x14009d70b:	add	byte ptr [rax], al
0x14009d70d:	add	byte ptr [rax], al
0x14009d70f:	add	byte ptr [rax], al
0x14009d711:	add	byte ptr [rax], al
0x14009d713:	add	byte ptr [rax], al
0x14009d715:	add	byte ptr [rax], al
0x14009d717:	add	byte ptr [rax], al
0x14009d719:	add	byte ptr [rax], al
0x14009d71b:	add	byte ptr [rax], al
0x14009d71d:	add	byte ptr [rax], al
0x14009d71f:	add	byte ptr [rax], al
0x14009d721:	add	byte ptr [rax], al
0x14009d723:	add	byte ptr [rax], al
0x14009d725:	add	byte ptr [rax], al
0x14009d727:	add	byte ptr [rax], al
0x14009d729:	add	byte ptr [rax], al
0x14009d72b:	add	byte ptr [rax], al
0x14009d72d:	add	byte ptr [rax], al
0x14009d72f:	add	dl, ch
0x14009d731:	or	eax, dword ptr es:[rax + 1]
0x14009d735:	add	byte ptr [rax], al
0x14009d737:	add	byte ptr [rax], al
0x14009d739:	add	byte ptr [rax], al
0x14009d73b:	add	byte ptr [rax], al
0x14009d73d:	add	byte ptr [rax], al
0x14009d73f:	add	byte ptr [rbx - 0x11], ah
0x14009d742:	or	al, byte ptr [rax + 1]
0x14009d745:	add	byte ptr [rax], al
0x14009d747:	add	byte ptr [rcx], al
0x14009d749:	add	byte ptr [rax], al
0x14009d74b:	add	byte ptr [rax], al
0x14009d74d:	add	byte ptr [rax], al
0x14009d74f:	add	byte ptr [rcx + 0x5a], ch
0x14009d752:	or	eax, dword ptr [rax + 1]
0x14009d755:	add	byte ptr [rax], al
0x14009d757:	add	byte ptr [rdx], al
0x14009d759:	add	byte ptr [rax], al
0x14009d75b:	add	byte ptr [rax], al
0x14009d75d:	add	byte ptr [rax], al
0x14009d75f:	add	byte ptr [rbx + 0x5b], bl
0x14009d762:	or	eax, dword ptr [rax + 1]
0x14009d765:	add	byte ptr [rax], al
0x14009d767:	add	byte ptr [rsi + 0x5b], ch
0x14009d76a:	or	eax, dword ptr [rax + 1]
0x14009d76d:	add	byte ptr [rax], al
0x14009d76f:	add	byte ptr [rax], dh
0x14009d771:	pop	rbx
0x14009d772:	or	eax, dword ptr [rax + 1]
0x14009d775:	add	byte ptr [rax], al
0x14009d777:	add	byte ptr [rbx + 0x5b], al
0x14009d77a:	or	eax, dword ptr [rax + 1]
0x14009d77d:	add	byte ptr [rax], al
0x14009d77f:	add	byte ptr [rax + 0x1400aef], al
0x14009d785:	add	byte ptr [rax], al
0x14009d787:	add	byte ptr [rbx], dl
0x14009d789:	sbb	cl, byte ptr [rbx]
0x14009d78b:	add	dword ptr [rax], eax
0x14009d78e:	add	byte ptr [rax], al
0x14009d790:	in	eax, dx
0x14009d791:	cmp	byte ptr [rbx], cl
0x14009d793:	add	dword ptr [rax], eax
0x14009d796:	add	byte ptr [rax], al
0x14009d798:	pop	rbp
0x14009d79a:	or	eax, dword ptr [rax + 1]
0x14009d79d:	add	byte ptr [rax], al
0x14009d79f:	add	byte ptr [rcx], al
0x14009d7a1:	push	0x1400b
0x14009d7a6:	add	byte ptr [rax], al
0x14009d7a8:	pop	rbp
0x14009d7aa:	or	eax, dword ptr [rax + 1]
0x14009d7ad:	add	byte ptr [rax], al
0x14009d7af:	add	byte ptr [rax + 0x1400b30], cl
0x14009d7b5:	add	byte ptr [rax], al
0x14009d7b7:	add	byte ptr [rdi], dl
0x14009d7b9:	pop	rbp
0x14009d7ba:	or	eax, dword ptr [rax + 1]
0x14009d7bd:	add	byte ptr [rax], al
0x14009d7bf:	add	byte ptr [rbx], bl
0x14009d7c1:	jmp	0x14009d7cd
0x14009d7c3:	add	dword ptr [rax], eax
0x14009d7c6:	add	byte ptr [rax], al
0x1400ca000:	xor	dl, bh
0x1400ca002:	or	dword ptr [rax + 1], eax
0x1400ca005:	add	byte ptr [rax], al
0x1400ca007:	add	byte ptr [rax - 6], ah
0x1400ca00a:	or	dword ptr [rax + 1], eax
0x1400ca00d:	add	byte ptr [rax], al
0x1400ca00f:	add	byte ptr [rax - 6], dh
0x1400ca012:	or	dword ptr [rax + 1], eax
0x1400ca015:	add	byte ptr [rax], al
0x1400ca017:	add	byte ptr [rax + 0x14009fa], al
0x1400ca01d:	add	byte ptr [rax], al
0x1400ca01f:	add	byte ptr [rax + 0x14009fa], dl
0x1400ca025:	add	byte ptr [rax], al
0x1400ca027:	add	byte ptr [rax + 0x14009fa], ah
0x1400ca02d:	add	byte ptr [rax], al
0x1400ca02f:	add	byte ptr [rax + 0x14009fa], dh
0x1400ca035:	add	byte ptr [rax], al
0x1400ca037:	add	al, al
0x1400ca039:	cli	
0x1400ca03a:	or	dword ptr [rax + 1], eax
0x1400ca03d:	add	byte ptr [rax], al
0x1400ca03f:	add	byte ptr [rcx], cl
0x1400ca041:	add	byte ptr [rax], al
0x1400ca043:	add	byte ptr [rax], al
0x1400ca045:	add	byte ptr [rax], al
0x1400ca047:	add	byte ptr [rbp - 0x2f], dh
0x1400ca04a:	or	eax, dword ptr [rax + 1]
0x1400ca04d:	add	byte ptr [rax], al
0x1400ca04f:	add	byte ptr [rax - 0x60], dl
0x1400ca052:	or	al, 0x40
0x1400ca054:	add	dword ptr [rax], eax
0x1400ca056:	add	byte ptr [rax], al
0x1400ca058:	push	rax
0x1400ca059:	movabs	al, byte ptr [0x100000001400c]
0x1400ca062:	add	byte ptr [rax], al
0x1400ca064:	add	byte ptr [rax], al
0x1400ca066:	add	byte ptr [rax], al
0x1400ca068:	add	byte ptr [rax], al
0x1400ca06a:	add	byte ptr [rax], al
0x1400ca06c:	add	byte ptr [rax], al
0x1400ca06e:	add	byte ptr [rax], al
0x1400ca070:	jrcxz	0x1400ca048
0x1400ca072:	add	eax, dword ptr [rax + 1]
0x1400ca075:	add	byte ptr [rax], al
0x1400ca077:	add	byte ptr [rax], al
0x1400ca079:	add	byte ptr [rax], al
0x1400ca07b:	add	byte ptr [rax], al
0x1400ca07d:	add	byte ptr [rax], al
0x1400ca07f:	add	byte ptr [rax], al
0x1400ca081:	add	byte ptr [rax], al
0x1400ca083:	add	byte ptr [rax], al
0x1400ca085:	add	byte ptr [rax], al
0x1400ca087:	add	byte ptr [rcx], al
0x1400ca089:	add	byte ptr [rax], al
0x1400ca08b:	add	byte ptr [rax], al
0x1400ca08d:	add	byte ptr [rax], al
0x1400ca08f:	add	byte ptr [rbp - 0x2e], dl
0x1400ca092:	or	eax, dword ptr [rax + 1]
0x1400ca095:	add	byte ptr [rax], al
0x1400ca097:	add	byte ptr [rax], al
0x1400ca099:	add	byte ptr [rax], al
0x1400ca09b:	add	byte ptr [rax], al
0x1400ca09d:	add	byte ptr [rax], al
0x1400ca09f:	add	byte ptr [rax], ah
0x1400ca0a1:	imul	ecx, dword ptr [rdx], 0x140
0x1400ca0a7:	add	byte ptr [rax], al
0x1400ca0a9:	add	byte ptr [rax], al
0x1400ca0ab:	add	byte ptr [rax], al
0x1400ca0ad:	add	byte ptr [rax], al
0x1400ca0af:	add	byte ptr [rsi], cl
0x1400ca0b2:	add	byte ptr [rax], al
0x1400ca0b4:	insb	byte ptr [rdi], dx
0x1400ca0b5:	add	byte ptr [rax], al
0x1400ca0b7:	add	byte ptr [rax], al
0x1400ca0b9:	add	byte ptr [rax], al
0x1400ca0bb:	add	byte ptr [rax], al
0x1400ca0bd:	add	byte ptr [rax], al
0x1400ca0bf:	add	al, dl
0x1400ca0c1:	insb	byte ptr [rdi], dx
0x1400ca0c2:	or	al, byte ptr [rax + 1]
0x1400ca0c5:	add	byte ptr [rax], al
0x1400ca0c7:	add	byte ptr [rdx], cl
0x1400ca0c9:	add	al, byte ptr [rax]
0x1400ca0cb:	add	byte ptr [rax], al
0x1400ca0cd:	add	byte ptr [rax], al
0x1400ca0cf:	add	bh, bh
0x1400d1000:	add	byte ptr [rax], dl
0x1400d1002:	add	byte ptr [rax], al
0x1400d1004:	push	rdi
0x1400d1005:	adc	byte ptr [rax], al
0x1400d1007:	add	byte ptr [rax + 0x57000c6f], cl
0x1400d100d:	adc	byte ptr [rax], al
0x1400d100f:	add	byte ptr [rcx - 0x77fffff0], dh
0x1400d1015:	outsd	dx, dword ptr [rsi]
0x1400d1016:	or	al, 0
0x1400d1018:	mov	cl, 0x10
0x1400d101a:	add	byte ptr [rax], al
0x1400d101c:	xor	byte ptr [rcx], dl
0x1400d101e:	add	byte ptr [rax], al
0x1400d1020:	xchg	eax, esp
0x1400d1021:	outsd	dx, dword ptr [rsi]
0x1400d1022:	or	al, 0
0x1400d1024:	xor	byte ptr [rcx], dl
0x1400d1026:	add	byte ptr [rax], al
0x1400d1028:	jb	0x1400d103b
0x1400d102a:	add	byte ptr [rax], al
0x1400d102c:	movsb	byte ptr [rdi], byte ptr [rsi]
0x1400d102d:	outsd	dx, dword ptr [rsi]
0x1400d102e:	or	al, 0
0x1400d1030:	jb	0x1400d1043
0x1400d1032:	add	byte ptr [rax], al
0x1400d1034:	ret	
0x1400d1035:	adc	dword ptr [rax], eax
0x1400d1037:	add	byte ptr [rdi + rbp*2 + 0x11cf000c], ch
0x1400d103e:	add	byte ptr [rax], al
0x1400d7000:	test	dh, bl
0x1400d8000:	sbb	dh, 7
0x1400d8003:	add	byte ptr [rax + rsi*8 - 0xf57fff9], al
0x1400d9000:	add	byte ptr [rax], al
0x1400d9002:	add	byte ptr [rax], al
0x1400d9004:	add	byte ptr [rax], al
0x1400d9006:	add	byte ptr [rax], al
0x1400d9008:	add	byte ptr [rax], al
0x1400d900a:	add	byte ptr [rax], al
0x1400d900c:	add	byte ptr [rax], al
0x1400d900e:	add	eax, 0x300
0x1400d9013:	add	byte ptr [rax], bh
0x1400d9015:	add	byte ptr [rax], al
0x1400d9017:	add	byte ptr [rip - 0x58000000], 0
0x1400d901e:	add	byte ptr [rax + 0xe], al
0x1400d9024:	fadd	dword ptr [rax]
0x1400d9026:	add	byte ptr [rax + 0x10], al
0x1400d902c:	clc	
0x1400d902d:	add	byte ptr [rax], al
0x1400d902f:	sbb	byte ptr [rax], 0
0x1400d9032:	add	byte ptr [rax], al
0x1400d9034:	adc	byte ptr [rcx], al
0x1400d9036:	add	byte ptr [rax], al
0x1400d903c:	add	byte ptr [rax], al
0x1400d903e:	add	byte ptr [rax], al
0x1400d9040:	add	byte ptr [rax], al
0x1400d9042:	add	byte ptr [rax], al
0x1400d9044:	add	byte ptr [rax], al
0x1400d9046:	or	al, 0
0x1400d9048:	add	dword ptr [rax], eax
0x1400d904a:	add	byte ptr [rax], al
0x1400d904c:	sub	byte ptr [rcx], al
0x1400d904e:	add	byte ptr [rax + 2], al
0x1400d9054:	add	dword ptr [rax], eax
0x1400d9057:	add	byte ptr [rbx], 0
0x1400d905a:	add	byte ptr [rax], al
0x1400d905c:	pop	rax
0x1400d905d:	add	dword ptr [rax], eax
0x1400d905f:	add	byte ptr [rax + rax], 0
0x1400d9063:	add	byte ptr [rax + 1], dh
0x1400d9066:	add	byte ptr [rax + 5], al
0x1400d906c:	mov	byte ptr [rcx], al
0x1400d906e:	add	byte ptr [rax + 6], al
0x1400d9074:	movabs	al, byte ptr [0xb800000007800001]
0x1400d907d:	add	dword ptr [rax], eax
0x1400d907f:	or	byte ptr [rax], 0
0x1400d9082:	add	byte ptr [rax], al
0x1400d9084:	rol	byte ptr [rcx], 1
0x1400d9086:	add	byte ptr [rax + 9], al
0x1400d908c:	call	0x14a8d9092
0x1400d9091:	add	byte ptr [rax], al
0x1400d9093:	add	byte ptr [rax], al
0x1400d9095:	add	al, byte ptr [rax]
0x1400d9097:	or	byte ptr [rbx], 0
0x1400d909a:	add	byte ptr [rax], al
0x1400d909c:	sbb	byte ptr [rdx], al
0x1400d909e:	add	byte ptr [rax + 0xc], al
0x1400d90a4:	xor	byte ptr [rdx], al
0x1400d90a6:	add	byte ptr [rax], al
0x1400d90ac:	add	byte ptr [rax], al
0x1400d90ae:	add	byte ptr [rax], al
0x1400d90b0:	add	byte ptr [rax], al
0x1400d90b2:	add	byte ptr [rax], al
0x1400d90b4:	add	byte ptr [rax], al
0x1400d90b6:	add	al, 0
0x1400d90b8:	add	byte ptr [rax], al
0x1400d90bb:	add	byte ptr [rax + 2], cl
0x1400d90be:	add	byte ptr [rax + 0x6e], al
0x1400dc000:	add	al, dl
0x1400dc002:	or	dword ptr [rax], eax
0x1400dc004:	rol	byte ptr [rax], 1
0x1400dc006:	add	byte ptr [rax], al
0x1400dc008:	add	byte ptr [rax - 0x5fef5ff8], ah
0x1400dc00e:	sbb	byte ptr [rax - 0x5fd75fe0], ah
0x1400dc014:	xor	byte ptr [rax - 0x5fbf5fc8], ah
0x1400dc01a:	movabs	al, byte ptr [0xa068a060a058a050]
0x1400dc024:	jo	0x1400dbfc6
0x1400dc026:	js	0x1400dbfc8
0x1400dc028:	and	byte ptr [rax - 0x5f6f5f78], 0x98
0x1400dc02f:	movabs	al, byte ptr [0xa0c0a0b0a0a8a0a0]
0x1400dc038:	enter	-0x2f60, -0x60
0x1400dc03c:	fsub	dword ptr [rax - 0x58cf5f20]
0x1400dc042:	cmpsd	dword ptr [rsi], dword ptr [rdi]
0x1400dc044:	push	rax
0x1400dc045:	cmpsd	dword ptr [rsi], dword ptr [rdi]
