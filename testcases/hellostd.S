
build/hellostd:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000508 <exit>:
exit():
     508:	1101                	addi	sp,sp,-32
     50a:	e42a                	sd	a0,8(sp)
     50c:	ec06                	sd	ra,24(sp)
     50e:	436000ef          	jal	ra,944 <_fini>
     512:	434000ef          	jal	ra,946 <__libc_exit_fini>
     516:	00007317          	auipc	t1,0x7
     51a:	c6233303          	ld	t1,-926(t1) # 7178 <_GLOBAL_OFFSET_TABLE_+0x60>
     51e:	9302                	jalr	t1
     520:	6522                	ld	a0,8(sp)
     522:	523010ef          	jal	ra,2244 <_Exit>

0000000000000526 <_start>:
_start():
     526:	00007197          	auipc	gp,0x7
     52a:	2da18193          	addi	gp,gp,730 # 7800 <__global_pointer$>
     52e:	850a                	mv	a0,sp
     530:	00007597          	auipc	a1,0x7
     534:	96058593          	addi	a1,a1,-1696 # 6e90 <_DYNAMIC>
     538:	ff017113          	andi	sp,sp,-16
     53c:	a015                	j	560 <_start_c>

000000000000053e <__dls2>:
__dls2():
     53e:	00858613          	addi	a2,a1,8
     542:	418c                	lw	a1,0(a1)
     544:	4781                	li	a5,0
     546:	00007717          	auipc	a4,0x7
     54a:	c4273703          	ld	a4,-958(a4) # 7188 <_GLOBAL_OFFSET_TABLE_+0x70>
     54e:	00007697          	auipc	a3,0x7
     552:	bf26b683          	ld	a3,-1038(a3) # 7140 <_GLOBAL_OFFSET_TABLE_+0x28>
     556:	00007517          	auipc	a0,0x7
     55a:	c1a53503          	ld	a0,-998(a0) # 7170 <_GLOBAL_OFFSET_TABLE_+0x58>
     55e:	ae4d                	j	910 <__libc_start_main>

0000000000000560 <_start_c>:
_start_c():
     560:	6118                	ld	a4,0(a0)
     562:	df010113          	addi	sp,sp,-528
     566:	862a                	mv	a2,a0
     568:	2705                	addiw	a4,a4,1
     56a:	00371793          	slli	a5,a4,0x3
     56e:	00f606b3          	add	a3,a2,a5
     572:	6694                	ld	a3,8(a3)
     574:	0705                	addi	a4,a4,1
     576:	faf5                	bnez	a3,56a <_start_c+0xa>
     578:	07c1                	addi	a5,a5,16
     57a:	97b2                	add	a5,a5,a2
     57c:	0814                	addi	a3,sp,16
     57e:	0a18                	addi	a4,sp,272
     580:	0006b023          	sd	zero,0(a3)
     584:	06a1                	addi	a3,a3,8
     586:	fee69de3          	bne	a3,a4,580 <_start_c+0x20>
     58a:	457d                	li	a0,31
     58c:	6394                	ld	a3,0(a5)
     58e:	eeb5                	bnez	a3,60a <_start_c+0xaa>
     590:	87ba                	mv	a5,a4
     592:	0c18                	addi	a4,sp,528
     594:	e43a                	sd	a4,8(sp)
     596:	6722                	ld	a4,8(sp)
     598:	0007b023          	sd	zero,0(a5)
     59c:	07a1                	addi	a5,a5,8
     59e:	fee79ce3          	bne	a5,a4,596 <_start_c+0x36>
     5a2:	872e                	mv	a4,a1
     5a4:	46fd                	li	a3,31
     5a6:	631c                	ld	a5,0(a4)
     5a8:	efbd                	bnez	a5,626 <_start_c+0xc6>
     5aa:	6526                	ld	a0,72(sp)
     5ac:	ed11                	bnez	a0,5c8 <_start_c+0x68>
     5ae:	7562                	ld	a0,56(sp)
     5b0:	7742                	ld	a4,48(sp)
     5b2:	77a2                	ld	a5,40(sp)
     5b4:	4689                	li	a3,2
     5b6:	c909                	beqz	a0,5c8 <_start_c+0x68>
     5b8:	0007a803          	lw	a6,0(a5)
     5bc:	157d                	addi	a0,a0,-1
     5be:	08d81063          	bne	a6,a3,63e <_start_c+0xde>
     5c2:	6b88                	ld	a0,16(a5)
     5c4:	40a58533          	sub	a0,a1,a0
     5c8:	677a                	ld	a4,408(sp)
     5ca:	779a                	ld	a5,416(sp)
     5cc:	800005b7          	lui	a1,0x80000
     5d0:	972a                	add	a4,a4,a0
     5d2:	973e                	add	a4,a4,a5
     5d4:	fff5c593          	not	a1,a1
     5d8:	488d                	li	a7,3
     5da:	40f70833          	sub	a6,a4,a5
     5de:	e3b5                	bnez	a5,642 <_start_c+0xe2>
     5e0:	6736                	ld	a4,328(sp)
     5e2:	67d6                	ld	a5,336(sp)
     5e4:	800005b7          	lui	a1,0x80000
     5e8:	972a                	add	a4,a4,a0
     5ea:	973e                	add	a4,a4,a5
     5ec:	fff5c593          	not	a1,a1
     5f0:	488d                	li	a7,3
     5f2:	40f706b3          	sub	a3,a4,a5
     5f6:	e7ad                	bnez	a5,660 <_start_c+0x100>
     5f8:	00007797          	auipc	a5,0x7
     5fc:	a0878793          	addi	a5,a5,-1528 # 7000 <static_func_ptr.0>
     600:	639c                	ld	a5,0(a5)
     602:	85b2                	mv	a1,a2
     604:	21010113          	addi	sp,sp,528
     608:	8782                	jr	a5
     60a:	00d56c63          	bltu	a0,a3,622 <_start_c+0xc2>
     60e:	068e                	slli	a3,a3,0x3
     610:	01010813          	addi	a6,sp,16
     614:	20068693          	addi	a3,a3,512
     618:	96c2                	add	a3,a3,a6
     61a:	0087b803          	ld	a6,8(a5)
     61e:	e106b023          	sd	a6,-512(a3)
     622:	07c1                	addi	a5,a5,16
     624:	b7a5                	j	58c <_start_c+0x2c>
     626:	00f6ea63          	bltu	a3,a5,63a <_start_c+0xda>
     62a:	078e                	slli	a5,a5,0x3
     62c:	0808                	addi	a0,sp,16
     62e:	20078793          	addi	a5,a5,512
     632:	97aa                	add	a5,a5,a0
     634:	6708                	ld	a0,8(a4)
     636:	f0a7b023          	sd	a0,-256(a5)
     63a:	0741                	addi	a4,a4,16
     63c:	b7ad                	j	5a6 <_start_c+0x46>
     63e:	97ba                	add	a5,a5,a4
     640:	bf9d                	j	5b6 <_start_c+0x56>
     642:	00883683          	ld	a3,8(a6)
     646:	8eed                	and	a3,a3,a1
     648:	01169a63          	bne	a3,a7,65c <_start_c+0xfc>
     64c:	00083683          	ld	a3,0(a6)
     650:	96aa                	add	a3,a3,a0
     652:	0006b803          	ld	a6,0(a3)
     656:	982a                	add	a6,a6,a0
     658:	0106b023          	sd	a6,0(a3)
     65c:	17c1                	addi	a5,a5,-16
     65e:	bfb5                	j	5da <_start_c+0x7a>
     660:	0086b803          	ld	a6,8(a3)
     664:	00b87833          	and	a6,a6,a1
     668:	01181963          	bne	a6,a7,67a <_start_c+0x11a>
     66c:	0006b803          	ld	a6,0(a3)
     670:	6a94                	ld	a3,16(a3)
     672:	982a                	add	a6,a6,a0
     674:	96aa                	add	a3,a3,a0
     676:	00d83023          	sd	a3,0(a6)
     67a:	17a1                	addi	a5,a5,-24
     67c:	bf9d                	j	5f2 <_start_c+0x92>

000000000000067e <deregister_tm_clones>:
deregister_tm_clones():
     67e:	00007517          	auipc	a0,0x7
     682:	a8a50513          	addi	a0,a0,-1398 # 7108 <__TMC_END__>
     686:	00007797          	auipc	a5,0x7
     68a:	a8278793          	addi	a5,a5,-1406 # 7108 <__TMC_END__>
     68e:	00a78863          	beq	a5,a0,69e <deregister_tm_clones+0x20>
     692:	00007797          	auipc	a5,0x7
     696:	ace7b783          	ld	a5,-1330(a5) # 7160 <_GLOBAL_OFFSET_TABLE_+0x48>
     69a:	c391                	beqz	a5,69e <deregister_tm_clones+0x20>
     69c:	8782                	jr	a5
     69e:	8082                	ret

00000000000006a0 <register_tm_clones>:
register_tm_clones():
     6a0:	00007517          	auipc	a0,0x7
     6a4:	a6850513          	addi	a0,a0,-1432 # 7108 <__TMC_END__>
     6a8:	00007597          	auipc	a1,0x7
     6ac:	a6058593          	addi	a1,a1,-1440 # 7108 <__TMC_END__>
     6b0:	8d89                	sub	a1,a1,a0
     6b2:	4035d793          	srai	a5,a1,0x3
     6b6:	91fd                	srli	a1,a1,0x3f
     6b8:	95be                	add	a1,a1,a5
     6ba:	8585                	srai	a1,a1,0x1
     6bc:	c599                	beqz	a1,6ca <register_tm_clones+0x2a>
     6be:	00007797          	auipc	a5,0x7
     6c2:	a927b783          	ld	a5,-1390(a5) # 7150 <_GLOBAL_OFFSET_TABLE_+0x38>
     6c6:	c391                	beqz	a5,6ca <register_tm_clones+0x2a>
     6c8:	8782                	jr	a5
     6ca:	8082                	ret

00000000000006cc <__do_global_dtors_aux>:
__do_global_dtors_aux():
     6cc:	1141                	addi	sp,sp,-16
     6ce:	e022                	sd	s0,0(sp)
     6d0:	00007417          	auipc	s0,0x7
     6d4:	ae040413          	addi	s0,s0,-1312 # 71b0 <completed.1>
     6d8:	00044783          	lbu	a5,0(s0)
     6dc:	e406                	sd	ra,8(sp)
     6de:	eb95                	bnez	a5,712 <__do_global_dtors_aux+0x46>
     6e0:	00007797          	auipc	a5,0x7
     6e4:	a487b783          	ld	a5,-1464(a5) # 7128 <_GLOBAL_OFFSET_TABLE_+0x10>
     6e8:	c791                	beqz	a5,6f4 <__do_global_dtors_aux+0x28>
     6ea:	00007517          	auipc	a0,0x7
     6ee:	91e53503          	ld	a0,-1762(a0) # 7008 <__dso_handle>
     6f2:	9782                	jalr	a5
     6f4:	f8bff0ef          	jal	ra,67e <deregister_tm_clones>
     6f8:	00007797          	auipc	a5,0x7
     6fc:	a507b783          	ld	a5,-1456(a5) # 7148 <_GLOBAL_OFFSET_TABLE_+0x30>
     700:	c791                	beqz	a5,70c <__do_global_dtors_aux+0x40>
     702:	00005517          	auipc	a0,0x5
     706:	3a650513          	addi	a0,a0,934 # 5aa8 <__FRAME_END__>
     70a:	9782                	jalr	a5
     70c:	4785                	li	a5,1
     70e:	00f40023          	sb	a5,0(s0)
     712:	60a2                	ld	ra,8(sp)
     714:	6402                	ld	s0,0(sp)
     716:	0141                	addi	sp,sp,16
     718:	8082                	ret

000000000000071a <frame_dummy>:
frame_dummy():
     71a:	00007797          	auipc	a5,0x7
     71e:	a867b783          	ld	a5,-1402(a5) # 71a0 <_GLOBAL_OFFSET_TABLE_+0x88>
     722:	cf99                	beqz	a5,740 <frame_dummy+0x26>
     724:	1141                	addi	sp,sp,-16
     726:	e406                	sd	ra,8(sp)
     728:	00007597          	auipc	a1,0x7
     72c:	a9058593          	addi	a1,a1,-1392 # 71b8 <object.0>
     730:	00005517          	auipc	a0,0x5
     734:	37850513          	addi	a0,a0,888 # 5aa8 <__FRAME_END__>
     738:	9782                	jalr	a5
     73a:	60a2                	ld	ra,8(sp)
     73c:	0141                	addi	sp,sp,16
     73e:	b78d                	j	6a0 <register_tm_clones>
     740:	b785                	j	6a0 <register_tm_clones>

0000000000000742 <main>:
main():
     742:	1141                	addi	sp,sp,-16
     744:	e406                	sd	ra,8(sp)
     746:	e022                	sd	s0,0(sp)
     748:	0800                	addi	s0,sp,16
     74a:	00004517          	auipc	a0,0x4
     74e:	5d650513          	addi	a0,a0,1494 # 4d20 <__clzdi2+0x4a>
     752:	22c000ef          	jal	ra,97e <printf>
     756:	4781                	li	a5,0
     758:	853e                	mv	a0,a5
     75a:	60a2                	ld	ra,8(sp)
     75c:	6402                	ld	s0,0(sp)
     75e:	0141                	addi	sp,sp,16
     760:	8082                	ret

0000000000000762 <_init>:
dummy():
     762:	8082                	ret

0000000000000764 <__init_ssp>:
dummy1():
     764:	8082                	ret

0000000000000766 <__init_libc>:
__init_libc():
     766:	7109                	addi	sp,sp,-384
     768:	f2ca                	sd	s2,352(sp)
     76a:	03010913          	addi	s2,sp,48
     76e:	faa2                	sd	s0,368(sp)
     770:	f6a6                	sd	s1,360(sp)
     772:	842e                	mv	s0,a1
     774:	84aa                	mv	s1,a0
     776:	13000613          	li	a2,304
     77a:	4581                	li	a1,0
     77c:	854a                	mv	a0,s2
     77e:	fe86                	sd	ra,376(sp)
     780:	760010ef          	jal	ra,1ee0 <memset>
     784:	00007797          	auipc	a5,0x7
     788:	9b47b783          	ld	a5,-1612(a5) # 7138 <_GLOBAL_OFFSET_TABLE_+0x20>
     78c:	e384                	sd	s1,0(a5)
     78e:	4701                	li	a4,0
     790:	00371793          	slli	a5,a4,0x3
     794:	00f486b3          	add	a3,s1,a5
     798:	6294                	ld	a3,0(a3)
     79a:	0705                	addi	a4,a4,1
     79c:	faf5                	bnez	a3,790 <__init_libc+0x2a>
     79e:	07a1                	addi	a5,a5,8
     7a0:	00f48533          	add	a0,s1,a5
     7a4:	00007497          	auipc	s1,0x7
     7a8:	a5448493          	addi	s1,s1,-1452 # 71f8 <__libc>
     7ac:	e488                	sd	a0,8(s1)
     7ae:	02500713          	li	a4,37
     7b2:	611c                	ld	a5,0(a0)
     7b4:	e3f1                	bnez	a5,878 <__init_libc+0x112>
     7b6:	77ca                	ld	a5,176(sp)
     7b8:	00007717          	auipc	a4,0x7
     7bc:	a2f73c23          	sd	a5,-1480(a4) # 71f0 <__hwcap>
     7c0:	77d2                	ld	a5,304(sp)
     7c2:	c789                	beqz	a5,7cc <__init_libc+0x66>
     7c4:	00007717          	auipc	a4,0x7
     7c8:	a2f73223          	sd	a5,-1500(a4) # 71e8 <__sysinfo>
     7cc:	7786                	ld	a5,96(sp)
     7ce:	f89c                	sd	a5,48(s1)
     7d0:	e801                	bnez	s0,7e0 <__init_libc+0x7a>
     7d2:	77b2                	ld	a5,296(sp)
     7d4:	00004417          	auipc	s0,0x4
     7d8:	55c40413          	addi	s0,s0,1372 # 4d30 <__clzdi2+0x5a>
     7dc:	c391                	beqz	a5,7e0 <__init_libc+0x7a>
     7de:	843e                	mv	s0,a5
     7e0:	00007797          	auipc	a5,0x7
     7e4:	9c87b783          	ld	a5,-1592(a5) # 71a8 <_GLOBAL_OFFSET_TABLE_+0x90>
     7e8:	00007717          	auipc	a4,0x7
     7ec:	97073703          	ld	a4,-1680(a4) # 7158 <_GLOBAL_OFFSET_TABLE_+0x40>
     7f0:	e380                	sd	s0,0(a5)
     7f2:	e300                	sd	s0,0(a4)
     7f4:	02f00693          	li	a3,47
     7f8:	0405                	addi	s0,s0,1
     7fa:	fff44783          	lbu	a5,-1(s0)
     7fe:	ebc1                	bnez	a5,88e <__init_libc+0x128>
     800:	854a                	mv	a0,s2
     802:	0d7010ef          	jal	ra,20d8 <__init_tls>
     806:	756e                	ld	a0,248(sp)
     808:	f5dff0ef          	jal	ra,764 <__init_ssp>
     80c:	672a                	ld	a4,136(sp)
     80e:	67ca                	ld	a5,144(sp)
     810:	00f71863          	bne	a4,a5,820 <__init_libc+0xba>
     814:	676a                	ld	a4,152(sp)
     816:	778a                	ld	a5,160(sp)
     818:	00f71463          	bne	a4,a5,820 <__init_libc+0xba>
     81c:	77ae                	ld	a5,232(sp)
     81e:	c3d9                	beqz	a5,8a4 <__init_libc+0x13e>
     820:	f002                	sd	zero,32(sp)
     822:	4785                	li	a5,1
     824:	f402                	sd	zero,40(sp)
     826:	d03e                	sw	a5,32(sp)
     828:	4789                	li	a5,2
     82a:	d43e                	sw	a5,40(sp)
     82c:	083c                	addi	a5,sp,24
     82e:	ec02                	sd	zero,24(sp)
     830:	e402                	sd	zero,8(sp)
     832:	e802                	sd	zero,16(sp)
     834:	04900893          	li	a7,73
     838:	853e                	mv	a0,a5
     83a:	458d                	li	a1,3
     83c:	0030                	addi	a2,sp,8
     83e:	4681                	li	a3,0
     840:	4721                	li	a4,8
     842:	00000073          	ecall
     846:	2501                	sext.w	a0,a0
     848:	02054563          	bltz	a0,872 <__init_libc+0x10c>
     84c:	6621                	lui	a2,0x8
     84e:	00004597          	auipc	a1,0x4
     852:	4ea58593          	addi	a1,a1,1258 # 4d38 <__clzdi2+0x62>
     856:	0609                	addi	a2,a2,2
     858:	0067d703          	lhu	a4,6(a5)
     85c:	02077713          	andi	a4,a4,32
     860:	cf05                	beqz	a4,898 <__init_libc+0x132>
     862:	03800893          	li	a7,56
     866:	f9c00513          	li	a0,-100
     86a:	00000073          	ecall
     86e:	02055563          	bgez	a0,898 <__init_libc+0x132>
     872:	00000023          	sb	zero,0(zero) # 0 <exit-0x508>
     876:	9002                	ebreak
     878:	00f76963          	bltu	a4,a5,88a <__init_libc+0x124>
     87c:	6514                	ld	a3,8(a0)
     87e:	078e                	slli	a5,a5,0x3
     880:	16078793          	addi	a5,a5,352
     884:	978a                	add	a5,a5,sp
     886:	ecd7b823          	sd	a3,-304(a5)
     88a:	0541                	addi	a0,a0,16
     88c:	b71d                	j	7b2 <__init_libc+0x4c>
     88e:	00d79363          	bne	a5,a3,894 <__init_libc+0x12e>
     892:	e300                	sd	s0,0(a4)
     894:	0405                	addi	s0,s0,1
     896:	b795                	j	7fa <__init_libc+0x94>
     898:	07a1                	addi	a5,a5,8
     89a:	faf91fe3          	bne	s2,a5,858 <__init_libc+0xf2>
     89e:	4785                	li	a5,1
     8a0:	00f48123          	sb	a5,2(s1)
     8a4:	70f6                	ld	ra,376(sp)
     8a6:	7456                	ld	s0,368(sp)
     8a8:	74b6                	ld	s1,360(sp)
     8aa:	7916                	ld	s2,352(sp)
     8ac:	6119                	addi	sp,sp,384
     8ae:	8082                	ret

00000000000008b0 <__libc_start_init>:
libc_start_init():
     8b0:	1101                	addi	sp,sp,-32
     8b2:	00007317          	auipc	t1,0x7
     8b6:	88e33303          	ld	t1,-1906(t1) # 7140 <_GLOBAL_OFFSET_TABLE_+0x28>
     8ba:	e822                	sd	s0,16(sp)
     8bc:	e426                	sd	s1,8(sp)
     8be:	ec06                	sd	ra,24(sp)
     8c0:	00007417          	auipc	s0,0x7
     8c4:	8d843403          	ld	s0,-1832(s0) # 7198 <_GLOBAL_OFFSET_TABLE_+0x80>
     8c8:	9302                	jalr	t1
     8ca:	00007497          	auipc	s1,0x7
     8ce:	8b64b483          	ld	s1,-1866(s1) # 7180 <_GLOBAL_OFFSET_TABLE_+0x68>
     8d2:	00946763          	bltu	s0,s1,8e0 <__libc_start_init+0x30>
     8d6:	60e2                	ld	ra,24(sp)
     8d8:	6442                	ld	s0,16(sp)
     8da:	64a2                	ld	s1,8(sp)
     8dc:	6105                	addi	sp,sp,32
     8de:	8082                	ret
     8e0:	601c                	ld	a5,0(s0)
     8e2:	0421                	addi	s0,s0,8
     8e4:	9782                	jalr	a5
     8e6:	b7f5                	j	8d2 <__libc_start_init+0x22>

00000000000008e8 <libc_start_main_stage2>:
libc_start_main_stage2():
     8e8:	7179                	addi	sp,sp,-48
     8ea:	f022                	sd	s0,32(sp)
     8ec:	00158413          	addi	s0,a1,1
     8f0:	040e                	slli	s0,s0,0x3
     8f2:	f406                	sd	ra,40(sp)
     8f4:	ec26                	sd	s1,24(sp)
     8f6:	e84a                	sd	s2,16(sp)
     8f8:	84ae                	mv	s1,a1
     8fa:	892a                	mv	s2,a0
     8fc:	9432                	add	s0,s0,a2
     8fe:	e432                	sd	a2,8(sp)
     900:	fb1ff0ef          	jal	ra,8b0 <__libc_start_init>
     904:	65a2                	ld	a1,8(sp)
     906:	8622                	mv	a2,s0
     908:	8526                	mv	a0,s1
     90a:	9902                	jalr	s2
     90c:	bfdff0ef          	jal	ra,508 <exit>

0000000000000910 <__libc_start_main>:
__libc_start_main():
     910:	7179                	addi	sp,sp,-48
     912:	f022                	sd	s0,32(sp)
     914:	ec26                	sd	s1,24(sp)
     916:	842e                	mv	s0,a1
     918:	84aa                	mv	s1,a0
     91a:	00158513          	addi	a0,a1,1
     91e:	620c                	ld	a1,0(a2)
     920:	050e                	slli	a0,a0,0x3
     922:	9532                	add	a0,a0,a2
     924:	f406                	sd	ra,40(sp)
     926:	e432                	sd	a2,8(sp)
     928:	e3fff0ef          	jal	ra,766 <__init_libc>
     92c:	00000797          	auipc	a5,0x0
     930:	fbc78793          	addi	a5,a5,-68 # 8e8 <libc_start_main_stage2>
     934:	85a2                	mv	a1,s0
     936:	7402                	ld	s0,32(sp)
     938:	6622                	ld	a2,8(sp)
     93a:	70a2                	ld	ra,40(sp)
     93c:	8526                	mv	a0,s1
     93e:	64e2                	ld	s1,24(sp)
     940:	6145                	addi	sp,sp,48
     942:	8782                	jr	a5

0000000000000944 <_fini>:
dummy():
     944:	8082                	ret

0000000000000946 <__libc_exit_fini>:
libc_exit_fini():
     946:	1101                	addi	sp,sp,-32
     948:	e822                	sd	s0,16(sp)
     94a:	e426                	sd	s1,8(sp)
     94c:	ec06                	sd	ra,24(sp)
     94e:	00006417          	auipc	s0,0x6
     952:	7e243403          	ld	s0,2018(s0) # 7130 <_GLOBAL_OFFSET_TABLE_+0x18>
     956:	00007497          	auipc	s1,0x7
     95a:	8124b483          	ld	s1,-2030(s1) # 7168 <_GLOBAL_OFFSET_TABLE_+0x50>
     95e:	0084eb63          	bltu	s1,s0,974 <__libc_exit_fini+0x2e>
     962:	6442                	ld	s0,16(sp)
     964:	60e2                	ld	ra,24(sp)
     966:	64a2                	ld	s1,8(sp)
     968:	00007317          	auipc	t1,0x7
     96c:	82033303          	ld	t1,-2016(t1) # 7188 <_GLOBAL_OFFSET_TABLE_+0x70>
     970:	6105                	addi	sp,sp,32
     972:	8302                	jr	t1
     974:	ff843783          	ld	a5,-8(s0)
     978:	1461                	addi	s0,s0,-8
     97a:	9782                	jalr	a5
     97c:	b7cd                	j	95e <__libc_exit_fini+0x18>

000000000000097e <printf>:
printf():
     97e:	711d                	addi	sp,sp,-96
     980:	f42e                	sd	a1,40(sp)
     982:	f832                	sd	a2,48(sp)
     984:	85aa                	mv	a1,a0
     986:	1030                	addi	a2,sp,40
     988:	00006517          	auipc	a0,0x6
     98c:	68850513          	addi	a0,a0,1672 # 7010 <__stdout_FILE>
     990:	ec06                	sd	ra,24(sp)
     992:	fc36                	sd	a3,56(sp)
     994:	e0ba                	sd	a4,64(sp)
     996:	e4be                	sd	a5,72(sp)
     998:	e8c2                	sd	a6,80(sp)
     99a:	ecc6                	sd	a7,88(sp)
     99c:	e432                	sd	a2,8(sp)
     99e:	438010ef          	jal	ra,1dd6 <vfprintf>
     9a2:	60e2                	ld	ra,24(sp)
     9a4:	6125                	addi	sp,sp,96
     9a6:	8082                	ret

00000000000009a8 <pop_arg>:
pop_arg():
     9a8:	35dd                	addiw	a1,a1,-9
     9aa:	0005871b          	sext.w	a4,a1
     9ae:	47c5                	li	a5,17
     9b0:	0ae7e263          	bltu	a5,a4,a54 <pop_arg+0xac>
     9b4:	02059793          	slli	a5,a1,0x20
     9b8:	01e7d593          	srli	a1,a5,0x1e
     9bc:	00004797          	auipc	a5,0x4
     9c0:	38878793          	addi	a5,a5,904 # 4d44 <__clzdi2+0x6e>
     9c4:	95be                	add	a1,a1,a5
     9c6:	4198                	lw	a4,0(a1)
     9c8:	1141                	addi	sp,sp,-16
     9ca:	e022                	sd	s0,0(sp)
     9cc:	973e                	add	a4,a4,a5
     9ce:	e406                	sd	ra,8(sp)
     9d0:	621c                	ld	a5,0(a2)
     9d2:	842a                	mv	s0,a0
     9d4:	8702                	jr	a4
     9d6:	00878713          	addi	a4,a5,8
     9da:	439c                	lw	a5,0(a5)
     9dc:	e218                	sd	a4,0(a2)
     9de:	e01c                	sd	a5,0(s0)
     9e0:	60a2                	ld	ra,8(sp)
     9e2:	6402                	ld	s0,0(sp)
     9e4:	0141                	addi	sp,sp,16
     9e6:	8082                	ret
     9e8:	00878713          	addi	a4,a5,8
     9ec:	e218                	sd	a4,0(a2)
     9ee:	0007e783          	lwu	a5,0(a5)
     9f2:	b7f5                	j	9de <pop_arg+0x36>
     9f4:	00878713          	addi	a4,a5,8
     9f8:	e218                	sd	a4,0(a2)
     9fa:	00079783          	lh	a5,0(a5)
     9fe:	b7c5                	j	9de <pop_arg+0x36>
     a00:	00878713          	addi	a4,a5,8
     a04:	e218                	sd	a4,0(a2)
     a06:	0007d783          	lhu	a5,0(a5)
     a0a:	bfd1                	j	9de <pop_arg+0x36>
     a0c:	00878713          	addi	a4,a5,8
     a10:	e218                	sd	a4,0(a2)
     a12:	00078783          	lb	a5,0(a5)
     a16:	b7e1                	j	9de <pop_arg+0x36>
     a18:	00878713          	addi	a4,a5,8
     a1c:	e218                	sd	a4,0(a2)
     a1e:	0007c783          	lbu	a5,0(a5)
     a22:	bf75                	j	9de <pop_arg+0x36>
     a24:	00878713          	addi	a4,a5,8
     a28:	e218                	sd	a4,0(a2)
     a2a:	639c                	ld	a5,0(a5)
     a2c:	bf4d                	j	9de <pop_arg+0x36>
     a2e:	2388                	fld	fa0,0(a5)
     a30:	00878713          	addi	a4,a5,8
     a34:	e218                	sd	a4,0(a2)
     a36:	1b6040ef          	jal	ra,4bec <__extenddftf2>
     a3a:	e008                	sd	a0,0(s0)
     a3c:	e40c                	sd	a1,8(s0)
     a3e:	b74d                	j	9e0 <pop_arg+0x38>
     a40:	07bd                	addi	a5,a5,15
     a42:	9bc1                	andi	a5,a5,-16
     a44:	01078713          	addi	a4,a5,16
     a48:	e218                	sd	a4,0(a2)
     a4a:	6398                	ld	a4,0(a5)
     a4c:	679c                	ld	a5,8(a5)
     a4e:	e118                	sd	a4,0(a0)
     a50:	e51c                	sd	a5,8(a0)
     a52:	b779                	j	9e0 <pop_arg+0x38>
     a54:	8082                	ret

0000000000000a56 <fmt_u>:
fmt_u():
     a56:	87aa                	mv	a5,a0
     a58:	46a9                	li	a3,10
     a5a:	852e                	mv	a0,a1
     a5c:	e391                	bnez	a5,a60 <fmt_u+0xa>
     a5e:	8082                	ret
     a60:	02d7f733          	remu	a4,a5,a3
     a64:	157d                	addi	a0,a0,-1
     a66:	0307071b          	addiw	a4,a4,48
     a6a:	02d7d7b3          	divu	a5,a5,a3
     a6e:	00e50023          	sb	a4,0(a0)
     a72:	b7ed                	j	a5c <fmt_u+0x6>

0000000000000a74 <getint>:
getint():
     a74:	0cccd637          	lui	a2,0xcccd
     a78:	800005b7          	lui	a1,0x80000
     a7c:	86aa                	mv	a3,a0
     a7e:	4325                	li	t1,9
     a80:	4501                	li	a0,0
     a82:	ccc60613          	addi	a2,a2,-820 # ccccccc <__BSS_END__+0xccc54ac>
     a86:	5e59                	li	t3,-10
     a88:	fff5c593          	not	a1,a1
     a8c:	6298                	ld	a4,0(a3)
     a8e:	00074783          	lbu	a5,0(a4)
     a92:	fd07881b          	addiw	a6,a5,-48
     a96:	87c2                	mv	a5,a6
     a98:	01037363          	bgeu	t1,a6,a9e <getint+0x2a>
     a9c:	8082                	ret
     a9e:	00a66e63          	bltu	a2,a0,aba <getint+0x46>
     aa2:	02ae08bb          	mulw	a7,t3,a0
     aa6:	557d                	li	a0,-1
     aa8:	00b88ebb          	addw	t4,a7,a1
     aac:	010ec463          	blt	t4,a6,ab4 <getint+0x40>
     ab0:	4117853b          	subw	a0,a5,a7
     ab4:	0705                	addi	a4,a4,1
     ab6:	e298                	sd	a4,0(a3)
     ab8:	bfd1                	j	a8c <getint+0x18>
     aba:	557d                	li	a0,-1
     abc:	bfe5                	j	ab4 <getint+0x40>

0000000000000abe <out>:
out():
     abe:	87aa                	mv	a5,a0
     ac0:	4398                	lw	a4,0(a5)
     ac2:	852e                	mv	a0,a1
     ac4:	85b2                	mv	a1,a2
     ac6:	02077713          	andi	a4,a4,32
     aca:	e701                	bnez	a4,ad2 <out+0x14>
     acc:	863e                	mv	a2,a5
     ace:	1f30106f          	j	24c0 <__fwritex>
     ad2:	8082                	ret

0000000000000ad4 <pad>:
pad():
     ad4:	67c9                	lui	a5,0x12
     ad6:	8f7d                	and	a4,a4,a5
     ad8:	eb35                	bnez	a4,b4c <pad+0x78>
     ada:	06c6d963          	bge	a3,a2,b4c <pad+0x78>
     ade:	7169                	addi	sp,sp,-304
     ae0:	f222                	sd	s0,288(sp)
     ae2:	ee26                	sd	s1,280(sp)
     ae4:	ea4a                	sd	s2,272(sp)
     ae6:	40d604bb          	subw	s1,a2,a3
     aea:	f606                	sd	ra,296(sp)
     aec:	e64e                	sd	s3,264(sp)
     aee:	e252                	sd	s4,256(sp)
     af0:	10000793          	li	a5,256
     af4:	892a                	mv	s2,a0
     af6:	8426                	mv	s0,s1
     af8:	0004861b          	sext.w	a2,s1
     afc:	0097d463          	bge	a5,s1,b04 <pad+0x30>
     b00:	10000613          	li	a2,256
     b04:	898a                	mv	s3,sp
     b06:	854e                	mv	a0,s3
     b08:	3d8010ef          	jal	ra,1ee0 <memset>
     b0c:	0ff00a13          	li	s4,255
     b10:	029a4563          	blt	s4,s1,b3a <pad+0x66>
     b14:	0084561b          	srliw	a2,s0,0x8
     b18:	f0000793          	li	a5,-256
     b1c:	02f6063b          	mulw	a2,a2,a5
     b20:	85ce                	mv	a1,s3
     b22:	854a                	mv	a0,s2
     b24:	9e21                	addw	a2,a2,s0
     b26:	f99ff0ef          	jal	ra,abe <out>
     b2a:	70b2                	ld	ra,296(sp)
     b2c:	7412                	ld	s0,288(sp)
     b2e:	64f2                	ld	s1,280(sp)
     b30:	6952                	ld	s2,272(sp)
     b32:	69b2                	ld	s3,264(sp)
     b34:	6a12                	ld	s4,256(sp)
     b36:	6155                	addi	sp,sp,304
     b38:	8082                	ret
     b3a:	10000613          	li	a2,256
     b3e:	85ce                	mv	a1,s3
     b40:	854a                	mv	a0,s2
     b42:	f7dff0ef          	jal	ra,abe <out>
     b46:	f004849b          	addiw	s1,s1,-256
     b4a:	b7d9                	j	b10 <pad+0x3c>
     b4c:	8082                	ret

0000000000000b4e <fmt_fp>:
fmt_fp():
     b4e:	7119                	addi	sp,sp,-128
     b50:	72f9                	lui	t0,0xffffe
     b52:	f8a2                	sd	s0,112(sp)
     b54:	2c028293          	addi	t0,t0,704 # ffffffffffffe2c0 <__BSS_END__+0xffffffffffff6aa0>
     b58:	843a                	mv	s0,a4
     b5a:	6709                	lui	a4,0x2
     b5c:	f4a6                	sd	s1,104(sp)
     b5e:	f0ca                	sd	s2,96(sp)
     b60:	ecce                	sd	s3,88(sp)
     b62:	e0da                	sd	s6,64(sp)
     b64:	f862                	sd	s8,48(sp)
     b66:	f466                	sd	s9,40(sp)
     b68:	fc86                	sd	ra,120(sp)
     b6a:	e8d2                	sd	s4,80(sp)
     b6c:	e4d6                	sd	s5,72(sp)
     b6e:	fc5e                	sd	s7,56(sp)
     b70:	f06a                	sd	s10,32(sp)
     b72:	ec6e                	sd	s11,24(sp)
     b74:	89be                	mv	s3,a5
     b76:	9116                	add	sp,sp,t0
     b78:	77f9                	lui	a5,0xffffe
     b7a:	d1070713          	addi	a4,a4,-752 # 1d10 <printf_core+0x5c0>
     b7e:	973e                	add	a4,a4,a5
     b80:	009c                	addi	a5,sp,64
     b82:	84aa                	mv	s1,a0
     b84:	8cae                	mv	s9,a1
     b86:	97ba                	add	a5,a5,a4
     b88:	852e                	mv	a0,a1
     b8a:	85b2                	mv	a1,a2
     b8c:	8c32                	mv	s8,a2
     b8e:	8936                	mv	s2,a3
     b90:	8b42                	mv	s6,a6
     b92:	2e07ae23          	sw	zero,764(a5) # ffffffffffffe2fc <__BSS_END__+0xffffffffffff6adc>
     b96:	6f8010ef          	jal	ra,228e <__signbitl>
     b9a:	c961                	beqz	a0,c6a <fmt_fp+0x11c>
     b9c:	57fd                	li	a5,-1
     b9e:	17fe                	slli	a5,a5,0x3f
     ba0:	00fc4c33          	xor	s8,s8,a5
     ba4:	4a05                	li	s4,1
     ba6:	00004a97          	auipc	s5,0x4
     baa:	1eaa8a93          	addi	s5,s5,490 # 4d90 <__clzdi2+0xba>
     bae:	8566                	mv	a0,s9
     bb0:	85e2                	mv	a1,s8
     bb2:	6b2010ef          	jal	ra,2264 <__fpclassifyl>
     bb6:	4785                	li	a5,1
     bb8:	0ea7c363          	blt	a5,a0,c9e <fmt_fp+0x150>
     bbc:	020b7b13          	andi	s6,s6,32
     bc0:	00004b97          	auipc	s7,0x4
     bc4:	1e8b8b93          	addi	s7,s7,488 # 4da8 <__clzdi2+0xd2>
     bc8:	000b1663          	bnez	s6,bd4 <fmt_fp+0x86>
     bcc:	00004b97          	auipc	s7,0x4
     bd0:	1e4b8b93          	addi	s7,s7,484 # 4db0 <__clzdi2+0xda>
     bd4:	8666                	mv	a2,s9
     bd6:	86e2                	mv	a3,s8
     bd8:	8566                	mv	a0,s9
     bda:	85e2                	mv	a1,s8
     bdc:	48d020ef          	jal	ra,3868 <__eqtf2>
     be0:	c919                	beqz	a0,bf6 <fmt_fp+0xa8>
     be2:	00004b97          	auipc	s7,0x4
     be6:	1deb8b93          	addi	s7,s7,478 # 4dc0 <__clzdi2+0xea>
     bea:	000b1663          	bnez	s6,bf6 <fmt_fp+0xa8>
     bee:	00004b97          	auipc	s7,0x4
     bf2:	1cab8b93          	addi	s7,s7,458 # 4db8 <__clzdi2+0xe2>
     bf6:	7741                	lui	a4,0xffff0
     bf8:	003a0b1b          	addiw	s6,s4,3
     bfc:	177d                	addi	a4,a4,-1
     bfe:	00e9f733          	and	a4,s3,a4
     c02:	86da                	mv	a3,s6
     c04:	864a                	mv	a2,s2
     c06:	02000593          	li	a1,32
     c0a:	8526                	mv	a0,s1
     c0c:	ec9ff0ef          	jal	ra,ad4 <pad>
     c10:	8652                	mv	a2,s4
     c12:	85d6                	mv	a1,s5
     c14:	8526                	mv	a0,s1
     c16:	ea9ff0ef          	jal	ra,abe <out>
     c1a:	460d                	li	a2,3
     c1c:	85de                	mv	a1,s7
     c1e:	8526                	mv	a0,s1
     c20:	e9fff0ef          	jal	ra,abe <out>
     c24:	6709                	lui	a4,0x2
     c26:	00e9c733          	xor	a4,s3,a4
     c2a:	86da                	mv	a3,s6
     c2c:	864a                	mv	a2,s2
     c2e:	02000593          	li	a1,32
     c32:	8526                	mv	a0,s1
     c34:	845a                	mv	s0,s6
     c36:	e9fff0ef          	jal	ra,ad4 <pad>
     c3a:	012b5363          	bge	s6,s2,c40 <fmt_fp+0xf2>
     c3e:	844a                	mv	s0,s2
     c40:	0004051b          	sext.w	a0,s0
     c44:	6289                	lui	t0,0x2
     c46:	d4028293          	addi	t0,t0,-704 # 1d40 <printf_core+0x5f0>
     c4a:	9116                	add	sp,sp,t0
     c4c:	70e6                	ld	ra,120(sp)
     c4e:	7446                	ld	s0,112(sp)
     c50:	74a6                	ld	s1,104(sp)
     c52:	7906                	ld	s2,96(sp)
     c54:	69e6                	ld	s3,88(sp)
     c56:	6a46                	ld	s4,80(sp)
     c58:	6aa6                	ld	s5,72(sp)
     c5a:	6b06                	ld	s6,64(sp)
     c5c:	7be2                	ld	s7,56(sp)
     c5e:	7c42                	ld	s8,48(sp)
     c60:	7ca2                	ld	s9,40(sp)
     c62:	7d02                	ld	s10,32(sp)
     c64:	6de2                	ld	s11,24(sp)
     c66:	6109                	addi	sp,sp,128
     c68:	8082                	ret
     c6a:	00b9d713          	srli	a4,s3,0xb
     c6e:	8b05                	andi	a4,a4,1
     c70:	0009879b          	sext.w	a5,s3
     c74:	eb09                	bnez	a4,c86 <fmt_fp+0x138>
     c76:	8b85                	andi	a5,a5,1
     c78:	ef89                	bnez	a5,c92 <fmt_fp+0x144>
     c7a:	8a2a                	mv	s4,a0
     c7c:	00004a97          	auipc	s5,0x4
     c80:	115a8a93          	addi	s5,s5,277 # 4d91 <__clzdi2+0xbb>
     c84:	b72d                	j	bae <fmt_fp+0x60>
     c86:	4a05                	li	s4,1
     c88:	00004a97          	auipc	s5,0x4
     c8c:	10ba8a93          	addi	s5,s5,267 # 4d93 <__clzdi2+0xbd>
     c90:	bf39                	j	bae <fmt_fp+0x60>
     c92:	4a05                	li	s4,1
     c94:	00004a97          	auipc	s5,0x4
     c98:	102a8a93          	addi	s5,s5,258 # 4d96 <__clzdi2+0xc0>
     c9c:	bf09                	j	bae <fmt_fp+0x60>
     c9e:	7d79                	lui	s10,0xffffe
     ca0:	6b89                	lui	s7,0x2
     ca2:	2fcd0613          	addi	a2,s10,764 # ffffffffffffe2fc <__BSS_END__+0xffffffffffff6adc>
     ca6:	d10b8793          	addi	a5,s7,-752 # 1d10 <printf_core+0x5c0>
     caa:	97b2                	add	a5,a5,a2
     cac:	0098                	addi	a4,sp,64
     cae:	00e78633          	add	a2,a5,a4
     cb2:	8566                	mv	a0,s9
     cb4:	85e2                	mv	a1,s8
     cb6:	5de010ef          	jal	ra,2294 <frexpl>
     cba:	862a                	mv	a2,a0
     cbc:	86ae                	mv	a3,a1
     cbe:	18e020ef          	jal	ra,2e4c <__addtf3>
     cc2:	4601                	li	a2,0
     cc4:	4681                	li	a3,0
     cc6:	8caa                	mv	s9,a0
     cc8:	8c2e                	mv	s8,a1
     cca:	e82a                	sd	a0,16(sp)
     ccc:	e02e                	sd	a1,0(sp)
     cce:	39b020ef          	jal	ra,3868 <__eqtf2>
     cd2:	87e2                	mv	a5,s8
     cd4:	8766                	mv	a4,s9
     cd6:	cd01                	beqz	a0,cee <fmt_fp+0x1a0>
     cd8:	d10b8693          	addi	a3,s7,-752
     cdc:	96ea                	add	a3,a3,s10
     cde:	0090                	addi	a2,sp,64
     ce0:	00c68d33          	add	s10,a3,a2
     ce4:	2fcd2683          	lw	a3,764(s10)
     ce8:	36fd                	addiw	a3,a3,-1
     cea:	2edd2e23          	sw	a3,764(s10)
     cee:	020b6693          	ori	a3,s6,32
     cf2:	e036                	sd	a3,0(sp)
     cf4:	020b6613          	ori	a2,s6,32
     cf8:	06100693          	li	a3,97
     cfc:	2cd61263          	bne	a2,a3,fc0 <fmt_fp+0x472>
     d00:	020b7693          	andi	a3,s6,32
     d04:	e836                	sd	a3,16(sp)
     d06:	c291                	beqz	a3,d0a <fmt_fp+0x1bc>
     d08:	0aa5                	addi	s5,s5,9
     d0a:	0004069b          	sext.w	a3,s0
     d0e:	002a0d1b          	addiw	s10,s4,2
     d12:	e436                	sd	a3,8(sp)
     d14:	46e9                	li	a3,26
     d16:	8a6a                	mv	s4,s10
     d18:	00004d97          	auipc	s11,0x4
     d1c:	1d8d8d93          	addi	s11,s11,472 # 4ef0 <__clzdi2+0x21a>
     d20:	0486e463          	bltu	a3,s0,d68 <fmt_fp+0x21a>
     d24:	000dbc83          	ld	s9,0(s11)
     d28:	008dbc03          	ld	s8,8(s11)
     d2c:	4bed                	li	s7,27
     d2e:	408b8bbb          	subw	s7,s7,s0
     d32:	587d                	li	a6,-1
     d34:	3bfd                	addiw	s7,s7,-1
     d36:	190b9563          	bne	s7,a6,ec0 <fmt_fp+0x372>
     d3a:	000ac603          	lbu	a2,0(s5)
     d3e:	02d00693          	li	a3,45
     d42:	18d61e63          	bne	a2,a3,ede <fmt_fp+0x390>
     d46:	1bfe                	slli	s7,s7,0x3f
     d48:	8666                	mv	a2,s9
     d4a:	86e2                	mv	a3,s8
     d4c:	853a                	mv	a0,a4
     d4e:	0177c5b3          	xor	a1,a5,s7
     d52:	2d6030ef          	jal	ra,4028 <__subtf3>
     d56:	862a                	mv	a2,a0
     d58:	86ae                	mv	a3,a1
     d5a:	8566                	mv	a0,s9
     d5c:	85e2                	mv	a1,s8
     d5e:	0ee020ef          	jal	ra,2e4c <__addtf3>
     d62:	8caa                	mv	s9,a0
     d64:	0175cc33          	xor	s8,a1,s7
     d68:	7bf9                	lui	s7,0xffffe
     d6a:	6689                	lui	a3,0x2
     d6c:	300b8793          	addi	a5,s7,768 # ffffffffffffe300 <__BSS_END__+0xffffffffffff6ae0>
     d70:	d1068713          	addi	a4,a3,-752 # 1d10 <printf_core+0x5c0>
     d74:	973e                	add	a4,a4,a5
     d76:	009c                	addi	a5,sp,64
     d78:	97ba                	add	a5,a5,a4
     d7a:	00c78593          	addi	a1,a5,12
     d7e:	ec3e                	sd	a5,24(sp)
     d80:	d1068793          	addi	a5,a3,-752
     d84:	97de                	add	a5,a5,s7
     d86:	0098                	addi	a4,sp,64
     d88:	00e78bb3          	add	s7,a5,a4
     d8c:	2fcba703          	lw	a4,764(s7)
     d90:	e02e                	sd	a1,0(sp)
     d92:	41f7551b          	sraiw	a0,a4,0x1f
     d96:	8f29                	xor	a4,a4,a0
     d98:	40a7053b          	subw	a0,a4,a0
     d9c:	cbbff0ef          	jal	ra,a56 <fmt_u>
     da0:	6582                	ld	a1,0(sp)
     da2:	67e2                	ld	a5,24(sp)
     da4:	00b51863          	bne	a0,a1,db4 <fmt_fp+0x266>
     da8:	03000713          	li	a4,48
     dac:	30eb85a3          	sb	a4,779(s7)
     db0:	00b78513          	addi	a0,a5,11
     db4:	6709                	lui	a4,0x2
     db6:	77f9                	lui	a5,0xffffe
     db8:	d1070713          	addi	a4,a4,-752 # 1d10 <printf_core+0x5c0>
     dbc:	973e                	add	a4,a4,a5
     dbe:	009c                	addi	a5,sp,64
     dc0:	97ba                	add	a5,a5,a4
     dc2:	2fc7a703          	lw	a4,764(a5) # ffffffffffffe2fc <__BSS_END__+0xffffffffffff6adc>
     dc6:	02d00793          	li	a5,45
     dca:	00074463          	bltz	a4,dd2 <fmt_fp+0x284>
     dce:	02b00793          	li	a5,43
     dd2:	fef50fa3          	sb	a5,-1(a0)
     dd6:	ffe50793          	addi	a5,a0,-2
     dda:	e03e                	sd	a5,0(sp)
     ddc:	6709                	lui	a4,0x2
     dde:	77f9                	lui	a5,0xffffe
     de0:	31078793          	addi	a5,a5,784 # ffffffffffffe310 <__BSS_END__+0xffffffffffff6af0>
     de4:	d1070713          	addi	a4,a4,-752 # 1d10 <printf_core+0x5c0>
     de8:	973e                	add	a4,a4,a5
     dea:	009c                	addi	a5,sp,64
     dec:	00f70bb3          	add	s7,a4,a5
     df0:	000db783          	ld	a5,0(s11)
     df4:	2b3d                	addiw	s6,s6,15
     df6:	ff650f23          	sb	s6,-2(a0)
     dfa:	f03e                	sd	a5,32(sp)
     dfc:	008db783          	ld	a5,8(s11)
     e00:	ec5e                	sd	s7,24(sp)
     e02:	0089fd93          	andi	s11,s3,8
     e06:	f43e                	sd	a5,40(sp)
     e08:	85e2                	mv	a1,s8
     e0a:	8566                	mv	a0,s9
     e0c:	41b030ef          	jal	ra,4a26 <__fixtfsi>
     e10:	2501                	sext.w	a0,a0
     e12:	00004797          	auipc	a5,0x4
     e16:	32e78793          	addi	a5,a5,814 # 5140 <xdigits>
     e1a:	00a78733          	add	a4,a5,a0
     e1e:	00074703          	lbu	a4,0(a4)
     e22:	67c2                	ld	a5,16(sp)
     e24:	001b8b13          	addi	s6,s7,1
     e28:	8f5d                	or	a4,a4,a5
     e2a:	00eb8023          	sb	a4,0(s7)
     e2e:	50f030ef          	jal	ra,4b3c <__floatsitf>
     e32:	862a                	mv	a2,a0
     e34:	86ae                	mv	a3,a1
     e36:	8566                	mv	a0,s9
     e38:	85e2                	mv	a1,s8
     e3a:	1ee030ef          	jal	ra,4028 <__subtf3>
     e3e:	76a2                	ld	a3,40(sp)
     e40:	7602                	ld	a2,32(sp)
     e42:	2b5020ef          	jal	ra,38f6 <__multf3>
     e46:	67e2                	ld	a5,24(sp)
     e48:	882a                	mv	a6,a0
     e4a:	872e                	mv	a4,a1
     e4c:	40fb06b3          	sub	a3,s6,a5
     e50:	4785                	li	a5,1
     e52:	8caa                	mv	s9,a0
     e54:	8c2e                	mv	s8,a1
     e56:	02f69563          	bne	a3,a5,e80 <fmt_fp+0x332>
     e5a:	4601                	li	a2,0
     e5c:	4681                	li	a3,0
     e5e:	fc2e                	sd	a1,56(sp)
     e60:	f82a                	sd	a0,48(sp)
     e62:	207020ef          	jal	ra,3868 <__eqtf2>
     e66:	8866                	mv	a6,s9
     e68:	8762                	mv	a4,s8
     e6a:	e509                	bnez	a0,e74 <fmt_fp+0x326>
     e6c:	00804463          	bgtz	s0,e74 <fmt_fp+0x326>
     e70:	000d8f63          	beqz	s11,e8e <fmt_fp+0x340>
     e74:	02e00793          	li	a5,46
     e78:	002b8b13          	addi	s6,s7,2
     e7c:	00fb80a3          	sb	a5,1(s7)
     e80:	4601                	li	a2,0
     e82:	4681                	li	a3,0
     e84:	8542                	mv	a0,a6
     e86:	85ba                	mv	a1,a4
     e88:	1e1020ef          	jal	ra,3868 <__eqtf2>
     e8c:	e535                	bnez	a0,ef8 <fmt_fp+0x3aa>
     e8e:	6789                	lui	a5,0x2
     e90:	7779                	lui	a4,0xffffe
     e92:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
     e96:	97ba                	add	a5,a5,a4
     e98:	0094                	addi	a3,sp,64
     e9a:	00d78c33          	add	s8,a5,a3
     e9e:	6782                	ld	a5,0(sp)
     ea0:	30cc0c13          	addi	s8,s8,780
     ea4:	40fc0c33          	sub	s8,s8,a5
     ea8:	800007b7          	lui	a5,0x80000
     eac:	ffd7c793          	xori	a5,a5,-3
     eb0:	418787b3          	sub	a5,a5,s8
     eb4:	41a787b3          	sub	a5,a5,s10
     eb8:	0487d263          	bge	a5,s0,efc <fmt_fp+0x3ae>
     ebc:	557d                	li	a0,-1
     ebe:	b359                	j	c44 <fmt_fp+0xf6>
     ec0:	000db603          	ld	a2,0(s11)
     ec4:	008db683          	ld	a3,8(s11)
     ec8:	8566                	mv	a0,s9
     eca:	85e2                	mv	a1,s8
     ecc:	ec3e                	sd	a5,24(sp)
     ece:	e03a                	sd	a4,0(sp)
     ed0:	227020ef          	jal	ra,38f6 <__multf3>
     ed4:	67e2                	ld	a5,24(sp)
     ed6:	6702                	ld	a4,0(sp)
     ed8:	8caa                	mv	s9,a0
     eda:	8c2e                	mv	s8,a1
     edc:	bd99                	j	d32 <fmt_fp+0x1e4>
     ede:	863a                	mv	a2,a4
     ee0:	86be                	mv	a3,a5
     ee2:	8566                	mv	a0,s9
     ee4:	85e2                	mv	a1,s8
     ee6:	767010ef          	jal	ra,2e4c <__addtf3>
     eea:	8666                	mv	a2,s9
     eec:	86e2                	mv	a3,s8
     eee:	13a030ef          	jal	ra,4028 <__subtf3>
     ef2:	8caa                	mv	s9,a0
     ef4:	8c2e                	mv	s8,a1
     ef6:	bd8d                	j	d68 <fmt_fp+0x21a>
     ef8:	8bda                	mv	s7,s6
     efa:	b739                	j	e08 <fmt_fp+0x2ba>
     efc:	6789                	lui	a5,0x2
     efe:	31070713          	addi	a4,a4,784 # ffffffffffffe310 <__BSS_END__+0xffffffffffff6af0>
     f02:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
     f06:	97ba                	add	a5,a5,a4
     f08:	0098                	addi	a4,sp,64
     f0a:	973e                	add	a4,a4,a5
     f0c:	40eb0b33          	sub	s6,s6,a4
     f10:	000c079b          	sext.w	a5,s8
     f14:	016c0dbb          	addw	s11,s8,s6
     f18:	c04d                	beqz	s0,fba <fmt_fp+0x46c>
     f1a:	fffb0713          	addi	a4,s6,-1
     f1e:	08e44e63          	blt	s0,a4,fba <fmt_fp+0x46c>
     f22:	6722                	ld	a4,8(sp)
     f24:	0027041b          	addiw	s0,a4,2
     f28:	9c3d                	addw	s0,s0,a5
     f2a:	01440cbb          	addw	s9,s0,s4
     f2e:	874e                	mv	a4,s3
     f30:	86e6                	mv	a3,s9
     f32:	864a                	mv	a2,s2
     f34:	02000593          	li	a1,32
     f38:	8526                	mv	a0,s1
     f3a:	b9bff0ef          	jal	ra,ad4 <pad>
     f3e:	85d6                	mv	a1,s5
     f40:	866a                	mv	a2,s10
     f42:	8526                	mv	a0,s1
     f44:	b7bff0ef          	jal	ra,abe <out>
     f48:	6741                	lui	a4,0x10
     f4a:	86e6                	mv	a3,s9
     f4c:	00e9c733          	xor	a4,s3,a4
     f50:	864a                	mv	a2,s2
     f52:	03000593          	li	a1,48
     f56:	8526                	mv	a0,s1
     f58:	b7dff0ef          	jal	ra,ad4 <pad>
     f5c:	75f9                	lui	a1,0xffffe
     f5e:	6789                	lui	a5,0x2
     f60:	31058593          	addi	a1,a1,784 # ffffffffffffe310 <__BSS_END__+0xffffffffffff6af0>
     f64:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
     f68:	97ae                	add	a5,a5,a1
     f6a:	0098                	addi	a4,sp,64
     f6c:	00e785b3          	add	a1,a5,a4
     f70:	865a                	mv	a2,s6
     f72:	8526                	mv	a0,s1
     f74:	b4bff0ef          	jal	ra,abe <out>
     f78:	4701                	li	a4,0
     f7a:	4681                	li	a3,0
     f7c:	41b4063b          	subw	a2,s0,s11
     f80:	03000593          	li	a1,48
     f84:	8526                	mv	a0,s1
     f86:	b4fff0ef          	jal	ra,ad4 <pad>
     f8a:	6582                	ld	a1,0(sp)
     f8c:	8662                	mv	a2,s8
     f8e:	8526                	mv	a0,s1
     f90:	b2fff0ef          	jal	ra,abe <out>
     f94:	00098a9b          	sext.w	s5,s3
     f98:	6709                	lui	a4,0x2
     f9a:	00eac733          	xor	a4,s5,a4
     f9e:	86e6                	mv	a3,s9
     fa0:	864a                	mv	a2,s2
     fa2:	02000593          	li	a1,32
     fa6:	8526                	mv	a0,s1
     fa8:	8a66                	mv	s4,s9
     faa:	b2bff0ef          	jal	ra,ad4 <pad>
     fae:	012cd363          	bge	s9,s2,fb4 <fmt_fp+0x466>
     fb2:	8a4a                	mv	s4,s2
     fb4:	000a051b          	sext.w	a0,s4
     fb8:	b171                	j	c44 <fmt_fp+0xf6>
     fba:	000d841b          	sext.w	s0,s11
     fbe:	b7b5                	j	f2a <fmt_fp+0x3dc>
     fc0:	00045363          	bgez	s0,fc6 <fmt_fp+0x478>
     fc4:	4419                	li	s0,6
     fc6:	4601                	li	a2,0
     fc8:	4681                	li	a3,0
     fca:	853a                	mv	a0,a4
     fcc:	85be                	mv	a1,a5
     fce:	ec3a                	sd	a4,24(sp)
     fd0:	e83e                	sd	a5,16(sp)
     fd2:	097020ef          	jal	ra,3868 <__eqtf2>
     fd6:	c91d                	beqz	a0,100c <fmt_fp+0x4be>
     fd8:	6762                	ld	a4,24(sp)
     fda:	67c2                	ld	a5,16(sp)
     fdc:	00004697          	auipc	a3,0x4
     fe0:	f7468693          	addi	a3,a3,-140 # 4f50 <__clzdi2+0x27a>
     fe4:	6290                	ld	a2,0(a3)
     fe6:	6694                	ld	a3,8(a3)
     fe8:	853a                	mv	a0,a4
     fea:	85be                	mv	a1,a5
     fec:	10b020ef          	jal	ra,38f6 <__multf3>
     ff0:	6709                	lui	a4,0x2
     ff2:	77f9                	lui	a5,0xffffe
     ff4:	d1070713          	addi	a4,a4,-752 # 1d10 <printf_core+0x5c0>
     ff8:	973e                	add	a4,a4,a5
     ffa:	009c                	addi	a5,sp,64
     ffc:	97ba                	add	a5,a5,a4
     ffe:	2fc7a703          	lw	a4,764(a5) # ffffffffffffe2fc <__BSS_END__+0xffffffffffff6adc>
    1002:	8caa                	mv	s9,a0
    1004:	8c2e                	mv	s8,a1
    1006:	3711                	addiw	a4,a4,-28
    1008:	2ee7ae23          	sw	a4,764(a5)
    100c:	6689                	lui	a3,0x2
    100e:	d1068713          	addi	a4,a3,-752 # 1d10 <printf_core+0x5c0>
    1012:	77f9                	lui	a5,0xffffe
    1014:	973e                	add	a4,a4,a5
    1016:	0090                	addi	a2,sp,64
    1018:	9732                	add	a4,a4,a2
    101a:	2fc72303          	lw	t1,764(a4)
    101e:	8736                	mv	a4,a3
    1020:	b8868693          	addi	a3,a3,-1144
    1024:	002688b3          	add	a7,a3,sp
    1028:	00035963          	bgez	t1,103a <fmt_fp+0x4ec>
    102c:	33878793          	addi	a5,a5,824 # ffffffffffffe338 <__BSS_END__+0xffffffffffff6b18>
    1030:	d1070713          	addi	a4,a4,-752
    1034:	973e                	add	a4,a4,a5
    1036:	00c708b3          	add	a7,a4,a2
    103a:	00004717          	auipc	a4,0x4
    103e:	f2670713          	addi	a4,a4,-218 # 4f60 <__clzdi2+0x28a>
    1042:	00073d83          	ld	s11,0(a4)
    1046:	00873b83          	ld	s7,8(a4)
    104a:	8d46                	mv	s10,a7
    104c:	85e2                	mv	a1,s8
    104e:	8566                	mv	a0,s9
    1050:	ec46                	sd	a7,24(sp)
    1052:	e81a                	sd	t1,16(sp)
    1054:	271030ef          	jal	ra,4ac4 <__fixunstfsi>
    1058:	00ad2023          	sw	a0,0(s10)
    105c:	2501                	sext.w	a0,a0
    105e:	341030ef          	jal	ra,4b9e <__floatunsitf>
    1062:	862a                	mv	a2,a0
    1064:	86ae                	mv	a3,a1
    1066:	8566                	mv	a0,s9
    1068:	85e2                	mv	a1,s8
    106a:	7bf020ef          	jal	ra,4028 <__subtf3>
    106e:	866e                	mv	a2,s11
    1070:	86de                	mv	a3,s7
    1072:	085020ef          	jal	ra,38f6 <__multf3>
    1076:	4601                	li	a2,0
    1078:	4681                	li	a3,0
    107a:	8caa                	mv	s9,a0
    107c:	8c2e                	mv	s8,a1
    107e:	7ea020ef          	jal	ra,3868 <__eqtf2>
    1082:	6342                	ld	t1,16(sp)
    1084:	68e2                	ld	a7,24(sp)
    1086:	0d11                	addi	s10,s10,4
    1088:	f171                	bnez	a0,104c <fmt_fp+0x4fe>
    108a:	3b9ad537          	lui	a0,0x3b9ad
    108e:	8bc6                	mv	s7,a7
    1090:	4701                	li	a4,0
    1092:	4e75                	li	t3,29
    1094:	a0050513          	addi	a0,a0,-1536 # 3b9aca00 <__BSS_END__+0x3b9a51e0>
    1098:	14604263          	bgtz	t1,11dc <fmt_fp+0x68e>
    109c:	cb11                	beqz	a4,10b0 <fmt_fp+0x562>
    109e:	6789                	lui	a5,0x2
    10a0:	7779                	lui	a4,0xffffe
    10a2:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
    10a6:	97ba                	add	a5,a5,a4
    10a8:	0098                	addi	a4,sp,64
    10aa:	973e                	add	a4,a4,a5
    10ac:	2e672e23          	sw	t1,764(a4) # ffffffffffffe2fc <__BSS_END__+0xffffffffffff6adc>
    10b0:	46a5                	li	a3,9
    10b2:	02d4071b          	addiw	a4,s0,45
    10b6:	02d7573b          	divuw	a4,a4,a3
    10ba:	6789                	lui	a5,0x2
    10bc:	76f9                	lui	a3,0xffffe
    10be:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
    10c2:	97b6                	add	a5,a5,a3
    10c4:	0094                	addi	a3,sp,64
    10c6:	96be                	add	a3,a3,a5
    10c8:	3b9ade37          	lui	t3,0x3b9ad
    10cc:	2fc6a603          	lw	a2,764(a3) # ffffffffffffe2fc <__BSS_END__+0xffffffffffff6adc>
    10d0:	5f5d                	li	t5,-9
    10d2:	4681                	li	a3,0
    10d4:	4f85                	li	t6,1
    10d6:	a00e0e1b          	addiw	t3,t3,-1536
    10da:	06600293          	li	t0,102
    10de:	2705                	addiw	a4,a4,1
    10e0:	1702                	slli	a4,a4,0x20
    10e2:	9301                	srli	a4,a4,0x20
    10e4:	00271e93          	slli	t4,a4,0x2
    10e8:	14064363          	bltz	a2,122e <fmt_fp+0x6e0>
    10ec:	ca91                	beqz	a3,1100 <fmt_fp+0x5b2>
    10ee:	6789                	lui	a5,0x2
    10f0:	7779                	lui	a4,0xffffe
    10f2:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
    10f6:	97ba                	add	a5,a5,a4
    10f8:	0098                	addi	a4,sp,64
    10fa:	973e                	add	a4,a4,a5
    10fc:	2ec72e23          	sw	a2,764(a4) # ffffffffffffe2fc <__BSS_END__+0xffffffffffff6adc>
    1100:	4301                	li	t1,0
    1102:	01abfe63          	bgeu	s7,s10,111e <fmt_fp+0x5d0>
    1106:	41788733          	sub	a4,a7,s7
    110a:	000ba683          	lw	a3,0(s7)
    110e:	8709                	srai	a4,a4,0x2
    1110:	4325                	li	t1,9
    1112:	02e3033b          	mulw	t1,t1,a4
    1116:	4629                	li	a2,10
    1118:	4729                	li	a4,10
    111a:	16e6fc63          	bgeu	a3,a4,1292 <fmt_fp+0x744>
    111e:	6782                	ld	a5,0(sp)
    1120:	06700613          	li	a2,103
    1124:	4701                	li	a4,0
    1126:	f9a78693          	addi	a3,a5,-102
    112a:	00d036b3          	snez	a3,a3
    112e:	026686bb          	mulw	a3,a3,t1
    1132:	40d406bb          	subw	a3,s0,a3
    1136:	00c79463          	bne	a5,a2,113e <fmt_fp+0x5f0>
    113a:	00803733          	snez	a4,s0
    113e:	40e6863b          	subw	a2,a3,a4
    1142:	411d0733          	sub	a4,s10,a7
    1146:	8709                	srai	a4,a4,0x2
    1148:	177d                	addi	a4,a4,-1
    114a:	45a5                	li	a1,9
    114c:	02b70733          	mul	a4,a4,a1
    1150:	1ae65b63          	bge	a2,a4,1306 <fmt_fp+0x7b8>
    1154:	00024737          	lui	a4,0x24
    1158:	9f31                	addw	a4,a4,a2
    115a:	4625                	li	a2,9
    115c:	02c74c3b          	divw	s8,a4,a2
    1160:	76c1                	lui	a3,0xffff0
    1162:	0691                	addi	a3,a3,4
    1164:	45a9                	li	a1,10
    1166:	02c7673b          	remw	a4,a4,a2
    116a:	0c0a                	slli	s8,s8,0x2
    116c:	9c36                	add	s8,s8,a3
    116e:	9c46                	add	s8,s8,a7
    1170:	46a9                	li	a3,10
    1172:	4625                	li	a2,9
    1174:	2705                	addiw	a4,a4,1
    1176:	12c71263          	bne	a4,a2,129a <fmt_fp+0x74c>
    117a:	000c2d83          	lw	s11,0(s8)
    117e:	00068e1b          	sext.w	t3,a3
    1182:	02ddf63b          	remuw	a2,s11,a3
    1186:	8532                	mv	a0,a2
    1188:	e609                	bnez	a2,1192 <fmt_fp+0x644>
    118a:	004c0713          	addi	a4,s8,4
    118e:	16ed0863          	beq	s10,a4,12fe <fmt_fp+0x7b0>
    1192:	03cdd73b          	divuw	a4,s11,t3
    1196:	8b05                	andi	a4,a4,1
    1198:	ef09                	bnez	a4,11b2 <fmt_fp+0x664>
    119a:	3b9ad737          	lui	a4,0x3b9ad
    119e:	a0070713          	addi	a4,a4,-1536 # 3b9aca00 <__BSS_END__+0x3b9a51e0>
    11a2:	10e69063          	bne	a3,a4,12a2 <fmt_fp+0x754>
    11a6:	0f8bfe63          	bgeu	s7,s8,12a2 <fmt_fp+0x754>
    11aa:	ffcc2703          	lw	a4,-4(s8)
    11ae:	8b05                	andi	a4,a4,1
    11b0:	cb6d                	beqz	a4,12a2 <fmt_fp+0x754>
    11b2:	00004597          	auipc	a1,0x4
    11b6:	d4e58593          	addi	a1,a1,-690 # 4f00 <__clzdi2+0x22a>
    11ba:	8685                	srai	a3,a3,0x1
    11bc:	6198                	ld	a4,0(a1)
    11be:	0085bc83          	ld	s9,8(a1)
    11c2:	0ed66563          	bltu	a2,a3,12ac <fmt_fp+0x75e>
    11c6:	00c69663          	bne	a3,a2,11d2 <fmt_fp+0x684>
    11ca:	004c0693          	addi	a3,s8,4
    11ce:	2add0f63          	beq	s10,a3,148c <fmt_fp+0x93e>
    11d2:	00004697          	auipc	a3,0x4
    11d6:	d6e68693          	addi	a3,a3,-658 # 4f40 <__clzdi2+0x26a>
    11da:	a8e9                	j	12b4 <fmt_fp+0x766>
    11dc:	0003061b          	sext.w	a2,t1
    11e0:	006e5363          	bge	t3,t1,11e6 <fmt_fp+0x698>
    11e4:	4675                	li	a2,29
    11e6:	ffcd0593          	addi	a1,s10,-4
    11ea:	4681                	li	a3,0
    11ec:	0175ff63          	bgeu	a1,s7,120a <fmt_fp+0x6bc>
    11f0:	c681                	beqz	a3,11f8 <fmt_fp+0x6aa>
    11f2:	fedbae23          	sw	a3,-4(s7)
    11f6:	1bf1                	addi	s7,s7,-4
    11f8:	01abf563          	bgeu	s7,s10,1202 <fmt_fp+0x6b4>
    11fc:	ffcd2703          	lw	a4,-4(s10)
    1200:	c70d                	beqz	a4,122a <fmt_fp+0x6dc>
    1202:	40c3033b          	subw	t1,t1,a2
    1206:	4705                	li	a4,1
    1208:	bd41                	j	1098 <fmt_fp+0x54a>
    120a:	0005e703          	lwu	a4,0(a1)
    120e:	1682                	slli	a3,a3,0x20
    1210:	9281                	srli	a3,a3,0x20
    1212:	00c71733          	sll	a4,a4,a2
    1216:	9736                	add	a4,a4,a3
    1218:	02a776b3          	remu	a3,a4,a0
    121c:	15f1                	addi	a1,a1,-4
    121e:	02a75733          	divu	a4,a4,a0
    1222:	c1d4                	sw	a3,4(a1)
    1224:	0007069b          	sext.w	a3,a4
    1228:	b7d1                	j	11ec <fmt_fp+0x69e>
    122a:	1d71                	addi	s10,s10,-4
    122c:	b7f1                	j	11f8 <fmt_fp+0x6aa>
    122e:	45a5                	li	a1,9
    1230:	01e64463          	blt	a2,t5,1238 <fmt_fp+0x6ea>
    1234:	40c005bb          	negw	a1,a2
    1238:	00bf93bb          	sllw	t2,t6,a1
    123c:	33fd                	addiw	t2,t2,-1
    123e:	40be5c3b          	sraw	s8,t3,a1
    1242:	86de                	mv	a3,s7
    1244:	4501                	li	a0,0
    1246:	03a6e963          	bltu	a3,s10,1278 <fmt_fp+0x72a>
    124a:	000ba683          	lw	a3,0(s7)
    124e:	e291                	bnez	a3,1252 <fmt_fp+0x704>
    1250:	0b91                	addi	s7,s7,4
    1252:	c501                	beqz	a0,125a <fmt_fp+0x70c>
    1254:	00ad2023          	sw	a0,0(s10)
    1258:	0d11                	addi	s10,s10,4
    125a:	6782                	ld	a5,0(sp)
    125c:	86c6                	mv	a3,a7
    125e:	00578363          	beq	a5,t0,1264 <fmt_fp+0x716>
    1262:	86de                	mv	a3,s7
    1264:	40dd0533          	sub	a0,s10,a3
    1268:	8509                	srai	a0,a0,0x2
    126a:	00a75463          	bge	a4,a0,1272 <fmt_fp+0x724>
    126e:	01d68d33          	add	s10,a3,t4
    1272:	9e2d                	addw	a2,a2,a1
    1274:	4685                	li	a3,1
    1276:	bd8d                	j	10e8 <fmt_fp+0x59a>
    1278:	0006a303          	lw	t1,0(a3)
    127c:	00b35cbb          	srlw	s9,t1,a1
    1280:	00ac853b          	addw	a0,s9,a0
    1284:	00737333          	and	t1,t1,t2
    1288:	c288                	sw	a0,0(a3)
    128a:	0383053b          	mulw	a0,t1,s8
    128e:	0691                	addi	a3,a3,4
    1290:	bf5d                	j	1246 <fmt_fp+0x6f8>
    1292:	02e6073b          	mulw	a4,a2,a4
    1296:	2305                	addiw	t1,t1,1
    1298:	b549                	j	111a <fmt_fp+0x5cc>
    129a:	02d586bb          	mulw	a3,a1,a3
    129e:	2705                	addiw	a4,a4,1
    12a0:	bdd9                	j	1176 <fmt_fp+0x628>
    12a2:	00004597          	auipc	a1,0x4
    12a6:	c6e58593          	addi	a1,a1,-914 # 4f10 <__clzdi2+0x23a>
    12aa:	bf01                	j	11ba <fmt_fp+0x66c>
    12ac:	00004697          	auipc	a3,0x4
    12b0:	c7468693          	addi	a3,a3,-908 # 4f20 <__clzdi2+0x24a>
    12b4:	6290                	ld	a2,0(a3)
    12b6:	6694                	ld	a3,8(a3)
    12b8:	000a0d63          	beqz	s4,12d2 <fmt_fp+0x784>
    12bc:	000ace83          	lbu	t4,0(s5)
    12c0:	02d00593          	li	a1,45
    12c4:	00be9763          	bne	t4,a1,12d2 <fmt_fp+0x784>
    12c8:	55fd                	li	a1,-1
    12ca:	15fe                	slli	a1,a1,0x3f
    12cc:	00bcccb3          	xor	s9,s9,a1
    12d0:	8ead                	xor	a3,a3,a1
    12d2:	40ad8dbb          	subw	s11,s11,a0
    12d6:	85e6                	mv	a1,s9
    12d8:	853a                	mv	a0,a4
    12da:	f446                	sd	a7,40(sp)
    12dc:	ec72                	sd	t3,24(sp)
    12de:	f01a                	sd	t1,32(sp)
    12e0:	e83a                	sd	a4,16(sp)
    12e2:	36b010ef          	jal	ra,2e4c <__addtf3>
    12e6:	6742                	ld	a4,16(sp)
    12e8:	86e6                	mv	a3,s9
    12ea:	863a                	mv	a2,a4
    12ec:	57c020ef          	jal	ra,3868 <__eqtf2>
    12f0:	6e62                	ld	t3,24(sp)
    12f2:	78a2                	ld	a7,40(sp)
    12f4:	1a051163          	bnez	a0,1496 <fmt_fp+0x948>
    12f8:	7302                	ld	t1,32(sp)
    12fa:	01bc2023          	sw	s11,0(s8)
    12fe:	0c11                	addi	s8,s8,4
    1300:	01ac7363          	bgeu	s8,s10,1306 <fmt_fp+0x7b8>
    1304:	8d62                	mv	s10,s8
    1306:	01abf663          	bgeu	s7,s10,1312 <fmt_fp+0x7c4>
    130a:	ffcd2703          	lw	a4,-4(s10)
    130e:	1c070e63          	beqz	a4,14ea <fmt_fp+0x99c>
    1312:	6782                	ld	a5,0(sp)
    1314:	06700713          	li	a4,103
    1318:	04e79d63          	bne	a5,a4,1372 <fmt_fp+0x824>
    131c:	e011                	bnez	s0,1320 <fmt_fp+0x7d2>
    131e:	4405                	li	s0,1
    1320:	1c835763          	bge	t1,s0,14ee <fmt_fp+0x9a0>
    1324:	5771                	li	a4,-4
    1326:	1ce34463          	blt	t1,a4,14ee <fmt_fp+0x9a0>
    132a:	0013071b          	addiw	a4,t1,1
    132e:	3b7d                	addiw	s6,s6,-1
    1330:	9c19                	subw	s0,s0,a4
    1332:	0089f713          	andi	a4,s3,8
    1336:	ef15                	bnez	a4,1372 <fmt_fp+0x824>
    1338:	46a5                	li	a3,9
    133a:	01abf663          	bgeu	s7,s10,1346 <fmt_fp+0x7f8>
    133e:	ffcd2603          	lw	a2,-4(s10)
    1342:	1c061063          	bnez	a2,1502 <fmt_fp+0x9b4>
    1346:	411d0733          	sub	a4,s10,a7
    134a:	8709                	srai	a4,a4,0x2
    134c:	4625                	li	a2,9
    134e:	177d                	addi	a4,a4,-1
    1350:	02c70733          	mul	a4,a4,a2
    1354:	06600593          	li	a1,102
    1358:	020b6613          	ori	a2,s6,32
    135c:	1ab61763          	bne	a2,a1,150a <fmt_fp+0x9bc>
    1360:	8f15                	sub	a4,a4,a3
    1362:	00075363          	bgez	a4,1368 <fmt_fp+0x81a>
    1366:	4701                	li	a4,0
    1368:	00e45363          	bge	s0,a4,136e <fmt_fp+0x820>
    136c:	8722                	mv	a4,s0
    136e:	0007041b          	sext.w	s0,a4
    1372:	80000737          	lui	a4,0x80000
    1376:	ffd74713          	xori	a4,a4,-3
    137a:	b48741e3          	blt	a4,s0,ebc <fmt_fp+0x36e>
    137e:	0089fc93          	andi	s9,s3,8
    1382:	01946c33          	or	s8,s0,s9
    1386:	0009879b          	sext.w	a5,s3
    138a:	018036b3          	snez	a3,s8
    138e:	0014071b          	addiw	a4,s0,1
    1392:	80000637          	lui	a2,0x80000
    1396:	9f35                	addw	a4,a4,a3
    1398:	fff64613          	not	a2,a2
    139c:	e03e                	sd	a5,0(sp)
    139e:	020b6d93          	ori	s11,s6,32
    13a2:	06600593          	li	a1,102
    13a6:	9e19                	subw	a2,a2,a4
    13a8:	16bd9363          	bne	s11,a1,150e <fmt_fp+0x9c0>
    13ac:	b06648e3          	blt	a2,t1,ebc <fmt_fp+0x36e>
    13b0:	00605463          	blez	t1,13b8 <fmt_fp+0x86a>
    13b4:	0067073b          	addw	a4,a4,t1
    13b8:	800006b7          	lui	a3,0x80000
    13bc:	1c0a1b63          	bnez	s4,1592 <fmt_fp+0xa44>
    13c0:	fff6c693          	not	a3,a3
    13c4:	ec46                	sd	a7,24(sp)
    13c6:	2681                	sext.w	a3,a3
    13c8:	aee6cae3          	blt	a3,a4,ebc <fmt_fp+0x36e>
    13cc:	01470b3b          	addw	s6,a4,s4
    13d0:	86da                	mv	a3,s6
    13d2:	874e                	mv	a4,s3
    13d4:	864a                	mv	a2,s2
    13d6:	02000593          	li	a1,32
    13da:	8526                	mv	a0,s1
    13dc:	c85a                	sw	s6,16(sp)
    13de:	ef6ff0ef          	jal	ra,ad4 <pad>
    13e2:	8652                	mv	a2,s4
    13e4:	85d6                	mv	a1,s5
    13e6:	8526                	mv	a0,s1
    13e8:	ed6ff0ef          	jal	ra,abe <out>
    13ec:	6782                	ld	a5,0(sp)
    13ee:	6741                	lui	a4,0x10
    13f0:	86da                	mv	a3,s6
    13f2:	8f3d                	xor	a4,a4,a5
    13f4:	864a                	mv	a2,s2
    13f6:	03000593          	li	a1,48
    13fa:	8526                	mv	a0,s1
    13fc:	ed8ff0ef          	jal	ra,ad4 <pad>
    1400:	06600713          	li	a4,102
    1404:	68e2                	ld	a7,24(sp)
    1406:	24ed9b63          	bne	s11,a4,165c <fmt_fp+0xb0e>
    140a:	89c6                	mv	s3,a7
    140c:	011bf363          	bgeu	s7,a7,1412 <fmt_fp+0x8c4>
    1410:	89de                	mv	s3,s7
    1412:	7a79                	lui	s4,0xffffe
    1414:	6709                	lui	a4,0x2
    1416:	310a0b93          	addi	s7,s4,784 # ffffffffffffe310 <__BSS_END__+0xffffffffffff6af0>
    141a:	d1070793          	addi	a5,a4,-752 # 1d10 <printf_core+0x5c0>
    141e:	97de                	add	a5,a5,s7
    1420:	0094                	addi	a3,sp,64
    1422:	00d78bb3          	add	s7,a5,a3
    1426:	d1070793          	addi	a5,a4,-752
    142a:	97d2                	add	a5,a5,s4
    142c:	8cce                	mv	s9,s3
    142e:	009b8d93          	addi	s11,s7,9
    1432:	03000a93          	li	s5,48
    1436:	00d78a33          	add	s4,a5,a3
    143a:	1598ff63          	bgeu	a7,s9,1598 <fmt_fp+0xa4a>
    143e:	00188693          	addi	a3,a7,1
    1442:	ffd98713          	addi	a4,s3,-3
    1446:	4601                	li	a2,0
    1448:	00e6e763          	bltu	a3,a4,1456 <fmt_fp+0x908>
    144c:	0891                	addi	a7,a7,4
    144e:	413888b3          	sub	a7,a7,s3
    1452:	ffc8f613          	andi	a2,a7,-4
    1456:	99b2                	add	s3,s3,a2
    1458:	200c0063          	beqz	s8,1658 <fmt_fp+0xb0a>
    145c:	4605                	li	a2,1
    145e:	00004597          	auipc	a1,0x4
    1462:	96a58593          	addi	a1,a1,-1686 # 4dc8 <__clzdi2+0xf2>
    1466:	8526                	mv	a0,s1
    1468:	e56ff0ef          	jal	ra,abe <out>
    146c:	7a79                	lui	s4,0xffffe
    146e:	6789                	lui	a5,0x2
    1470:	310a0a13          	addi	s4,s4,784 # ffffffffffffe310 <__BSS_END__+0xffffffffffff6af0>
    1474:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
    1478:	97d2                	add	a5,a5,s4
    147a:	0098                	addi	a4,sp,64
    147c:	00e78a33          	add	s4,a5,a4
    1480:	009a0a93          	addi	s5,s4,9
    1484:	03000b93          	li	s7,48
    1488:	4ca5                	li	s9,9
    148a:	a269                	j	1614 <fmt_fp+0xac6>
    148c:	00004697          	auipc	a3,0x4
    1490:	aa468693          	addi	a3,a3,-1372 # 4f30 <__clzdi2+0x25a>
    1494:	b505                	j	12b4 <fmt_fp+0x766>
    1496:	01be0e3b          	addw	t3,t3,s11
    149a:	3b9ad737          	lui	a4,0x3b9ad
    149e:	01cc2023          	sw	t3,0(s8)
    14a2:	9ff70713          	addi	a4,a4,-1537 # 3b9ac9ff <__BSS_END__+0x3b9a51df>
    14a6:	000c2683          	lw	a3,0(s8)
    14aa:	02d76263          	bltu	a4,a3,14ce <fmt_fp+0x980>
    14ae:	41788733          	sub	a4,a7,s7
    14b2:	000ba683          	lw	a3,0(s7)
    14b6:	8709                	srai	a4,a4,0x2
    14b8:	4325                	li	t1,9
    14ba:	02e3033b          	mulw	t1,t1,a4
    14be:	4629                	li	a2,10
    14c0:	4729                	li	a4,10
    14c2:	e2e6eee3          	bltu	a3,a4,12fe <fmt_fp+0x7b0>
    14c6:	2305                	addiw	t1,t1,1
    14c8:	02e6073b          	mulw	a4,a2,a4
    14cc:	bfdd                	j	14c2 <fmt_fp+0x974>
    14ce:	1c71                	addi	s8,s8,-4
    14d0:	000c2223          	sw	zero,4(s8)
    14d4:	017c7563          	bgeu	s8,s7,14de <fmt_fp+0x990>
    14d8:	fe0bae23          	sw	zero,-4(s7)
    14dc:	1bf1                	addi	s7,s7,-4
    14de:	000c2683          	lw	a3,0(s8)
    14e2:	2685                	addiw	a3,a3,1
    14e4:	00dc2023          	sw	a3,0(s8)
    14e8:	bf7d                	j	14a6 <fmt_fp+0x958>
    14ea:	1d71                	addi	s10,s10,-4
    14ec:	bd29                	j	1306 <fmt_fp+0x7b8>
    14ee:	3b79                	addiw	s6,s6,-2
    14f0:	347d                	addiw	s0,s0,-1
    14f2:	b581                	j	1332 <fmt_fp+0x7e4>
    14f4:	02e5073b          	mulw	a4,a0,a4
    14f8:	2685                	addiw	a3,a3,1
    14fa:	02e675bb          	remuw	a1,a2,a4
    14fe:	d9fd                	beqz	a1,14f4 <fmt_fp+0x9a6>
    1500:	b599                	j	1346 <fmt_fp+0x7f8>
    1502:	4681                	li	a3,0
    1504:	4729                	li	a4,10
    1506:	4529                	li	a0,10
    1508:	bfcd                	j	14fa <fmt_fp+0x9ac>
    150a:	971a                	add	a4,a4,t1
    150c:	bd91                	j	1360 <fmt_fp+0x812>
    150e:	d43a                	sw	a4,40(sp)
    1510:	6709                	lui	a4,0x2
    1512:	77f9                	lui	a5,0xffffe
    1514:	d1070713          	addi	a4,a4,-752 # 1d10 <printf_core+0x5c0>
    1518:	973e                	add	a4,a4,a5
    151a:	009c                	addi	a5,sp,64
    151c:	97ba                	add	a5,a5,a4
    151e:	41f3571b          	sraiw	a4,t1,0x1f
    1522:	30c78793          	addi	a5,a5,780 # ffffffffffffe30c <__BSS_END__+0xffffffffffff6aec>
    1526:	00e34533          	xor	a0,t1,a4
    152a:	85be                	mv	a1,a5
    152c:	9d19                	subw	a0,a0,a4
    152e:	f032                	sd	a2,32(sp)
    1530:	ec46                	sd	a7,24(sp)
    1532:	e81a                	sd	t1,16(sp)
    1534:	e43e                	sd	a5,8(sp)
    1536:	d20ff0ef          	jal	ra,a56 <fmt_u>
    153a:	67a2                	ld	a5,8(sp)
    153c:	6342                	ld	t1,16(sp)
    153e:	68e2                	ld	a7,24(sp)
    1540:	7602                	ld	a2,32(sp)
    1542:	56a2                	lw	a3,40(sp)
    1544:	4705                	li	a4,1
    1546:	03000e13          	li	t3,48
    154a:	40a785b3          	sub	a1,a5,a0
    154e:	02b75e63          	bge	a4,a1,158a <fmt_fp+0xa3c>
    1552:	02d00713          	li	a4,45
    1556:	00034463          	bltz	t1,155e <fmt_fp+0xa10>
    155a:	02b00713          	li	a4,43
    155e:	ffe50793          	addi	a5,a0,-2
    1562:	e43e                	sd	a5,8(sp)
    1564:	6789                	lui	a5,0x2
    1566:	fee50fa3          	sb	a4,-1(a0)
    156a:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
    156e:	7779                	lui	a4,0xffffe
    1570:	97ba                	add	a5,a5,a4
    1572:	0098                	addi	a4,sp,64
    1574:	973e                	add	a4,a4,a5
    1576:	67a2                	ld	a5,8(sp)
    1578:	30c70713          	addi	a4,a4,780 # ffffffffffffe30c <__BSS_END__+0xffffffffffff6aec>
    157c:	ff650f23          	sb	s6,-2(a0)
    1580:	8f1d                	sub	a4,a4,a5
    1582:	92e64de3          	blt	a2,a4,ebc <fmt_fp+0x36e>
    1586:	9f35                	addw	a4,a4,a3
    1588:	bd05                	j	13b8 <fmt_fp+0x86a>
    158a:	157d                	addi	a0,a0,-1
    158c:	01c50023          	sb	t3,0(a0)
    1590:	bf6d                	j	154a <fmt_fp+0x9fc>
    1592:	ffe6c693          	xori	a3,a3,-2
    1596:	b53d                	j	13c4 <fmt_fp+0x876>
    1598:	000ce503          	lwu	a0,0(s9)
    159c:	85ee                	mv	a1,s11
    159e:	e446                	sd	a7,8(sp)
    15a0:	cb6ff0ef          	jal	ra,a56 <fmt_u>
    15a4:	68a2                	ld	a7,8(sp)
    15a6:	85aa                	mv	a1,a0
    15a8:	872a                	mv	a4,a0
    15aa:	013c9c63          	bne	s9,s3,15c2 <fmt_fp+0xa74>
    15ae:	03b51263          	bne	a0,s11,15d2 <fmt_fp+0xa84>
    15b2:	315a0c23          	sb	s5,792(s4)
    15b6:	008b8593          	addi	a1,s7,8
    15ba:	a821                	j	15d2 <fmt_fp+0xa84>
    15bc:	177d                	addi	a4,a4,-1
    15be:	01570023          	sb	s5,0(a4)
    15c2:	feebede3          	bltu	s7,a4,15bc <fmt_fp+0xa6e>
    15c6:	4701                	li	a4,0
    15c8:	0175e463          	bltu	a1,s7,15d0 <fmt_fp+0xa82>
    15cc:	40bb8733          	sub	a4,s7,a1
    15d0:	95ba                	add	a1,a1,a4
    15d2:	40bd8633          	sub	a2,s11,a1
    15d6:	8526                	mv	a0,s1
    15d8:	e446                	sd	a7,8(sp)
    15da:	ce4ff0ef          	jal	ra,abe <out>
    15de:	68a2                	ld	a7,8(sp)
    15e0:	0c91                	addi	s9,s9,4
    15e2:	bda1                	j	143a <fmt_fp+0x8ec>
    15e4:	0009e503          	lwu	a0,0(s3)
    15e8:	85d6                	mv	a1,s5
    15ea:	c6cff0ef          	jal	ra,a56 <fmt_u>
    15ee:	872a                	mv	a4,a0
    15f0:	06ea6063          	bltu	s4,a4,1650 <fmt_fp+0xb02>
    15f4:	4581                	li	a1,0
    15f6:	01456463          	bltu	a0,s4,15fe <fmt_fp+0xab0>
    15fa:	40aa05b3          	sub	a1,s4,a0
    15fe:	0004061b          	sext.w	a2,s0
    1602:	008cd363          	bge	s9,s0,1608 <fmt_fp+0xaba>
    1606:	4625                	li	a2,9
    1608:	95aa                	add	a1,a1,a0
    160a:	8526                	mv	a0,s1
    160c:	cb2ff0ef          	jal	ra,abe <out>
    1610:	0991                	addi	s3,s3,4
    1612:	345d                	addiw	s0,s0,-9
    1614:	01a9f463          	bgeu	s3,s10,161c <fmt_fp+0xace>
    1618:	fc8046e3          	bgtz	s0,15e4 <fmt_fp+0xa96>
    161c:	4701                	li	a4,0
    161e:	46a5                	li	a3,9
    1620:	0094061b          	addiw	a2,s0,9
    1624:	03000593          	li	a1,48
    1628:	8526                	mv	a0,s1
    162a:	caaff0ef          	jal	ra,ad4 <pad>
    162e:	6782                	ld	a5,0(sp)
    1630:	6709                	lui	a4,0x2
    1632:	8526                	mv	a0,s1
    1634:	8f3d                	xor	a4,a4,a5
    1636:	86da                	mv	a3,s6
    1638:	864a                	mv	a2,s2
    163a:	02000593          	li	a1,32
    163e:	c96ff0ef          	jal	ra,ad4 <pad>
    1642:	4542                	lw	a0,16(sp)
    1644:	012b5363          	bge	s6,s2,164a <fmt_fp+0xafc>
    1648:	854a                	mv	a0,s2
    164a:	2501                	sext.w	a0,a0
    164c:	df8ff06f          	j	c44 <fmt_fp+0xf6>
    1650:	177d                	addi	a4,a4,-1
    1652:	01770023          	sb	s7,0(a4) # 2000 <__init_tp+0x22>
    1656:	bf69                	j	15f0 <fmt_fp+0xaa2>
    1658:	4401                	li	s0,0
    165a:	bd09                	j	146c <fmt_fp+0x91e>
    165c:	01abe463          	bltu	s7,s10,1664 <fmt_fp+0xb16>
    1660:	004b8d13          	addi	s10,s7,4
    1664:	7779                	lui	a4,0xffffe
    1666:	6689                	lui	a3,0x2
    1668:	31070993          	addi	s3,a4,784 # ffffffffffffe310 <__BSS_END__+0xffffffffffff6af0>
    166c:	d1068793          	addi	a5,a3,-752 # 1d10 <printf_core+0x5c0>
    1670:	97ce                	add	a5,a5,s3
    1672:	0090                	addi	a2,sp,64
    1674:	00c789b3          	add	s3,a5,a2
    1678:	d1068793          	addi	a5,a3,-752
    167c:	97ba                	add	a5,a5,a4
    167e:	97b2                	add	a5,a5,a2
    1680:	ec3e                	sd	a5,24(sp)
    1682:	00898793          	addi	a5,s3,8
    1686:	8a5e                	mv	s4,s7
    1688:	00998a93          	addi	s5,s3,9
    168c:	f03e                	sd	a5,32(sp)
    168e:	01aa7463          	bgeu	s4,s10,1696 <fmt_fp+0xb48>
    1692:	02045c63          	bgez	s0,16ca <fmt_fp+0xb7c>
    1696:	0124061b          	addiw	a2,s0,18
    169a:	8526                	mv	a0,s1
    169c:	4701                	li	a4,0
    169e:	46c9                	li	a3,18
    16a0:	03000593          	li	a1,48
    16a4:	c30ff0ef          	jal	ra,ad4 <pad>
    16a8:	6789                	lui	a5,0x2
    16aa:	7679                	lui	a2,0xffffe
    16ac:	d1078793          	addi	a5,a5,-752 # 1d10 <printf_core+0x5c0>
    16b0:	97b2                	add	a5,a5,a2
    16b2:	0098                	addi	a4,sp,64
    16b4:	00e78633          	add	a2,a5,a4
    16b8:	67a2                	ld	a5,8(sp)
    16ba:	30c60613          	addi	a2,a2,780 # ffffffffffffe30c <__BSS_END__+0xffffffffffff6aec>
    16be:	8526                	mv	a0,s1
    16c0:	8e1d                	sub	a2,a2,a5
    16c2:	85be                	mv	a1,a5
    16c4:	bfaff0ef          	jal	ra,abe <out>
    16c8:	b79d                	j	162e <fmt_fp+0xae0>
    16ca:	000a6503          	lwu	a0,0(s4)
    16ce:	85d6                	mv	a1,s5
    16d0:	b86ff0ef          	jal	ra,a56 <fmt_u>
    16d4:	85aa                	mv	a1,a0
    16d6:	01551863          	bne	a0,s5,16e6 <fmt_fp+0xb98>
    16da:	67e2                	ld	a5,24(sp)
    16dc:	7582                	ld	a1,32(sp)
    16de:	03000713          	li	a4,48
    16e2:	30e78c23          	sb	a4,792(a5)
    16e6:	00040d9b          	sext.w	s11,s0
    16ea:	872e                	mv	a4,a1
    16ec:	037a1963          	bne	s4,s7,171e <fmt_fp+0xbd0>
    16f0:	4605                	li	a2,1
    16f2:	8526                	mv	a0,s1
    16f4:	00158c13          	addi	s8,a1,1
    16f8:	bc6ff0ef          	jal	ra,abe <out>
    16fc:	01bce6b3          	or	a3,s9,s11
    1700:	ca85                	beqz	a3,1730 <fmt_fp+0xbe2>
    1702:	4605                	li	a2,1
    1704:	00003597          	auipc	a1,0x3
    1708:	6c458593          	addi	a1,a1,1732 # 4dc8 <__clzdi2+0xf2>
    170c:	8526                	mv	a0,s1
    170e:	bb0ff0ef          	jal	ra,abe <out>
    1712:	a839                	j	1730 <fmt_fp+0xbe2>
    1714:	177d                	addi	a4,a4,-1
    1716:	03000793          	li	a5,48
    171a:	00f70023          	sb	a5,0(a4)
    171e:	fee9ebe3          	bltu	s3,a4,1714 <fmt_fp+0xbc6>
    1722:	4701                	li	a4,0
    1724:	0135e463          	bltu	a1,s3,172c <fmt_fp+0xbde>
    1728:	40b98733          	sub	a4,s3,a1
    172c:	00e58c33          	add	s8,a1,a4
    1730:	418a86b3          	sub	a3,s5,s8
    1734:	8622                	mv	a2,s0
    1736:	0086d363          	bge	a3,s0,173c <fmt_fp+0xbee>
    173a:	8636                	mv	a2,a3
    173c:	85e2                	mv	a1,s8
    173e:	8526                	mv	a0,s1
    1740:	f436                	sd	a3,40(sp)
    1742:	b7cff0ef          	jal	ra,abe <out>
    1746:	76a2                	ld	a3,40(sp)
    1748:	0a11                	addi	s4,s4,4
    174a:	40dd843b          	subw	s0,s11,a3
    174e:	b781                	j	168e <fmt_fp+0xb40>

0000000000001750 <printf_core>:
printf_core():
    1750:	800007b7          	lui	a5,0x80000
    1754:	716d                	addi	sp,sp,-272
    1756:	fff7c793          	not	a5,a5
    175a:	cc3e                	sw	a5,24(sp)
    175c:	67cd                	lui	a5,0x13
    175e:	8897879b          	addiw	a5,a5,-1911
    1762:	e222                	sd	s0,256(sp)
    1764:	f9ca                	sd	s2,240(sp)
    1766:	f5ce                	sd	s3,232(sp)
    1768:	f1d2                	sd	s4,224(sp)
    176a:	edd6                	sd	s5,216(sp)
    176c:	e5de                	sd	s7,200(sp)
    176e:	f56e                	sd	s11,168(sp)
    1770:	e606                	sd	ra,264(sp)
    1772:	fda6                	sd	s1,248(sp)
    1774:	e9da                	sd	s6,208(sp)
    1776:	e1e2                	sd	s8,192(sp)
    1778:	fd66                	sd	s9,184(sp)
    177a:	f96a                	sd	s10,176(sp)
    177c:	842a                	mv	s0,a0
    177e:	8a32                	mv	s4,a2
    1780:	e036                	sd	a3,0(sp)
    1782:	8aba                	mv	s5,a4
    1784:	e0ae                	sd	a1,64(sp)
    1786:	4d81                	li	s11,0
    1788:	4901                	li	s2,0
    178a:	4b81                	li	s7,0
    178c:	ce3e                	sw	a5,28(sp)
    178e:	00003997          	auipc	s3,0x3
    1792:	64298993          	addi	s3,s3,1602 # 4dd0 <__clzdi2+0xfa>
    1796:	6d06                	ld	s10,64(sp)
    1798:	012d893b          	addw	s2,s11,s2
    179c:	8c4a                	mv	s8,s2
    179e:	000d4783          	lbu	a5,0(s10)
    17a2:	5e078863          	beqz	a5,1d92 <printf_core+0x642>
    17a6:	02500713          	li	a4,37
    17aa:	6d86                	ld	s11,64(sp)
    17ac:	000dc783          	lbu	a5,0(s11)
    17b0:	c399                	beqz	a5,17b6 <printf_core+0x66>
    17b2:	00e79563          	bne	a5,a4,17bc <printf_core+0x6c>
    17b6:	02500713          	li	a4,37
    17ba:	a039                	j	17c8 <printf_core+0x78>
    17bc:	0d85                	addi	s11,s11,1
    17be:	e0ee                	sd	s11,64(sp)
    17c0:	b7ed                	j	17aa <printf_core+0x5a>
    17c2:	0789                	addi	a5,a5,2
    17c4:	0d85                	addi	s11,s11,1
    17c6:	e0be                	sd	a5,64(sp)
    17c8:	6786                	ld	a5,64(sp)
    17ca:	0007c683          	lbu	a3,0(a5) # 13000 <__BSS_END__+0xb7e0>
    17ce:	00e69663          	bne	a3,a4,17da <printf_core+0x8a>
    17d2:	0017c683          	lbu	a3,1(a5)
    17d6:	fee686e3          	beq	a3,a4,17c2 <printf_core+0x72>
    17da:	47e2                	lw	a5,24(sp)
    17dc:	41ad8db3          	sub	s11,s11,s10
    17e0:	418787bb          	subw	a5,a5,s8
    17e4:	e43e                	sd	a5,8(sp)
    17e6:	55b7c963          	blt	a5,s11,1d38 <printf_core+0x5e8>
    17ea:	2d81                	sext.w	s11,s11
    17ec:	c411                	beqz	s0,17f8 <printf_core+0xa8>
    17ee:	866e                	mv	a2,s11
    17f0:	85ea                	mv	a1,s10
    17f2:	8522                	mv	a0,s0
    17f4:	acaff0ef          	jal	ra,abe <out>
    17f8:	520d9d63          	bnez	s11,1d32 <printf_core+0x5e2>
    17fc:	6706                	ld	a4,64(sp)
    17fe:	47a5                	li	a5,9
    1800:	00174683          	lbu	a3,1(a4)
    1804:	fd06869b          	addiw	a3,a3,-48
    1808:	12d7ed63          	bltu	a5,a3,1942 <printf_core+0x1f2>
    180c:	00274603          	lbu	a2,2(a4)
    1810:	02400793          	li	a5,36
    1814:	12f61763          	bne	a2,a5,1942 <printf_core+0x1f2>
    1818:	070d                	addi	a4,a4,3
    181a:	4b85                	li	s7,1
    181c:	4b01                	li	s6,0
    181e:	487d                	li	a6,31
    1820:	4305                	li	t1,1
    1822:	e0ba                	sd	a4,64(sp)
    1824:	00074503          	lbu	a0,0(a4)
    1828:	fe05061b          	addiw	a2,a0,-32
    182c:	00c86863          	bltu	a6,a2,183c <printf_core+0xec>
    1830:	47f2                	lw	a5,28(sp)
    1832:	00c7d5bb          	srlw	a1,a5,a2
    1836:	8985                	andi	a1,a1,1
    1838:	10059863          	bnez	a1,1948 <printf_core+0x1f8>
    183c:	02a00613          	li	a2,42
    1840:	12c51f63          	bne	a0,a2,197e <printf_core+0x22e>
    1844:	00174603          	lbu	a2,1(a4)
    1848:	45a5                	li	a1,9
    184a:	fd06051b          	addiw	a0,a2,-48
    184e:	10a5e563          	bltu	a1,a0,1958 <printf_core+0x208>
    1852:	00274503          	lbu	a0,2(a4)
    1856:	02400593          	li	a1,36
    185a:	0eb51f63          	bne	a0,a1,1958 <printf_core+0x208>
    185e:	060a                	slli	a2,a2,0x2
    1860:	9656                	add	a2,a2,s5
    1862:	45a9                	li	a1,10
    1864:	f4b62023          	sw	a1,-192(a2)
    1868:	00174603          	lbu	a2,1(a4)
    186c:	6782                	ld	a5,0(sp)
    186e:	070d                	addi	a4,a4,3
    1870:	0612                	slli	a2,a2,0x4
    1872:	963e                	add	a2,a2,a5
    1874:	d0062483          	lw	s1,-768(a2)
    1878:	4b85                	li	s7,1
    187a:	e0ba                	sd	a4,64(sp)
    187c:	0004d763          	bgez	s1,188a <printf_core+0x13a>
    1880:	6709                	lui	a4,0x2
    1882:	00eb6b33          	or	s6,s6,a4
    1886:	409004bb          	negw	s1,s1
    188a:	6706                	ld	a4,64(sp)
    188c:	02e00613          	li	a2,46
    1890:	00074583          	lbu	a1,0(a4) # 2000 <__init_tp+0x22>
    1894:	12c59663          	bne	a1,a2,19c0 <printf_core+0x270>
    1898:	00174583          	lbu	a1,1(a4)
    189c:	02a00613          	li	a2,42
    18a0:	10c59663          	bne	a1,a2,19ac <printf_core+0x25c>
    18a4:	00274603          	lbu	a2,2(a4)
    18a8:	45a5                	li	a1,9
    18aa:	fd06051b          	addiw	a0,a2,-48
    18ae:	0ea5e163          	bltu	a1,a0,1990 <printf_core+0x240>
    18b2:	00374503          	lbu	a0,3(a4)
    18b6:	02400593          	li	a1,36
    18ba:	0cb51b63          	bne	a0,a1,1990 <printf_core+0x240>
    18be:	060a                	slli	a2,a2,0x2
    18c0:	9656                	add	a2,a2,s5
    18c2:	45a9                	li	a1,10
    18c4:	f4b62023          	sw	a1,-192(a2)
    18c8:	00274603          	lbu	a2,2(a4)
    18cc:	6782                	ld	a5,0(sp)
    18ce:	0711                	addi	a4,a4,4
    18d0:	0612                	slli	a2,a2,0x4
    18d2:	963e                	add	a2,a2,a5
    18d4:	d0062c83          	lw	s9,-768(a2)
    18d8:	fffcce13          	not	t3,s9
    18dc:	e0ba                	sd	a4,64(sp)
    18de:	01fe5e1b          	srliw	t3,t3,0x1f
    18e2:	4701                	li	a4,0
    18e4:	03900e93          	li	t4,57
    18e8:	03a00313          	li	t1,58
    18ec:	451d                	li	a0,7
    18ee:	6806                	ld	a6,64(sp)
    18f0:	00084603          	lbu	a2,0(a6)
    18f4:	fbf6061b          	addiw	a2,a2,-65
    18f8:	06cee263          	bltu	t4,a2,195c <printf_core+0x20c>
    18fc:	00180613          	addi	a2,a6,1
    1900:	e0b2                	sd	a2,64(sp)
    1902:	02071613          	slli	a2,a4,0x20
    1906:	9201                	srli	a2,a2,0x20
    1908:	02660633          	mul	a2,a2,t1
    190c:	00084583          	lbu	a1,0(a6)
    1910:	00003797          	auipc	a5,0x3
    1914:	66078793          	addi	a5,a5,1632 # 4f70 <states>
    1918:	fbf5859b          	addiw	a1,a1,-65
    191c:	963e                	add	a2,a2,a5
    191e:	962e                	add	a2,a2,a1
    1920:	00064f03          	lbu	t5,0(a2)
    1924:	ffff061b          	addiw	a2,t5,-1
    1928:	000f059b          	sext.w	a1,t5
    192c:	08c57d63          	bgeu	a0,a2,19c6 <printf_core+0x276>
    1930:	c595                	beqz	a1,195c <printf_core+0x20c>
    1932:	466d                	li	a2,27
    1934:	08c59b63          	bne	a1,a2,19ca <printf_core+0x27a>
    1938:	567d                	li	a2,-1
    193a:	02c69163          	bne	a3,a2,195c <printf_core+0x20c>
    193e:	e075                	bnez	s0,1a22 <printf_core+0x2d2>
    1940:	bd99                	j	1796 <printf_core+0x46>
    1942:	0705                	addi	a4,a4,1
    1944:	56fd                	li	a3,-1
    1946:	bdd9                	j	181c <printf_core+0xcc>
    1948:	00c3163b          	sllw	a2,t1,a2
    194c:	00cb6633          	or	a2,s6,a2
    1950:	00060b1b          	sext.w	s6,a2
    1954:	0705                	addi	a4,a4,1
    1956:	b5f1                	j	1822 <printf_core+0xd2>
    1958:	000b8863          	beqz	s7,1968 <printf_core+0x218>
    195c:	0b1000ef          	jal	ra,220c <__errno_location>
    1960:	47d9                	li	a5,22
    1962:	c11c                	sw	a5,0(a0)
    1964:	597d                	li	s2,-1
    1966:	a061                	j	19ee <printf_core+0x29e>
    1968:	4481                	li	s1,0
    196a:	c801                	beqz	s0,197a <printf_core+0x22a>
    196c:	000a3603          	ld	a2,0(s4)
    1970:	4204                	lw	s1,0(a2)
    1972:	00860593          	addi	a1,a2,8
    1976:	00ba3023          	sd	a1,0(s4)
    197a:	0705                	addi	a4,a4,1
    197c:	bdfd                	j	187a <printf_core+0x12a>
    197e:	0088                	addi	a0,sp,64
    1980:	e836                	sd	a3,16(sp)
    1982:	8f2ff0ef          	jal	ra,a74 <getint>
    1986:	66c2                	ld	a3,16(sp)
    1988:	84aa                	mv	s1,a0
    198a:	f00550e3          	bgez	a0,188a <printf_core+0x13a>
    198e:	a66d                	j	1d38 <printf_core+0x5e8>
    1990:	fc0b96e3          	bnez	s7,195c <printf_core+0x20c>
    1994:	4c81                	li	s9,0
    1996:	c809                	beqz	s0,19a8 <printf_core+0x258>
    1998:	000a3603          	ld	a2,0(s4)
    199c:	00062c83          	lw	s9,0(a2)
    19a0:	00860593          	addi	a1,a2,8
    19a4:	00ba3023          	sd	a1,0(s4)
    19a8:	0709                	addi	a4,a4,2
    19aa:	b73d                	j	18d8 <printf_core+0x188>
    19ac:	0705                	addi	a4,a4,1
    19ae:	0088                	addi	a0,sp,64
    19b0:	e836                	sd	a3,16(sp)
    19b2:	e0ba                	sd	a4,64(sp)
    19b4:	8c0ff0ef          	jal	ra,a74 <getint>
    19b8:	66c2                	ld	a3,16(sp)
    19ba:	8caa                	mv	s9,a0
    19bc:	4e05                	li	t3,1
    19be:	b715                	j	18e2 <printf_core+0x192>
    19c0:	4e01                	li	t3,0
    19c2:	5cfd                	li	s9,-1
    19c4:	bf39                	j	18e2 <printf_core+0x192>
    19c6:	872e                	mv	a4,a1
    19c8:	b71d                	j	18ee <printf_core+0x19e>
    19ca:	567d                	li	a2,-1
    19cc:	00c68f63          	beq	a3,a2,19ea <printf_core+0x29a>
    19d0:	6782                	ld	a5,0(sp)
    19d2:	00269613          	slli	a2,a3,0x2
    19d6:	0692                	slli	a3,a3,0x4
    19d8:	9656                	add	a2,a2,s5
    19da:	96be                	add	a3,a3,a5
    19dc:	01e62023          	sw	t5,0(a2)
    19e0:	6290                	ld	a2,0(a3)
    19e2:	6694                	ld	a3,8(a3)
    19e4:	e8b2                	sd	a2,80(sp)
    19e6:	ecb6                	sd	a3,88(sp)
    19e8:	bf99                	j	193e <printf_core+0x1ee>
    19ea:	e015                	bnez	s0,1a0e <printf_core+0x2be>
    19ec:	4901                	li	s2,0
    19ee:	60b2                	ld	ra,264(sp)
    19f0:	6412                	ld	s0,256(sp)
    19f2:	74ee                	ld	s1,248(sp)
    19f4:	79ae                	ld	s3,232(sp)
    19f6:	7a0e                	ld	s4,224(sp)
    19f8:	6aee                	ld	s5,216(sp)
    19fa:	6b4e                	ld	s6,208(sp)
    19fc:	6bae                	ld	s7,200(sp)
    19fe:	6c0e                	ld	s8,192(sp)
    1a00:	7cea                	ld	s9,184(sp)
    1a02:	7d4a                	ld	s10,176(sp)
    1a04:	7daa                	ld	s11,168(sp)
    1a06:	854a                	mv	a0,s2
    1a08:	794e                	ld	s2,240(sp)
    1a0a:	6151                	addi	sp,sp,272
    1a0c:	8082                	ret
    1a0e:	8652                	mv	a2,s4
    1a10:	0888                	addi	a0,sp,80
    1a12:	f43a                	sd	a4,40(sp)
    1a14:	f072                	sd	t3,32(sp)
    1a16:	e842                	sd	a6,16(sp)
    1a18:	f91fe0ef          	jal	ra,9a8 <pop_arg>
    1a1c:	6842                	ld	a6,16(sp)
    1a1e:	7e02                	ld	t3,32(sp)
    1a20:	7722                	ld	a4,40(sp)
    1a22:	00084683          	lbu	a3,0(a6)
    1a26:	0006881b          	sext.w	a6,a3
    1a2a:	c719                	beqz	a4,1a38 <printf_core+0x2e8>
    1a2c:	8abd                	andi	a3,a3,15
    1a2e:	460d                	li	a2,3
    1a30:	00c69463          	bne	a3,a2,1a38 <printf_core+0x2e8>
    1a34:	0df87813          	andi	a6,a6,223
    1a38:	00db5693          	srli	a3,s6,0xd
    1a3c:	8a85                	andi	a3,a3,1
    1a3e:	c689                	beqz	a3,1a48 <printf_core+0x2f8>
    1a40:	76c1                	lui	a3,0xffff0
    1a42:	16fd                	addi	a3,a3,-1
    1a44:	00db7b33          	and	s6,s6,a3
    1a48:	fbf8069b          	addiw	a3,a6,-65
    1a4c:	0006859b          	sext.w	a1,a3
    1a50:	03700613          	li	a2,55
    1a54:	32b66963          	bltu	a2,a1,1d86 <printf_core+0x636>
    1a58:	02069613          	slli	a2,a3,0x20
    1a5c:	01e65693          	srli	a3,a2,0x1e
    1a60:	00003617          	auipc	a2,0x3
    1a64:	38860613          	addi	a2,a2,904 # 4de8 <__clzdi2+0x112>
    1a68:	96b2                	add	a3,a3,a2
    1a6a:	4294                	lw	a3,0(a3)
    1a6c:	96b2                	add	a3,a3,a2
    1a6e:	8682                	jr	a3
    1a70:	479d                	li	a5,7
    1a72:	2ce7e063          	bltu	a5,a4,1d32 <printf_core+0x5e2>
    1a76:	00003697          	auipc	a3,0x3
    1a7a:	45268693          	addi	a3,a3,1106 # 4ec8 <__clzdi2+0x1f2>
    1a7e:	070a                	slli	a4,a4,0x2
    1a80:	9736                	add	a4,a4,a3
    1a82:	431c                	lw	a5,0(a4)
    1a84:	97b6                	add	a5,a5,a3
    1a86:	8782                	jr	a5
    1a88:	67c6                	ld	a5,80(sp)
    1a8a:	0187a023          	sw	s8,0(a5)
    1a8e:	b321                	j	1796 <printf_core+0x46>
    1a90:	67c6                	ld	a5,80(sp)
    1a92:	01279023          	sh	s2,0(a5)
    1a96:	b301                	j	1796 <printf_core+0x46>
    1a98:	67c6                	ld	a5,80(sp)
    1a9a:	01278023          	sb	s2,0(a5)
    1a9e:	b9e5                	j	1796 <printf_core+0x46>
    1aa0:	67c6                	ld	a5,80(sp)
    1aa2:	0127b023          	sd	s2,0(a5)
    1aa6:	b9c5                	j	1796 <printf_core+0x46>
    1aa8:	8766                	mv	a4,s9
    1aaa:	46c1                	li	a3,16
    1aac:	2c81                	sext.w	s9,s9
    1aae:	00dcf363          	bgeu	s9,a3,1ab4 <printf_core+0x364>
    1ab2:	4741                	li	a4,16
    1ab4:	00070c9b          	sext.w	s9,a4
    1ab8:	008b6b13          	ori	s6,s6,8
    1abc:	07800813          	li	a6,120
    1ac0:	6646                	ld	a2,80(sp)
    1ac2:	02087593          	andi	a1,a6,32
    1ac6:	09f10d13          	addi	s10,sp,159
    1aca:	8732                	mv	a4,a2
    1acc:	00003517          	auipc	a0,0x3
    1ad0:	67450513          	addi	a0,a0,1652 # 5140 <xdigits>
    1ad4:	ef79                	bnez	a4,1bb2 <printf_core+0x462>
    1ad6:	834e                	mv	t1,s3
    1ad8:	ca09                	beqz	a2,1aea <printf_core+0x39a>
    1ada:	008b7713          	andi	a4,s6,8
    1ade:	c711                	beqz	a4,1aea <printf_core+0x39a>
    1ae0:	00485813          	srli	a6,a6,0x4
    1ae4:	01098333          	add	t1,s3,a6
    1ae8:	4d89                	li	s11,2
    1aea:	000e0863          	beqz	t3,1afa <printf_core+0x3aa>
    1aee:	240cc563          	bltz	s9,1d38 <printf_core+0x5e8>
    1af2:	7741                	lui	a4,0xffff0
    1af4:	177d                	addi	a4,a4,-1
    1af6:	00eb7b33          	and	s6,s6,a4
    1afa:	66c6                	ld	a3,80(sp)
    1afc:	09f10613          	addi	a2,sp,159
    1b00:	e299                	bnez	a3,1b06 <printf_core+0x3b6>
    1b02:	280c8663          	beqz	s9,1d8e <printf_core+0x63e>
    1b06:	41a60733          	sub	a4,a2,s10
    1b0a:	0016b693          	seqz	a3,a3
    1b0e:	9736                	add	a4,a4,a3
    1b10:	01975363          	bge	a4,s9,1b16 <printf_core+0x3c6>
    1b14:	8766                	mv	a4,s9
    1b16:	00070c9b          	sext.w	s9,a4
    1b1a:	41a60c33          	sub	s8,a2,s10
    1b1e:	018cd463          	bge	s9,s8,1b26 <printf_core+0x3d6>
    1b22:	000c0c9b          	sext.w	s9,s8
    1b26:	47e2                	lw	a5,24(sp)
    1b28:	41b7873b          	subw	a4,a5,s11
    1b2c:	21974663          	blt	a4,s9,1d38 <printf_core+0x5e8>
    1b30:	01bc87bb          	addw	a5,s9,s11
    1b34:	873e                	mv	a4,a5
    1b36:	0097d363          	bge	a5,s1,1b3c <printf_core+0x3ec>
    1b3a:	8726                	mv	a4,s1
    1b3c:	0007049b          	sext.w	s1,a4
    1b40:	6722                	ld	a4,8(sp)
    1b42:	e81a                	sd	t1,16(sp)
    1b44:	1e974a63          	blt	a4,s1,1d38 <printf_core+0x5e8>
    1b48:	86be                	mv	a3,a5
    1b4a:	875a                	mv	a4,s6
    1b4c:	8626                	mv	a2,s1
    1b4e:	02000593          	li	a1,32
    1b52:	8522                	mv	a0,s0
    1b54:	e43e                	sd	a5,8(sp)
    1b56:	f7ffe0ef          	jal	ra,ad4 <pad>
    1b5a:	6342                	ld	t1,16(sp)
    1b5c:	866e                	mv	a2,s11
    1b5e:	8522                	mv	a0,s0
    1b60:	859a                	mv	a1,t1
    1b62:	f5dfe0ef          	jal	ra,abe <out>
    1b66:	67a2                	ld	a5,8(sp)
    1b68:	6741                	lui	a4,0x10
    1b6a:	00eb4733          	xor	a4,s6,a4
    1b6e:	86be                	mv	a3,a5
    1b70:	8626                	mv	a2,s1
    1b72:	03000593          	li	a1,48
    1b76:	8522                	mv	a0,s0
    1b78:	f5dfe0ef          	jal	ra,ad4 <pad>
    1b7c:	4701                	li	a4,0
    1b7e:	000c069b          	sext.w	a3,s8
    1b82:	8666                	mv	a2,s9
    1b84:	03000593          	li	a1,48
    1b88:	8522                	mv	a0,s0
    1b8a:	f4bfe0ef          	jal	ra,ad4 <pad>
    1b8e:	8662                	mv	a2,s8
    1b90:	85ea                	mv	a1,s10
    1b92:	8522                	mv	a0,s0
    1b94:	f2bfe0ef          	jal	ra,abe <out>
    1b98:	67a2                	ld	a5,8(sp)
    1b9a:	6709                	lui	a4,0x2
    1b9c:	00eb4733          	xor	a4,s6,a4
    1ba0:	86be                	mv	a3,a5
    1ba2:	8626                	mv	a2,s1
    1ba4:	02000593          	li	a1,32
    1ba8:	8522                	mv	a0,s0
    1baa:	f2bfe0ef          	jal	ra,ad4 <pad>
    1bae:	8da6                	mv	s11,s1
    1bb0:	b6dd                	j	1796 <printf_core+0x46>
    1bb2:	00f77693          	andi	a3,a4,15
    1bb6:	96aa                	add	a3,a3,a0
    1bb8:	0006c683          	lbu	a3,0(a3)
    1bbc:	1d7d                	addi	s10,s10,-1
    1bbe:	8311                	srli	a4,a4,0x4
    1bc0:	8ecd                	or	a3,a3,a1
    1bc2:	00dd0023          	sb	a3,0(s10)
    1bc6:	b739                	j	1ad4 <printf_core+0x384>
    1bc8:	66c6                	ld	a3,80(sp)
    1bca:	09f10d13          	addi	s10,sp,159
    1bce:	876a                	mv	a4,s10
    1bd0:	ee89                	bnez	a3,1bea <printf_core+0x49a>
    1bd2:	008b7693          	andi	a3,s6,8
    1bd6:	834e                	mv	t1,s3
    1bd8:	f00689e3          	beqz	a3,1aea <printf_core+0x39a>
    1bdc:	41a70733          	sub	a4,a4,s10
    1be0:	f19745e3          	blt	a4,s9,1aea <printf_core+0x39a>
    1be4:	00170c9b          	addiw	s9,a4,1
    1be8:	b709                	j	1aea <printf_core+0x39a>
    1bea:	0076f613          	andi	a2,a3,7
    1bee:	1d7d                	addi	s10,s10,-1
    1bf0:	0306061b          	addiw	a2,a2,48
    1bf4:	00cd0023          	sb	a2,0(s10)
    1bf8:	828d                	srli	a3,a3,0x3
    1bfa:	bfd9                	j	1bd0 <printf_core+0x480>
    1bfc:	6746                	ld	a4,80(sp)
    1bfe:	02075263          	bgez	a4,1c22 <printf_core+0x4d2>
    1c02:	40e00733          	neg	a4,a4
    1c06:	e8ba                	sd	a4,80(sp)
    1c08:	4d85                	li	s11,1
    1c0a:	834e                	mv	t1,s3
    1c0c:	6546                	ld	a0,80(sp)
    1c0e:	09f10593          	addi	a1,sp,159
    1c12:	f01a                	sd	t1,32(sp)
    1c14:	e872                	sd	t3,16(sp)
    1c16:	e41fe0ef          	jal	ra,a56 <fmt_u>
    1c1a:	7302                	ld	t1,32(sp)
    1c1c:	6e42                	ld	t3,16(sp)
    1c1e:	8d2a                	mv	s10,a0
    1c20:	b5e9                	j	1aea <printf_core+0x39a>
    1c22:	00bb5713          	srli	a4,s6,0xb
    1c26:	8b05                	andi	a4,a4,1
    1c28:	eb11                	bnez	a4,1c3c <printf_core+0x4ec>
    1c2a:	001b7713          	andi	a4,s6,1
    1c2e:	df71                	beqz	a4,1c0a <printf_core+0x4ba>
    1c30:	4d85                	li	s11,1
    1c32:	00003317          	auipc	t1,0x3
    1c36:	1a030313          	addi	t1,t1,416 # 4dd2 <__clzdi2+0xfc>
    1c3a:	bfc9                	j	1c0c <printf_core+0x4bc>
    1c3c:	4d85                	li	s11,1
    1c3e:	00003317          	auipc	t1,0x3
    1c42:	19330313          	addi	t1,t1,403 # 4dd1 <__clzdi2+0xfb>
    1c46:	b7d9                	j	1c0c <printf_core+0x4bc>
    1c48:	6746                	ld	a4,80(sp)
    1c4a:	834e                	mv	t1,s3
    1c4c:	4c85                	li	s9,1
    1c4e:	08e10f23          	sb	a4,158(sp)
    1c52:	7741                	lui	a4,0xffff0
    1c54:	177d                	addi	a4,a4,-1
    1c56:	00eb7b33          	and	s6,s6,a4
    1c5a:	09f10613          	addi	a2,sp,159
    1c5e:	09e10d13          	addi	s10,sp,158
    1c62:	bd65                	j	1b1a <printf_core+0x3ca>
    1c64:	5a8000ef          	jal	ra,220c <__errno_location>
    1c68:	4108                	lw	a0,0(a0)
    1c6a:	5d2000ef          	jal	ra,223c <strerror>
    1c6e:	8d2a                	mv	s10,a0
    1c70:	85e6                	mv	a1,s9
    1c72:	000cd663          	bgez	s9,1c7e <printf_core+0x52e>
    1c76:	800005b7          	lui	a1,0x80000
    1c7a:	fff5c593          	not	a1,a1
    1c7e:	856a                	mv	a0,s10
    1c80:	330000ef          	jal	ra,1fb0 <strnlen>
    1c84:	00ad0633          	add	a2,s10,a0
    1c88:	000cd563          	bgez	s9,1c92 <printf_core+0x542>
    1c8c:	00064703          	lbu	a4,0(a2)
    1c90:	e745                	bnez	a4,1d38 <printf_core+0x5e8>
    1c92:	7741                	lui	a4,0xffff0
    1c94:	177d                	addi	a4,a4,-1
    1c96:	00050c9b          	sext.w	s9,a0
    1c9a:	00eb7b33          	and	s6,s6,a4
    1c9e:	834e                	mv	t1,s3
    1ca0:	bdad                	j	1b1a <printf_core+0x3ca>
    1ca2:	6d46                	ld	s10,80(sp)
    1ca4:	fc0d16e3          	bnez	s10,1c70 <printf_core+0x520>
    1ca8:	00003d17          	auipc	s10,0x3
    1cac:	138d0d13          	addi	s10,s10,312 # 4de0 <__clzdi2+0x10a>
    1cb0:	b7c1                	j	1c70 <printf_core+0x520>
    1cb2:	6746                	ld	a4,80(sp)
    1cb4:	c682                	sw	zero,76(sp)
    1cb6:	5cfd                	li	s9,-1
    1cb8:	c4ba                	sw	a4,72(sp)
    1cba:	00b8                	addi	a4,sp,72
    1cbc:	e8ba                	sd	a4,80(sp)
    1cbe:	6c46                	ld	s8,80(sp)
    1cc0:	4d01                	li	s10,0
    1cc2:	1834                	addi	a3,sp,56
    1cc4:	8de2                	mv	s11,s8
    1cc6:	039d7163          	bgeu	s10,s9,1ce8 <printf_core+0x598>
    1cca:	000da583          	lw	a1,0(s11)
    1cce:	cd89                	beqz	a1,1ce8 <printf_core+0x598>
    1cd0:	8536                	mv	a0,a3
    1cd2:	0d91                	addi	s11,s11,4
    1cd4:	e836                	sd	a3,16(sp)
    1cd6:	64c000ef          	jal	ra,2322 <wctomb>
    1cda:	c80545e3          	bltz	a0,1964 <printf_core+0x214>
    1cde:	41ac8733          	sub	a4,s9,s10
    1ce2:	66c2                	ld	a3,16(sp)
    1ce4:	04a77f63          	bgeu	a4,a0,1d42 <printf_core+0x5f2>
    1ce8:	80000737          	lui	a4,0x80000
    1cec:	fff74713          	not	a4,a4
    1cf0:	05a76463          	bltu	a4,s10,1d38 <printf_core+0x5e8>
    1cf4:	000d0c9b          	sext.w	s9,s10
    1cf8:	875a                	mv	a4,s6
    1cfa:	86e6                	mv	a3,s9
    1cfc:	8626                	mv	a2,s1
    1cfe:	02000593          	li	a1,32
    1d02:	8522                	mv	a0,s0
    1d04:	dd1fe0ef          	jal	ra,ad4 <pad>
    1d08:	183c                	addi	a5,sp,56
    1d0a:	4d81                	li	s11,0
    1d0c:	e83e                	sd	a5,16(sp)
    1d0e:	03adec63          	bltu	s11,s10,1d46 <printf_core+0x5f6>
    1d12:	6709                	lui	a4,0x2
    1d14:	00eb4733          	xor	a4,s6,a4
    1d18:	86e6                	mv	a3,s9
    1d1a:	8626                	mv	a2,s1
    1d1c:	02000593          	li	a1,32
    1d20:	8522                	mv	a0,s0
    1d22:	db3fe0ef          	jal	ra,ad4 <pad>
    1d26:	00048d9b          	sext.w	s11,s1
    1d2a:	0194d463          	bge	s1,s9,1d32 <printf_core+0x5e2>
    1d2e:	000c8d9b          	sext.w	s11,s9
    1d32:	67a2                	ld	a5,8(sp)
    1d34:	a7b7d1e3          	bge	a5,s11,1796 <printf_core+0x46>
    1d38:	4d4000ef          	jal	ra,220c <__errno_location>
    1d3c:	04b00793          	li	a5,75
    1d40:	b10d                	j	1962 <printf_core+0x212>
    1d42:	9d2a                	add	s10,s10,a0
    1d44:	b749                	j	1cc6 <printf_core+0x576>
    1d46:	000c2583          	lw	a1,0(s8)
    1d4a:	d5e1                	beqz	a1,1d12 <printf_core+0x5c2>
    1d4c:	6542                	ld	a0,16(sp)
    1d4e:	0c11                	addi	s8,s8,4
    1d50:	5d2000ef          	jal	ra,2322 <wctomb>
    1d54:	9daa                	add	s11,s11,a0
    1d56:	862a                	mv	a2,a0
    1d58:	fbbd6de3          	bltu	s10,s11,1d12 <printf_core+0x5c2>
    1d5c:	65c2                	ld	a1,16(sp)
    1d5e:	8522                	mv	a0,s0
    1d60:	d5ffe0ef          	jal	ra,abe <out>
    1d64:	b76d                	j	1d0e <printf_core+0x5be>
    1d66:	000e0463          	beqz	t3,1d6e <printf_core+0x61e>
    1d6a:	fc0cc7e3          	bltz	s9,1d38 <printf_core+0x5e8>
    1d6e:	65c6                	ld	a1,80(sp)
    1d70:	6666                	ld	a2,88(sp)
    1d72:	87da                	mv	a5,s6
    1d74:	8766                	mv	a4,s9
    1d76:	86a6                	mv	a3,s1
    1d78:	8522                	mv	a0,s0
    1d7a:	dd5fe0ef          	jal	ra,b4e <fmt_fp>
    1d7e:	8daa                	mv	s11,a0
    1d80:	fa0559e3          	bgez	a0,1d32 <printf_core+0x5e2>
    1d84:	bf55                	j	1d38 <printf_core+0x5e8>
    1d86:	834e                	mv	t1,s3
    1d88:	09f10613          	addi	a2,sp,159
    1d8c:	b379                	j	1b1a <printf_core+0x3ca>
    1d8e:	8d32                	mv	s10,a2
    1d90:	b369                	j	1b1a <printf_core+0x3ca>
    1d92:	c4041ee3          	bnez	s0,19ee <printf_core+0x29e>
    1d96:	c40b8be3          	beqz	s7,19ec <printf_core+0x29c>
    1d9a:	4405                	li	s0,1
    1d9c:	44a9                	li	s1,10
    1d9e:	00241793          	slli	a5,s0,0x2
    1da2:	97d6                	add	a5,a5,s5
    1da4:	438c                	lw	a1,0(a5)
    1da6:	ed81                	bnez	a1,1dbe <printf_core+0x66e>
    1da8:	4729                	li	a4,10
    1daa:	00241793          	slli	a5,s0,0x2
    1dae:	97d6                	add	a5,a5,s5
    1db0:	439c                	lw	a5,0(a5)
    1db2:	ba0795e3          	bnez	a5,195c <printf_core+0x20c>
    1db6:	0405                	addi	s0,s0,1
    1db8:	fee419e3          	bne	s0,a4,1daa <printf_core+0x65a>
    1dbc:	a819                	j	1dd2 <printf_core+0x682>
    1dbe:	6782                	ld	a5,0(sp)
    1dc0:	00441513          	slli	a0,s0,0x4
    1dc4:	8652                	mv	a2,s4
    1dc6:	953e                	add	a0,a0,a5
    1dc8:	0405                	addi	s0,s0,1
    1dca:	bdffe0ef          	jal	ra,9a8 <pop_arg>
    1dce:	fc9418e3          	bne	s0,s1,1d9e <printf_core+0x64e>
    1dd2:	4905                	li	s2,1
    1dd4:	b929                	j	19ee <printf_core+0x29e>

0000000000001dd6 <vfprintf>:
vfprintf():
    1dd6:	7149                	addi	sp,sp,-368
    1dd8:	fa5a                	sd	s6,304(sp)
    1dda:	f65e                	sd	s7,296(sp)
    1ddc:	f262                	sd	s8,288(sp)
    1dde:	08010b93          	addi	s7,sp,128
    1de2:	00810c13          	addi	s8,sp,8
    1de6:	8b0a                	mv	s6,sp
    1de8:	f2a2                	sd	s0,352(sp)
    1dea:	e032                	sd	a2,0(sp)
    1dec:	842a                	mv	s0,a0
    1dee:	8762                	mv	a4,s8
    1df0:	86de                	mv	a3,s7
    1df2:	865a                	mv	a2,s6
    1df4:	4501                	li	a0,0
    1df6:	eea6                	sd	s1,344(sp)
    1df8:	fe56                	sd	s5,312(sp)
    1dfa:	f686                	sd	ra,360(sp)
    1dfc:	eaca                	sd	s2,336(sp)
    1dfe:	e6ce                	sd	s3,328(sp)
    1e00:	e2d2                	sd	s4,320(sp)
    1e02:	8aae                	mv	s5,a1
    1e04:	e402                	sd	zero,8(sp)
    1e06:	e802                	sd	zero,16(sp)
    1e08:	ec02                	sd	zero,24(sp)
    1e0a:	f002                	sd	zero,32(sp)
    1e0c:	f402                	sd	zero,40(sp)
    1e0e:	943ff0ef          	jal	ra,1750 <printf_core>
    1e12:	54fd                	li	s1,-1
    1e14:	0a054363          	bltz	a0,1eba <vfprintf+0xe4>
    1e18:	08c42783          	lw	a5,140(s0)
    1e1c:	4981                	li	s3,0
    1e1e:	0007c663          	bltz	a5,1e2a <vfprintf+0x54>
    1e22:	8522                	mv	a0,s0
    1e24:	516000ef          	jal	ra,233a <__lockfile>
    1e28:	89aa                	mv	s3,a0
    1e2a:	401c                	lw	a5,0(s0)
    1e2c:	08842703          	lw	a4,136(s0)
    1e30:	0207fa13          	andi	s4,a5,32
    1e34:	00e04563          	bgtz	a4,1e3e <vfprintf+0x68>
    1e38:	fdf7f793          	andi	a5,a5,-33
    1e3c:	c01c                	sw	a5,0(s0)
    1e3e:	703c                	ld	a5,96(s0)
    1e40:	ebd1                	bnez	a5,1ed4 <vfprintf+0xfe>
    1e42:	181c                	addi	a5,sp,48
    1e44:	05843903          	ld	s2,88(s0)
    1e48:	ec3c                	sd	a5,88(s0)
    1e4a:	05000793          	li	a5,80
    1e4e:	f03c                	sd	a5,96(s0)
    1e50:	02043023          	sd	zero,32(s0)
    1e54:	02043c23          	sd	zero,56(s0)
    1e58:	02043423          	sd	zero,40(s0)
    1e5c:	8522                	mv	a0,s0
    1e5e:	628000ef          	jal	ra,2486 <__towrite>
    1e62:	54fd                	li	s1,-1
    1e64:	e909                	bnez	a0,1e76 <vfprintf+0xa0>
    1e66:	8762                	mv	a4,s8
    1e68:	86de                	mv	a3,s7
    1e6a:	865a                	mv	a2,s6
    1e6c:	85d6                	mv	a1,s5
    1e6e:	8522                	mv	a0,s0
    1e70:	8e1ff0ef          	jal	ra,1750 <printf_core>
    1e74:	84aa                	mv	s1,a0
    1e76:	02090463          	beqz	s2,1e9e <vfprintf+0xc8>
    1e7a:	643c                	ld	a5,72(s0)
    1e7c:	4601                	li	a2,0
    1e7e:	4581                	li	a1,0
    1e80:	8522                	mv	a0,s0
    1e82:	9782                	jalr	a5
    1e84:	741c                	ld	a5,40(s0)
    1e86:	e391                	bnez	a5,1e8a <vfprintf+0xb4>
    1e88:	54fd                	li	s1,-1
    1e8a:	05243c23          	sd	s2,88(s0)
    1e8e:	06043023          	sd	zero,96(s0)
    1e92:	02043023          	sd	zero,32(s0)
    1e96:	02043c23          	sd	zero,56(s0)
    1e9a:	02043423          	sd	zero,40(s0)
    1e9e:	401c                	lw	a5,0(s0)
    1ea0:	0207f713          	andi	a4,a5,32
    1ea4:	c311                	beqz	a4,1ea8 <vfprintf+0xd2>
    1ea6:	54fd                	li	s1,-1
    1ea8:	00fa6a33          	or	s4,s4,a5
    1eac:	01442023          	sw	s4,0(s0)
    1eb0:	00098563          	beqz	s3,1eba <vfprintf+0xe4>
    1eb4:	8522                	mv	a0,s0
    1eb6:	520000ef          	jal	ra,23d6 <__unlockfile>
    1eba:	70b6                	ld	ra,360(sp)
    1ebc:	7416                	ld	s0,352(sp)
    1ebe:	6956                	ld	s2,336(sp)
    1ec0:	69b6                	ld	s3,328(sp)
    1ec2:	6a16                	ld	s4,320(sp)
    1ec4:	7af2                	ld	s5,312(sp)
    1ec6:	7b52                	ld	s6,304(sp)
    1ec8:	7bb2                	ld	s7,296(sp)
    1eca:	7c12                	ld	s8,288(sp)
    1ecc:	8526                	mv	a0,s1
    1ece:	64f6                	ld	s1,344(sp)
    1ed0:	6175                	addi	sp,sp,368
    1ed2:	8082                	ret
    1ed4:	02043903          	ld	s2,32(s0)
    1ed8:	f80902e3          	beqz	s2,1e5c <vfprintf+0x86>
    1edc:	4901                	li	s2,0
    1ede:	b761                	j	1e66 <vfprintf+0x90>

0000000000001ee0 <memset>:
memset():
    1ee0:	c679                	beqz	a2,1fae <memset+0xce>
    1ee2:	0ff5f793          	zext.b	a5,a1
    1ee6:	00f50023          	sb	a5,0(a0)
    1eea:	00c50733          	add	a4,a0,a2
    1eee:	fef70fa3          	sb	a5,-1(a4) # 1fff <__init_tp+0x21>
    1ef2:	4689                	li	a3,2
    1ef4:	0ac6fd63          	bgeu	a3,a2,1fae <memset+0xce>
    1ef8:	00f500a3          	sb	a5,1(a0)
    1efc:	00f50123          	sb	a5,2(a0)
    1f00:	fef70f23          	sb	a5,-2(a4)
    1f04:	fef70ea3          	sb	a5,-3(a4)
    1f08:	4699                	li	a3,6
    1f0a:	0ac6f263          	bgeu	a3,a2,1fae <memset+0xce>
    1f0e:	00f501a3          	sb	a5,3(a0)
    1f12:	fef70e23          	sb	a5,-4(a4)
    1f16:	46a1                	li	a3,8
    1f18:	08c6fb63          	bgeu	a3,a2,1fae <memset+0xce>
    1f1c:	0ff5f593          	zext.b	a1,a1
    1f20:	0085979b          	slliw	a5,a1,0x8
    1f24:	40a00733          	neg	a4,a0
    1f28:	8b0d                	andi	a4,a4,3
    1f2a:	9fad                	addw	a5,a5,a1
    1f2c:	8e19                	sub	a2,a2,a4
    1f2e:	0107959b          	slliw	a1,a5,0x10
    1f32:	9fad                	addw	a5,a5,a1
    1f34:	972a                	add	a4,a4,a0
    1f36:	9a71                	andi	a2,a2,-4
    1f38:	c31c                	sw	a5,0(a4)
    1f3a:	00c705b3          	add	a1,a4,a2
    1f3e:	fef5ae23          	sw	a5,-4(a1) # ffffffff7ffffffc <__BSS_END__+0xffffffff7fff87dc>
    1f42:	06c6f663          	bgeu	a3,a2,1fae <memset+0xce>
    1f46:	c35c                	sw	a5,4(a4)
    1f48:	c71c                	sw	a5,8(a4)
    1f4a:	fef5aa23          	sw	a5,-12(a1)
    1f4e:	fef5ac23          	sw	a5,-8(a1)
    1f52:	46e1                	li	a3,24
    1f54:	04c6fd63          	bgeu	a3,a2,1fae <memset+0xce>
    1f58:	00477813          	andi	a6,a4,4
    1f5c:	c75c                	sw	a5,12(a4)
    1f5e:	cb1c                	sw	a5,16(a4)
    1f60:	cb5c                	sw	a5,20(a4)
    1f62:	cf1c                	sw	a5,24(a4)
    1f64:	0861                	addi	a6,a6,24
    1f66:	02079893          	slli	a7,a5,0x20
    1f6a:	02079693          	slli	a3,a5,0x20
    1f6e:	0208d893          	srli	a7,a7,0x20
    1f72:	fef5a223          	sw	a5,-28(a1)
    1f76:	fef5a423          	sw	a5,-24(a1)
    1f7a:	fef5a623          	sw	a5,-20(a1)
    1f7e:	fef5a823          	sw	a5,-16(a1)
    1f82:	41060633          	sub	a2,a2,a6
    1f86:	47fd                	li	a5,31
    1f88:	9742                	add	a4,a4,a6
    1f8a:	0116e6b3          	or	a3,a3,a7
    1f8e:	02c7f063          	bgeu	a5,a2,1fae <memset+0xce>
    1f92:	1601                	addi	a2,a2,-32
    1f94:	fe067793          	andi	a5,a2,-32
    1f98:	02078793          	addi	a5,a5,32
    1f9c:	97ba                	add	a5,a5,a4
    1f9e:	e314                	sd	a3,0(a4)
    1fa0:	e714                	sd	a3,8(a4)
    1fa2:	eb14                	sd	a3,16(a4)
    1fa4:	ef14                	sd	a3,24(a4)
    1fa6:	02070713          	addi	a4,a4,32
    1faa:	fef71ae3          	bne	a4,a5,1f9e <memset+0xbe>
    1fae:	8082                	ret

0000000000001fb0 <strnlen>:
strnlen():
    1fb0:	1101                	addi	sp,sp,-32
    1fb2:	e822                	sd	s0,16(sp)
    1fb4:	862e                	mv	a2,a1
    1fb6:	842e                	mv	s0,a1
    1fb8:	4581                	li	a1,0
    1fba:	e426                	sd	s1,8(sp)
    1fbc:	ec06                	sd	ra,24(sp)
    1fbe:	84aa                	mv	s1,a0
    1fc0:	600000ef          	jal	ra,25c0 <memchr>
    1fc4:	c519                	beqz	a0,1fd2 <strnlen+0x22>
    1fc6:	60e2                	ld	ra,24(sp)
    1fc8:	6442                	ld	s0,16(sp)
    1fca:	8d05                	sub	a0,a0,s1
    1fcc:	64a2                	ld	s1,8(sp)
    1fce:	6105                	addi	sp,sp,32
    1fd0:	8082                	ret
    1fd2:	60e2                	ld	ra,24(sp)
    1fd4:	8522                	mv	a0,s0
    1fd6:	6442                	ld	s0,16(sp)
    1fd8:	64a2                	ld	s1,8(sp)
    1fda:	6105                	addi	sp,sp,32
    1fdc:	8082                	ret

0000000000001fde <__init_tp>:
__init_tp():
    1fde:	1141                	addi	sp,sp,-16
    1fe0:	e022                	sd	s0,0(sp)
    1fe2:	e406                	sd	ra,8(sp)
    1fe4:	842a                	mv	s0,a0
    1fe6:	e108                	sd	a0,0(a0)
    1fe8:	0c850513          	addi	a0,a0,200
    1fec:	2b3000ef          	jal	ra,2a9e <__set_thread_area>
    1ff0:	04054763          	bltz	a0,203e <__init_tp+0x60>
    1ff4:	e511                	bnez	a0,2000 <__init_tp+0x22>
    1ff6:	4785                	li	a5,1
    1ff8:	00005717          	auipc	a4,0x5
    1ffc:	20f70023          	sb	a5,512(a4) # 71f8 <__libc>
    2000:	4789                	li	a5,2
    2002:	d41c                	sw	a5,40(s0)
    2004:	06000893          	li	a7,96
    2008:	00005517          	auipc	a0,0x5
    200c:	67850513          	addi	a0,a0,1656 # 7680 <__thread_list_lock>
    2010:	00000073          	ecall
    2014:	00005797          	auipc	a5,0x5
    2018:	21c78793          	addi	a5,a5,540 # 7230 <__libc+0x38>
    201c:	ec5c                	sd	a5,152(s0)
    201e:	07840793          	addi	a5,s0,120
    2022:	fc3c                	sd	a5,120(s0)
    2024:	00005797          	auipc	a5,0x5
    2028:	1c47b783          	ld	a5,452(a5) # 71e8 <__sysinfo>
    202c:	d008                	sw	a0,32(s0)
    202e:	ec1c                	sd	a5,24(s0)
    2030:	e400                	sd	s0,8(s0)
    2032:	e800                	sd	s0,16(s0)
    2034:	4501                	li	a0,0
    2036:	60a2                	ld	ra,8(sp)
    2038:	6402                	ld	s0,0(sp)
    203a:	0141                	addi	sp,sp,16
    203c:	8082                	ret
    203e:	557d                	li	a0,-1
    2040:	bfdd                	j	2036 <__init_tp+0x58>

0000000000002042 <__copy_tls>:
__copy_tls():
    2042:	7139                	addi	sp,sp,-64
    2044:	ec4e                	sd	s3,24(sp)
    2046:	00005997          	auipc	s3,0x5
    204a:	1b298993          	addi	s3,s3,434 # 71f8 <__libc>
    204e:	0289b783          	ld	a5,40(s3)
    2052:	f426                	sd	s1,40(sp)
    2054:	0189b483          	ld	s1,24(s3)
    2058:	078e                	slli	a5,a5,0x3
    205a:	f3800713          	li	a4,-200
    205e:	14e1                	addi	s1,s1,-8
    2060:	8c9d                	sub	s1,s1,a5
    2062:	0209b783          	ld	a5,32(s3)
    2066:	8f09                	sub	a4,a4,a0
    2068:	f04a                	sd	s2,32(sp)
    206a:	17fd                	addi	a5,a5,-1
    206c:	8ff9                	and	a5,a5,a4
    206e:	0109b903          	ld	s2,16(s3)
    2072:	f822                	sd	s0,48(sp)
    2074:	e456                	sd	s5,8(sp)
    2076:	94aa                	add	s1,s1,a0
    2078:	00f50433          	add	s0,a0,a5
    207c:	6a85                	lui	s5,0x1
    207e:	e852                	sd	s4,16(sp)
    2080:	e05a                	sd	s6,0(sp)
    2082:	fc06                	sd	ra,56(sp)
    2084:	0c840b13          	addi	s6,s0,200
    2088:	00848a13          	addi	s4,s1,8
    208c:	800a8a93          	addi	s5,s5,-2048 # 800 <__init_libc+0x9a>
    2090:	02091163          	bnez	s2,20b2 <__copy_tls+0x70>
    2094:	0289b783          	ld	a5,40(s3)
    2098:	70e2                	ld	ra,56(sp)
    209a:	8522                	mv	a0,s0
    209c:	e09c                	sd	a5,0(s1)
    209e:	e064                	sd	s1,192(s0)
    20a0:	7442                	ld	s0,48(sp)
    20a2:	74a2                	ld	s1,40(sp)
    20a4:	7902                	ld	s2,32(sp)
    20a6:	69e2                	ld	s3,24(sp)
    20a8:	6a42                	ld	s4,16(sp)
    20aa:	6aa2                	ld	s5,8(sp)
    20ac:	6b02                	ld	s6,0(sp)
    20ae:	6121                	addi	sp,sp,64
    20b0:	8082                	ret
    20b2:	02893783          	ld	a5,40(s2)
    20b6:	00893583          	ld	a1,8(s2)
    20ba:	0a21                	addi	s4,s4,8
    20bc:	97da                	add	a5,a5,s6
    20be:	97d6                	add	a5,a5,s5
    20c0:	fefa3c23          	sd	a5,-8(s4)
    20c4:	02893503          	ld	a0,40(s2)
    20c8:	01093603          	ld	a2,16(s2)
    20cc:	955a                	add	a0,a0,s6
    20ce:	580000ef          	jal	ra,264e <memcpy>
    20d2:	00093903          	ld	s2,0(s2)
    20d6:	bf6d                	j	2090 <__copy_tls+0x4e>

00000000000020d8 <__init_tls>:
static_init_tls():
    20d8:	01853e83          	ld	t4,24(a0)
    20dc:	00005317          	auipc	t1,0x5
    20e0:	02830313          	addi	t1,t1,40 # 7104 <__default_stacksize>
    20e4:	02853803          	ld	a6,40(a0)
    20e8:	00032583          	lw	a1,0(t1)
    20ec:	1141                	addi	sp,sp,-16
    20ee:	6474e8b7          	lui	a7,0x6474e
    20f2:	e406                	sd	ra,8(sp)
    20f4:	e022                	sd	s0,0(sp)
    20f6:	87f6                	mv	a5,t4
    20f8:	4e01                	li	t3,0
    20fa:	4701                	li	a4,0
    20fc:	4681                	li	a3,0
    20fe:	4f99                	li	t6,6
    2100:	4289                	li	t0,2
    2102:	00005f17          	auipc	t5,0x5
    2106:	01ef3f03          	ld	t5,30(t5) # 7120 <_GLOBAL_OFFSET_TABLE_+0x8>
    210a:	439d                	li	t2,7
    210c:	55188893          	addi	a7,a7,1361 # 6474e551 <__BSS_END__+0x64746d31>
    2110:	008000b7          	lui	ra,0x800
    2114:	0a081263          	bnez	a6,21b8 <__init_tls+0xe0>
    2118:	000e0463          	beqz	t3,2120 <__init_tls+0x48>
    211c:	00b32023          	sw	a1,0(t1)
    2120:	00005797          	auipc	a5,0x5
    2124:	6b878793          	addi	a5,a5,1720 # 77d8 <main_tls>
    2128:	00005617          	auipc	a2,0x5
    212c:	0d060613          	addi	a2,a2,208 # 71f8 <__libc>
    2130:	ce89                	beqz	a3,214a <__init_tls+0x72>
    2132:	6a8c                	ld	a1,16(a3)
    2134:	ea1c                	sd	a5,16(a2)
    2136:	972e                	add	a4,a4,a1
    2138:	e798                	sd	a4,8(a5)
    213a:	7298                	ld	a4,32(a3)
    213c:	eb98                	sd	a4,16(a5)
    213e:	7698                	ld	a4,40(a3)
    2140:	ef98                	sd	a4,24(a5)
    2142:	7a98                	ld	a4,48(a3)
    2144:	f398                	sd	a4,32(a5)
    2146:	4705                	li	a4,1
    2148:	f618                	sd	a4,40(a2)
    214a:	0187b803          	ld	a6,24(a5)
    214e:	6794                	ld	a3,8(a5)
    2150:	738c                	ld	a1,32(a5)
    2152:	00d80733          	add	a4,a6,a3
    2156:	fff58513          	addi	a0,a1,-1
    215a:	40e00733          	neg	a4,a4
    215e:	8f69                	and	a4,a4,a0
    2160:	8ee9                	and	a3,a3,a0
    2162:	9742                	add	a4,a4,a6
    2164:	ef98                	sd	a4,24(a5)
    2166:	f794                	sd	a3,40(a5)
    2168:	451d                	li	a0,7
    216a:	00b56463          	bltu	a0,a1,2172 <__init_tls+0x9a>
    216e:	45a1                	li	a1,8
    2170:	f38c                	sd	a1,32(a5)
    2172:	739c                	ld	a5,32(a5)
    2174:	00005517          	auipc	a0,0x5
    2178:	51450513          	addi	a0,a0,1300 # 7688 <builtin_tls>
    217c:	0df78593          	addi	a1,a5,223
    2180:	95b6                	add	a1,a1,a3
    2182:	95ba                	add	a1,a1,a4
    2184:	99e1                	andi	a1,a1,-8
    2186:	f21c                	sd	a5,32(a2)
    2188:	ee0c                	sd	a1,24(a2)
    218a:	15000793          	li	a5,336
    218e:	00b7fc63          	bgeu	a5,a1,21a6 <__init_tls+0xce>
    2192:	0de00893          	li	a7,222
    2196:	4501                	li	a0,0
    2198:	460d                	li	a2,3
    219a:	02200693          	li	a3,34
    219e:	577d                	li	a4,-1
    21a0:	4781                	li	a5,0
    21a2:	00000073          	ecall
    21a6:	e9dff0ef          	jal	ra,2042 <__copy_tls>
    21aa:	e35ff0ef          	jal	ra,1fde <__init_tp>
    21ae:	04055b63          	bgez	a0,2204 <__init_tls+0x12c>
    21b2:	00000023          	sb	zero,0(zero) # 0 <exit-0x508>
    21b6:	9002                	ebreak
    21b8:	4390                	lw	a2,0(a5)
    21ba:	01f61963          	bne	a2,t6,21cc <__init_tls+0xf4>
    21be:	6b98                	ld	a4,16(a5)
    21c0:	40ee8733          	sub	a4,t4,a4
    21c4:	7110                	ld	a2,32(a0)
    21c6:	187d                	addi	a6,a6,-1
    21c8:	97b2                	add	a5,a5,a2
    21ca:	b7a9                	j	2114 <__init_tls+0x3c>
    21cc:	02560463          	beq	a2,t0,21f4 <__init_tls+0x11c>
    21d0:	02760863          	beq	a2,t2,2200 <__init_tls+0x128>
    21d4:	ff1618e3          	bne	a2,a7,21c4 <__init_tls+0xec>
    21d8:	7790                	ld	a2,40(a5)
    21da:	02059413          	slli	s0,a1,0x20
    21de:	9001                	srli	s0,s0,0x20
    21e0:	fec472e3          	bgeu	s0,a2,21c4 <__init_tls+0xec>
    21e4:	00c0f463          	bgeu	ra,a2,21ec <__init_tls+0x114>
    21e8:	00800637          	lui	a2,0x800
    21ec:	0006059b          	sext.w	a1,a2
    21f0:	4e05                	li	t3,1
    21f2:	bfc9                	j	21c4 <__init_tls+0xec>
    21f4:	fc0f08e3          	beqz	t5,21c4 <__init_tls+0xec>
    21f8:	6b98                	ld	a4,16(a5)
    21fa:	40ef0733          	sub	a4,t5,a4
    21fe:	b7d9                	j	21c4 <__init_tls+0xec>
    2200:	86be                	mv	a3,a5
    2202:	b7c9                	j	21c4 <__init_tls+0xec>
    2204:	60a2                	ld	ra,8(sp)
    2206:	6402                	ld	s0,0(sp)
    2208:	0141                	addi	sp,sp,16
    220a:	8082                	ret

000000000000220c <__errno_location>:
___errno_location():
    220c:	8512                	mv	a0,tp
    220e:	f5c50513          	addi	a0,a0,-164
    2212:	8082                	ret

0000000000002214 <__strerror_l>:
strerror_l():
    2214:	08300793          	li	a5,131
    2218:	00a7f363          	bgeu	a5,a0,221e <__strerror_l+0xa>
    221c:	4501                	li	a0,0
    221e:	0506                	slli	a0,a0,0x1
    2220:	00003797          	auipc	a5,0x3
    2224:	f3078793          	addi	a5,a5,-208 # 5150 <errmsgidx>
    2228:	97aa                	add	a5,a5,a0
    222a:	0007d783          	lhu	a5,0(a5)
    222e:	758c                	ld	a1,40(a1)
    2230:	00003517          	auipc	a0,0x3
    2234:	02850513          	addi	a0,a0,40 # 5258 <errmsgstr>
    2238:	953e                	add	a0,a0,a5
    223a:	a839                	j	2258 <__lctrans>

000000000000223c <strerror>:
strerror():
    223c:	8792                	mv	a5,tp
    223e:	fd07b583          	ld	a1,-48(a5)
    2242:	bfc9                	j	2214 <__strerror_l>

0000000000002244 <_Exit>:
_Exit():
    2244:	87aa                	mv	a5,a0
    2246:	05e00893          	li	a7,94
    224a:	00000073          	ecall
    224e:	05d00893          	li	a7,93
    2252:	853e                	mv	a0,a5
    2254:	bfdd                	j	224a <_Exit+0x6>

0000000000002256 <__lctrans_impl>:
dummy():
    2256:	8082                	ret

0000000000002258 <__lctrans>:
__lctrans():
    2258:	bffd                	j	2256 <__lctrans_impl>

000000000000225a <__lctrans_cur>:
__lctrans_cur():
    225a:	8792                	mv	a5,tp
    225c:	fd07b783          	ld	a5,-48(a5)
    2260:	778c                	ld	a1,40(a5)
    2262:	bfd5                	j	2256 <__lctrans_impl>

0000000000002264 <__fpclassifyl>:
__fpclassifyl():
    2264:	6721                	lui	a4,0x8
    2266:	0305d693          	srli	a3,a1,0x30
    226a:	177d                	addi	a4,a4,-1
    226c:	05c2                	slli	a1,a1,0x10
    226e:	8ef9                	and	a3,a3,a4
    2270:	87aa                	mv	a5,a0
    2272:	81c1                	srli	a1,a1,0x10
    2274:	e691                	bnez	a3,2280 <__fpclassifyl+0x1c>
    2276:	8dc9                	or	a1,a1,a0
    2278:	00b03533          	snez	a0,a1
    227c:	0509                	addi	a0,a0,2
    227e:	8082                	ret
    2280:	4511                	li	a0,4
    2282:	00e69563          	bne	a3,a4,228c <__fpclassifyl+0x28>
    2286:	8ddd                	or	a1,a1,a5
    2288:	0015b513          	seqz	a0,a1
    228c:	8082                	ret

000000000000228e <__signbitl>:
__signbitl():
    228e:	03f5d513          	srli	a0,a1,0x3f
    2292:	8082                	ret

0000000000002294 <frexpl>:
frexpl.localalias():
    2294:	6721                	lui	a4,0x8
    2296:	1101                	addi	sp,sp,-32
    2298:	0305d793          	srli	a5,a1,0x30
    229c:	177d                	addi	a4,a4,-1
    229e:	e822                	sd	s0,16(sp)
    22a0:	e426                	sd	s1,8(sp)
    22a2:	e04a                	sd	s2,0(sp)
    22a4:	ec06                	sd	ra,24(sp)
    22a6:	8932                	mv	s2,a2
    22a8:	00e7f633          	and	a2,a5,a4
    22ac:	84aa                	mv	s1,a0
    22ae:	842e                	mv	s0,a1
    22b0:	e629                	bnez	a2,22fa <frexpl+0x66>
    22b2:	4681                	li	a3,0
    22b4:	5b4010ef          	jal	ra,3868 <__eqtf2>
    22b8:	cd15                	beqz	a0,22f4 <frexpl+0x60>
    22ba:	00003797          	auipc	a5,0x3
    22be:	6c678793          	addi	a5,a5,1734 # 5980 <errmsgstr+0x728>
    22c2:	6390                	ld	a2,0(a5)
    22c4:	6794                	ld	a3,8(a5)
    22c6:	8526                	mv	a0,s1
    22c8:	85a2                	mv	a1,s0
    22ca:	62c010ef          	jal	ra,38f6 <__multf3>
    22ce:	864a                	mv	a2,s2
    22d0:	fc5ff0ef          	jal	ra,2294 <frexpl>
    22d4:	00092783          	lw	a5,0(s2)
    22d8:	84aa                	mv	s1,a0
    22da:	842e                	mv	s0,a1
    22dc:	f887879b          	addiw	a5,a5,-120
    22e0:	00f92023          	sw	a5,0(s2)
    22e4:	60e2                	ld	ra,24(sp)
    22e6:	85a2                	mv	a1,s0
    22e8:	6442                	ld	s0,16(sp)
    22ea:	6902                	ld	s2,0(sp)
    22ec:	8526                	mv	a0,s1
    22ee:	64a2                	ld	s1,8(sp)
    22f0:	6105                	addi	sp,sp,32
    22f2:	8082                	ret
    22f4:	00092023          	sw	zero,0(s2)
    22f8:	b7f5                	j	22e4 <frexpl+0x50>
    22fa:	0006069b          	sext.w	a3,a2
    22fe:	fee603e3          	beq	a2,a4,22e4 <frexpl+0x50>
    2302:	7771                	lui	a4,0xffffc
    2304:	2709                	addiw	a4,a4,2
    2306:	9f35                	addw	a4,a4,a3
    2308:	00e92023          	sw	a4,0(s2)
    230c:	7761                	lui	a4,0xffff8
    230e:	8ff9                	and	a5,a5,a4
    2310:	6711                	lui	a4,0x4
    2312:	1779                	addi	a4,a4,-2
    2314:	8fd9                	or	a5,a5,a4
    2316:	01059413          	slli	s0,a1,0x10
    231a:	17c2                	slli	a5,a5,0x30
    231c:	8041                	srli	s0,s0,0x10
    231e:	8c5d                	or	s0,s0,a5
    2320:	b7d1                	j	22e4 <frexpl+0x50>

0000000000002322 <wctomb>:
wctomb():
    2322:	c911                	beqz	a0,2336 <wctomb+0x14>
    2324:	1141                	addi	sp,sp,-16
    2326:	4601                	li	a2,0
    2328:	e406                	sd	ra,8(sp)
    232a:	7a8000ef          	jal	ra,2ad2 <wcrtomb>
    232e:	60a2                	ld	ra,8(sp)
    2330:	2501                	sext.w	a0,a0
    2332:	0141                	addi	sp,sp,16
    2334:	8082                	ret
    2336:	4501                	li	a0,0
    2338:	8082                	ret

000000000000233a <__lockfile>:
__lockfile():
    233a:	08c52783          	lw	a5,140(a0)
    233e:	2781                	sext.w	a5,a5
    2340:	8712                	mv	a4,tp
    2342:	c00006b7          	lui	a3,0xc0000
    2346:	f5872703          	lw	a4,-168(a4) # 3f58 <__multf3+0x662>
    234a:	16fd                	addi	a3,a3,-1
    234c:	8ff5                	and	a5,a5,a3
    234e:	08e78263          	beq	a5,a4,23d2 <__lockfile+0x98>
    2352:	08c50793          	addi	a5,a0,140
    2356:	4601                	li	a2,0
    2358:	1607a6af          	lr.w.aqrl	a3,(a5)
    235c:	00c69563          	bne	a3,a2,2366 <__lockfile+0x2c>
    2360:	1ee7a5af          	sc.w.aqrl	a1,a4,(a5)
    2364:	f9f5                	bnez	a1,2358 <__lockfile+0x1e>
    2366:	2681                	sext.w	a3,a3
    2368:	c295                	beqz	a3,238c <__lockfile+0x52>
    236a:	40000837          	lui	a6,0x40000
    236e:	01076733          	or	a4,a4,a6
    2372:	4301                	li	t1,0
    2374:	2701                	sext.w	a4,a4
    2376:	fda00e13          	li	t3,-38
    237a:	1607a6af          	lr.w.aqrl	a3,(a5)
    237e:	00669563          	bne	a3,t1,2388 <__lockfile+0x4e>
    2382:	1ee7a62f          	sc.w.aqrl	a2,a4,(a5)
    2386:	fa75                	bnez	a2,237a <__lockfile+0x40>
    2388:	2681                	sext.w	a3,a3
    238a:	e299                	bnez	a3,2390 <__lockfile+0x56>
    238c:	4505                	li	a0,1
    238e:	8082                	ret
    2390:	0106f5b3          	and	a1,a3,a6
    2394:	0106e633          	or	a2,a3,a6
    2398:	2581                	sext.w	a1,a1
    239a:	2601                	sext.w	a2,a2
    239c:	c185                	beqz	a1,23bc <__lockfile+0x82>
    239e:	06200893          	li	a7,98
    23a2:	853e                	mv	a0,a5
    23a4:	08000593          	li	a1,128
    23a8:	4681                	li	a3,0
    23aa:	00000073          	ecall
    23ae:	fdc516e3          	bne	a0,t3,237a <__lockfile+0x40>
    23b2:	853e                	mv	a0,a5
    23b4:	4581                	li	a1,0
    23b6:	00000073          	ecall
    23ba:	b7c1                	j	237a <__lockfile+0x40>
    23bc:	1607a5af          	lr.w.aqrl	a1,(a5)
    23c0:	00d59563          	bne	a1,a3,23ca <__lockfile+0x90>
    23c4:	1ec7a52f          	sc.w.aqrl	a0,a2,(a5)
    23c8:	f975                	bnez	a0,23bc <__lockfile+0x82>
    23ca:	2581                	sext.w	a1,a1
    23cc:	fad597e3          	bne	a1,a3,237a <__lockfile+0x40>
    23d0:	b7f9                	j	239e <__lockfile+0x64>
    23d2:	4501                	li	a0,0
    23d4:	8082                	ret

00000000000023d6 <__unlockfile>:
__unlockfile():
    23d6:	08c50713          	addi	a4,a0,140
    23da:	4601                	li	a2,0
    23dc:	08c52783          	lw	a5,140(a0)
    23e0:	2781                	sext.w	a5,a5
    23e2:	160726af          	lr.w.aqrl	a3,(a4)
    23e6:	00f69563          	bne	a3,a5,23f0 <__unlockfile+0x1a>
    23ea:	1ec725af          	sc.w.aqrl	a1,a2,(a4)
    23ee:	f9f5                	bnez	a1,23e2 <__unlockfile+0xc>
    23f0:	2681                	sext.w	a3,a3
    23f2:	fed795e3          	bne	a5,a3,23dc <__unlockfile+0x6>
    23f6:	83f9                	srli	a5,a5,0x1e
    23f8:	8b85                	andi	a5,a5,1
    23fa:	c38d                	beqz	a5,241c <__unlockfile+0x46>
    23fc:	06200893          	li	a7,98
    2400:	853a                	mv	a0,a4
    2402:	08100593          	li	a1,129
    2406:	4605                	li	a2,1
    2408:	00000073          	ecall
    240c:	fda00793          	li	a5,-38
    2410:	00f51663          	bne	a0,a5,241c <__unlockfile+0x46>
    2414:	853a                	mv	a0,a4
    2416:	4585                	li	a1,1
    2418:	00000073          	ecall
    241c:	8082                	ret

000000000000241e <__aio_close>:
dummy():
    241e:	8082                	ret

0000000000002420 <__stdio_close>:
__stdio_close():
    2420:	5d28                	lw	a0,120(a0)
    2422:	1141                	addi	sp,sp,-16
    2424:	e406                	sd	ra,8(sp)
    2426:	ff9ff0ef          	jal	ra,241e <__aio_close>
    242a:	03900893          	li	a7,57
    242e:	00000073          	ecall
    2432:	67c000ef          	jal	ra,2aae <__syscall_ret>
    2436:	60a2                	ld	ra,8(sp)
    2438:	2501                	sext.w	a0,a0
    243a:	0141                	addi	sp,sp,16
    243c:	8082                	ret

000000000000243e <__stdio_seek>:
__stdio_seek():
    243e:	5d28                	lw	a0,120(a0)
    2440:	a595                	j	2aa4 <lseek>

0000000000002442 <__stdout_write>:
__stdout_write():
    2442:	1101                	addi	sp,sp,-32
    2444:	ec06                	sd	ra,24(sp)
    2446:	86b2                	mv	a3,a2
    2448:	00001617          	auipc	a2,0x1
    244c:	80a60613          	addi	a2,a2,-2038 # 2c52 <__stdio_write>
    2450:	e530                	sd	a2,72(a0)
    2452:	4110                	lw	a2,0(a0)
    2454:	87aa                	mv	a5,a0
    2456:	872e                	mv	a4,a1
    2458:	04067613          	andi	a2,a2,64
    245c:	ee09                	bnez	a2,2476 <__stdout_write+0x34>
    245e:	6595                	lui	a1,0x5
    2460:	5d28                	lw	a0,120(a0)
    2462:	48f5                	li	a7,29
    2464:	41358593          	addi	a1,a1,1043 # 5413 <errmsgstr+0x1bb>
    2468:	0030                	addi	a2,sp,8
    246a:	00000073          	ecall
    246e:	c501                	beqz	a0,2476 <__stdout_write+0x34>
    2470:	567d                	li	a2,-1
    2472:	08c7a823          	sw	a2,144(a5)
    2476:	8636                	mv	a2,a3
    2478:	85ba                	mv	a1,a4
    247a:	853e                	mv	a0,a5
    247c:	7d6000ef          	jal	ra,2c52 <__stdio_write>
    2480:	60e2                	ld	ra,24(sp)
    2482:	6105                	addi	sp,sp,32
    2484:	8082                	ret

0000000000002486 <__towrite>:
__towrite():
    2486:	08852783          	lw	a5,136(a0)
    248a:	fff7871b          	addiw	a4,a5,-1
    248e:	8fd9                	or	a5,a5,a4
    2490:	08f52423          	sw	a5,136(a0)
    2494:	411c                	lw	a5,0(a0)
    2496:	0087f713          	andi	a4,a5,8
    249a:	c711                	beqz	a4,24a6 <__towrite+0x20>
    249c:	0207e793          	ori	a5,a5,32
    24a0:	c11c                	sw	a5,0(a0)
    24a2:	557d                	li	a0,-1
    24a4:	8082                	ret
    24a6:	6d3c                	ld	a5,88(a0)
    24a8:	7138                	ld	a4,96(a0)
    24aa:	00053823          	sd	zero,16(a0)
    24ae:	fd1c                	sd	a5,56(a0)
    24b0:	f51c                	sd	a5,40(a0)
    24b2:	97ba                	add	a5,a5,a4
    24b4:	00053423          	sd	zero,8(a0)
    24b8:	f11c                	sd	a5,32(a0)
    24ba:	4501                	li	a0,0
    24bc:	8082                	ret

00000000000024be <__towrite_needs_stdio_exit>:
__towrite_needs_stdio_exit():
    24be:	af91                	j	2c12 <__stdio_exit>

00000000000024c0 <__fwritex>:
__fwritex():
    24c0:	721c                	ld	a5,32(a2)
    24c2:	7179                	addi	sp,sp,-48
    24c4:	f022                	sd	s0,32(sp)
    24c6:	e84a                	sd	s2,16(sp)
    24c8:	e44e                	sd	s3,8(sp)
    24ca:	f406                	sd	ra,40(sp)
    24cc:	ec26                	sd	s1,24(sp)
    24ce:	89aa                	mv	s3,a0
    24d0:	892e                	mv	s2,a1
    24d2:	8432                	mv	s0,a2
    24d4:	c38d                	beqz	a5,24f6 <__fwritex+0x36>
    24d6:	701c                	ld	a5,32(s0)
    24d8:	7418                	ld	a4,40(s0)
    24da:	8f99                	sub	a5,a5,a4
    24dc:	0327f363          	bgeu	a5,s2,2502 <__fwritex+0x42>
    24e0:	643c                	ld	a5,72(s0)
    24e2:	8522                	mv	a0,s0
    24e4:	7402                	ld	s0,32(sp)
    24e6:	70a2                	ld	ra,40(sp)
    24e8:	64e2                	ld	s1,24(sp)
    24ea:	864a                	mv	a2,s2
    24ec:	85ce                	mv	a1,s3
    24ee:	6942                	ld	s2,16(sp)
    24f0:	69a2                	ld	s3,8(sp)
    24f2:	6145                	addi	sp,sp,48
    24f4:	8782                	jr	a5
    24f6:	8532                	mv	a0,a2
    24f8:	f8fff0ef          	jal	ra,2486 <__towrite>
    24fc:	dd69                	beqz	a0,24d6 <__fwritex+0x16>
    24fe:	4501                	li	a0,0
    2500:	a005                	j	2520 <__fwritex+0x60>
    2502:	09042783          	lw	a5,144(s0)
    2506:	84ca                	mv	s1,s2
    2508:	4729                	li	a4,10
    250a:	0207d363          	bgez	a5,2530 <__fwritex+0x70>
    250e:	7408                	ld	a0,40(s0)
    2510:	8626                	mv	a2,s1
    2512:	85ce                	mv	a1,s3
    2514:	13a000ef          	jal	ra,264e <memcpy>
    2518:	741c                	ld	a5,40(s0)
    251a:	854a                	mv	a0,s2
    251c:	97a6                	add	a5,a5,s1
    251e:	f41c                	sd	a5,40(s0)
    2520:	70a2                	ld	ra,40(sp)
    2522:	7402                	ld	s0,32(sp)
    2524:	64e2                	ld	s1,24(sp)
    2526:	6942                	ld	s2,16(sp)
    2528:	69a2                	ld	s3,8(sp)
    252a:	6145                	addi	sp,sp,48
    252c:	8082                	ret
    252e:	84be                	mv	s1,a5
    2530:	c485                	beqz	s1,2558 <__fwritex+0x98>
    2532:	fff48793          	addi	a5,s1,-1
    2536:	00f986b3          	add	a3,s3,a5
    253a:	0006c683          	lbu	a3,0(a3) # ffffffffc0000000 <__BSS_END__+0xffffffffbfff87e0>
    253e:	fee698e3          	bne	a3,a4,252e <__fwritex+0x6e>
    2542:	643c                	ld	a5,72(s0)
    2544:	8626                	mv	a2,s1
    2546:	85ce                	mv	a1,s3
    2548:	8522                	mv	a0,s0
    254a:	9782                	jalr	a5
    254c:	fc956ae3          	bltu	a0,s1,2520 <__fwritex+0x60>
    2550:	99a6                	add	s3,s3,s1
    2552:	409904b3          	sub	s1,s2,s1
    2556:	bf65                	j	250e <__fwritex+0x4e>
    2558:	84ca                	mv	s1,s2
    255a:	bf55                	j	250e <__fwritex+0x4e>

000000000000255c <fwrite>:
fwrite_unlocked():
    255c:	7139                	addi	sp,sp,-64
    255e:	f822                	sd	s0,48(sp)
    2560:	f426                	sd	s1,40(sp)
    2562:	f04a                	sd	s2,32(sp)
    2564:	ec4e                	sd	s3,24(sp)
    2566:	e456                	sd	s5,8(sp)
    2568:	fc06                	sd	ra,56(sp)
    256a:	e852                	sd	s4,16(sp)
    256c:	02c58ab3          	mul	s5,a1,a2
    2570:	89aa                	mv	s3,a0
    2572:	892e                	mv	s2,a1
    2574:	84b6                	mv	s1,a3
    2576:	4401                	li	s0,0
    2578:	c191                	beqz	a1,257c <fwrite+0x20>
    257a:	8432                	mv	s0,a2
    257c:	08c4a783          	lw	a5,140(s1)
    2580:	4a01                	li	s4,0
    2582:	0007c663          	bltz	a5,258e <fwrite+0x32>
    2586:	8526                	mv	a0,s1
    2588:	db3ff0ef          	jal	ra,233a <__lockfile>
    258c:	8a2a                	mv	s4,a0
    258e:	854e                	mv	a0,s3
    2590:	8626                	mv	a2,s1
    2592:	85d6                	mv	a1,s5
    2594:	f2dff0ef          	jal	ra,24c0 <__fwritex>
    2598:	89aa                	mv	s3,a0
    259a:	000a0563          	beqz	s4,25a4 <fwrite+0x48>
    259e:	8526                	mv	a0,s1
    25a0:	e37ff0ef          	jal	ra,23d6 <__unlockfile>
    25a4:	013a8463          	beq	s5,s3,25ac <fwrite+0x50>
    25a8:	0329d433          	divu	s0,s3,s2
    25ac:	70e2                	ld	ra,56(sp)
    25ae:	8522                	mv	a0,s0
    25b0:	7442                	ld	s0,48(sp)
    25b2:	74a2                	ld	s1,40(sp)
    25b4:	7902                	ld	s2,32(sp)
    25b6:	69e2                	ld	s3,24(sp)
    25b8:	6a42                	ld	s4,16(sp)
    25ba:	6aa2                	ld	s5,8(sp)
    25bc:	6121                	addi	sp,sp,64
    25be:	8082                	ret

00000000000025c0 <memchr>:
memchr():
    25c0:	00757713          	andi	a4,a0,7
    25c4:	87aa                	mv	a5,a0
    25c6:	0ff5f593          	zext.b	a1,a1
    25ca:	cb19                	beqz	a4,25e0 <memchr+0x20>
    25cc:	ce25                	beqz	a2,2644 <memchr+0x84>
    25ce:	0007c703          	lbu	a4,0(a5)
    25d2:	04b70e63          	beq	a4,a1,262e <memchr+0x6e>
    25d6:	0785                	addi	a5,a5,1
    25d8:	0077f713          	andi	a4,a5,7
    25dc:	167d                	addi	a2,a2,-1
    25de:	f77d                	bnez	a4,25cc <memchr+0xc>
    25e0:	4501                	li	a0,0
    25e2:	c235                	beqz	a2,2646 <memchr+0x86>
    25e4:	0007c703          	lbu	a4,0(a5)
    25e8:	04b70363          	beq	a4,a1,262e <memchr+0x6e>
    25ec:	00003517          	auipc	a0,0x3
    25f0:	3a453503          	ld	a0,932(a0) # 5990 <errmsgstr+0x738>
    25f4:	471d                	li	a4,7
    25f6:	02a58533          	mul	a0,a1,a0
    25fa:	02c77a63          	bgeu	a4,a2,262e <memchr+0x6e>
    25fe:	00003897          	auipc	a7,0x3
    2602:	39a8b883          	ld	a7,922(a7) # 5998 <errmsgstr+0x740>
    2606:	00003817          	auipc	a6,0x3
    260a:	39a83803          	ld	a6,922(a6) # 59a0 <errmsgstr+0x748>
    260e:	431d                	li	t1,7
    2610:	a029                	j	261a <memchr+0x5a>
    2612:	1661                	addi	a2,a2,-8
    2614:	07a1                	addi	a5,a5,8
    2616:	02c37963          	bgeu	t1,a2,2648 <memchr+0x88>
    261a:	6398                	ld	a4,0(a5)
    261c:	8f29                	xor	a4,a4,a0
    261e:	011706b3          	add	a3,a4,a7
    2622:	fff74713          	not	a4,a4
    2626:	8f75                	and	a4,a4,a3
    2628:	01077733          	and	a4,a4,a6
    262c:	d37d                	beqz	a4,2612 <memchr+0x52>
    262e:	853e                	mv	a0,a5
    2630:	97b2                	add	a5,a5,a2
    2632:	a021                	j	263a <memchr+0x7a>
    2634:	0505                	addi	a0,a0,1
    2636:	00f50763          	beq	a0,a5,2644 <memchr+0x84>
    263a:	00054703          	lbu	a4,0(a0)
    263e:	feb71be3          	bne	a4,a1,2634 <memchr+0x74>
    2642:	8082                	ret
    2644:	4501                	li	a0,0
    2646:	8082                	ret
    2648:	4501                	li	a0,0
    264a:	f275                	bnez	a2,262e <memchr+0x6e>
    264c:	8082                	ret

000000000000264e <memcpy>:
memcpy():
    264e:	0035f793          	andi	a5,a1,3
    2652:	40078363          	beqz	a5,2a58 <memcpy+0x40a>
    2656:	22060b63          	beqz	a2,288c <memcpy+0x23e>
    265a:	8e2a                	mv	t3,a0
    265c:	a019                	j	2662 <memcpy+0x14>
    265e:	22060663          	beqz	a2,288a <memcpy+0x23c>
    2662:	0005c703          	lbu	a4,0(a1)
    2666:	0585                	addi	a1,a1,1
    2668:	0035f793          	andi	a5,a1,3
    266c:	00ee0023          	sb	a4,0(t3) # 3b9ad000 <__BSS_END__+0x3b9a57e0>
    2670:	167d                	addi	a2,a2,-1
    2672:	0e05                	addi	t3,t3,1
    2674:	f7ed                	bnez	a5,265e <memcpy+0x10>
    2676:	003e7693          	andi	a3,t3,3
    267a:	87f2                	mv	a5,t3
    267c:	20068963          	beqz	a3,288e <memcpy+0x240>
    2680:	7139                	addi	sp,sp,-64
    2682:	fc22                	sd	s0,56(sp)
    2684:	f826                	sd	s1,48(sp)
    2686:	f44a                	sd	s2,40(sp)
    2688:	f04e                	sd	s3,32(sp)
    268a:	ec52                	sd	s4,24(sp)
    268c:	e856                	sd	s5,16(sp)
    268e:	e45a                	sd	s6,8(sp)
    2690:	e05e                	sd	s7,0(sp)
    2692:	47fd                	li	a5,31
    2694:	0ac7f763          	bgeu	a5,a2,2742 <memcpy+0xf4>
    2698:	4709                	li	a4,2
    269a:	0005c803          	lbu	a6,0(a1)
    269e:	419c                	lw	a5,0(a1)
    26a0:	30e68f63          	beq	a3,a4,29be <memcpy+0x370>
    26a4:	470d                	li	a4,3
    26a6:	28e68863          	beq	a3,a4,2936 <memcpy+0x2e8>
    26aa:	0015c883          	lbu	a7,1(a1)
    26ae:	0025c683          	lbu	a3,2(a1)
    26b2:	fec60713          	addi	a4,a2,-20
    26b6:	ff077393          	andi	t2,a4,-16
    26ba:	058d                	addi	a1,a1,3
    26bc:	003e0413          	addi	s0,t3,3
    26c0:	01338913          	addi	s2,t2,19
    26c4:	00475493          	srli	s1,a4,0x4
    26c8:	010e0023          	sb	a6,0(t3)
    26cc:	011e00a3          	sb	a7,1(t3)
    26d0:	00de0123          	sb	a3,2(t3)
    26d4:	9972                	add	s2,s2,t3
    26d6:	832e                	mv	t1,a1
    26d8:	8722                	mv	a4,s0
    26da:	00132883          	lw	a7,1(t1)
    26de:	00532803          	lw	a6,5(t1)
    26e2:	00932683          	lw	a3,9(t1)
    26e6:	0187de1b          	srliw	t3,a5,0x18
    26ea:	00d32783          	lw	a5,13(t1)
    26ee:	0088929b          	slliw	t0,a7,0x8
    26f2:	00881f9b          	slliw	t6,a6,0x8
    26f6:	00869f1b          	slliw	t5,a3,0x8
    26fa:	0188d89b          	srliw	a7,a7,0x18
    26fe:	0188581b          	srliw	a6,a6,0x18
    2702:	0186d69b          	srliw	a3,a3,0x18
    2706:	00879e9b          	slliw	t4,a5,0x8
    270a:	005e6e33          	or	t3,t3,t0
    270e:	01f8e8b3          	or	a7,a7,t6
    2712:	01e86833          	or	a6,a6,t5
    2716:	01d6e6b3          	or	a3,a3,t4
    271a:	01c72023          	sw	t3,0(a4)
    271e:	01172223          	sw	a7,4(a4)
    2722:	01072423          	sw	a6,8(a4)
    2726:	c754                	sw	a3,12(a4)
    2728:	0741                	addi	a4,a4,16
    272a:	0341                	addi	t1,t1,16
    272c:	fb2717e3          	bne	a4,s2,26da <memcpy+0x8c>
    2730:	00148793          	addi	a5,s1,1
    2734:	0792                	slli	a5,a5,0x4
    2736:	1635                	addi	a2,a2,-19
    2738:	40760633          	sub	a2,a2,t2
    273c:	00f40e33          	add	t3,s0,a5
    2740:	95be                	add	a1,a1,a5
    2742:	01067793          	andi	a5,a2,16
    2746:	00867713          	andi	a4,a2,8
    274a:	00467813          	andi	a6,a2,4
    274e:	00267693          	andi	a3,a2,2
    2752:	8a05                	andi	a2,a2,1
    2754:	34078163          	beqz	a5,2a96 <memcpy+0x448>
    2758:	00e5c783          	lbu	a5,14(a1)
    275c:	0005cb83          	lbu	s7,0(a1)
    2760:	0015cb03          	lbu	s6,1(a1)
    2764:	0025ca83          	lbu	s5,2(a1)
    2768:	0035ca03          	lbu	s4,3(a1)
    276c:	0045c983          	lbu	s3,4(a1)
    2770:	0055c903          	lbu	s2,5(a1)
    2774:	0065c483          	lbu	s1,6(a1)
    2778:	0075c403          	lbu	s0,7(a1)
    277c:	0085c383          	lbu	t2,8(a1)
    2780:	0095c283          	lbu	t0,9(a1)
    2784:	00a5cf83          	lbu	t6,10(a1)
    2788:	00b5cf03          	lbu	t5,11(a1)
    278c:	00c5ce83          	lbu	t4,12(a1)
    2790:	00d5c303          	lbu	t1,13(a1)
    2794:	00f5c883          	lbu	a7,15(a1)
    2798:	00fe0723          	sb	a5,14(t3)
    279c:	017e0023          	sb	s7,0(t3)
    27a0:	016e00a3          	sb	s6,1(t3)
    27a4:	015e0123          	sb	s5,2(t3)
    27a8:	014e01a3          	sb	s4,3(t3)
    27ac:	013e0223          	sb	s3,4(t3)
    27b0:	012e02a3          	sb	s2,5(t3)
    27b4:	009e0323          	sb	s1,6(t3)
    27b8:	008e03a3          	sb	s0,7(t3)
    27bc:	007e0423          	sb	t2,8(t3)
    27c0:	005e04a3          	sb	t0,9(t3)
    27c4:	01fe0523          	sb	t6,10(t3)
    27c8:	01ee05a3          	sb	t5,11(t3)
    27cc:	01de0623          	sb	t4,12(t3)
    27d0:	006e06a3          	sb	t1,13(t3)
    27d4:	05c1                	addi	a1,a1,16
    27d6:	010e0793          	addi	a5,t3,16
    27da:	011e07a3          	sb	a7,15(t3)
    27de:	26070b63          	beqz	a4,2a54 <memcpy+0x406>
    27e2:	0065c703          	lbu	a4,6(a1)
    27e6:	0005c283          	lbu	t0,0(a1)
    27ea:	0015cf83          	lbu	t6,1(a1)
    27ee:	0025cf03          	lbu	t5,2(a1)
    27f2:	0035ce83          	lbu	t4,3(a1)
    27f6:	0045ce03          	lbu	t3,4(a1)
    27fa:	0055c303          	lbu	t1,5(a1)
    27fe:	0075c883          	lbu	a7,7(a1)
    2802:	00e78323          	sb	a4,6(a5)
    2806:	00578023          	sb	t0,0(a5)
    280a:	01f780a3          	sb	t6,1(a5)
    280e:	01e78123          	sb	t5,2(a5)
    2812:	01d781a3          	sb	t4,3(a5)
    2816:	01c78223          	sb	t3,4(a5)
    281a:	006782a3          	sb	t1,5(a5)
    281e:	05a1                	addi	a1,a1,8
    2820:	00878713          	addi	a4,a5,8
    2824:	011783a3          	sb	a7,7(a5)
    2828:	26080563          	beqz	a6,2a92 <memcpy+0x444>
    282c:	0025c783          	lbu	a5,2(a1)
    2830:	0005c303          	lbu	t1,0(a1)
    2834:	0015c883          	lbu	a7,1(a1)
    2838:	0035c803          	lbu	a6,3(a1)
    283c:	00f70123          	sb	a5,2(a4)
    2840:	00670023          	sb	t1,0(a4)
    2844:	011700a3          	sb	a7,1(a4)
    2848:	0591                	addi	a1,a1,4
    284a:	00470793          	addi	a5,a4,4
    284e:	010701a3          	sb	a6,3(a4)
    2852:	1e068f63          	beqz	a3,2a50 <memcpy+0x402>
    2856:	0005c703          	lbu	a4,0(a1)
    285a:	0015c683          	lbu	a3,1(a1)
    285e:	0589                	addi	a1,a1,2
    2860:	00e78023          	sb	a4,0(a5)
    2864:	00d780a3          	sb	a3,1(a5)
    2868:	00278713          	addi	a4,a5,2
    286c:	c609                	beqz	a2,2876 <memcpy+0x228>
    286e:	0005c783          	lbu	a5,0(a1)
    2872:	00f70023          	sb	a5,0(a4)
    2876:	7462                	ld	s0,56(sp)
    2878:	74c2                	ld	s1,48(sp)
    287a:	7922                	ld	s2,40(sp)
    287c:	7982                	ld	s3,32(sp)
    287e:	6a62                	ld	s4,24(sp)
    2880:	6ac2                	ld	s5,16(sp)
    2882:	6b22                	ld	s6,8(sp)
    2884:	6b82                	ld	s7,0(sp)
    2886:	6121                	addi	sp,sp,64
    2888:	8082                	ret
    288a:	8082                	ret
    288c:	8082                	ret
    288e:	473d                	li	a4,15
    2890:	04c77963          	bgeu	a4,a2,28e2 <memcpy+0x294>
    2894:	01c5e733          	or	a4,a1,t3
    2898:	8b1d                	andi	a4,a4,7
    289a:	ff060e93          	addi	t4,a2,-16
    289e:	1a071f63          	bnez	a4,2a5c <memcpy+0x40e>
    28a2:	010eb713          	sltiu	a4,t4,16
    28a6:	00174713          	xori	a4,a4,1
    28aa:	0ff77713          	zext.b	a4,a4
    28ae:	1a070763          	beqz	a4,2a5c <memcpy+0x40e>
    28b2:	004ede93          	srli	t4,t4,0x4
    28b6:	001e8313          	addi	t1,t4,1
    28ba:	872e                	mv	a4,a1
    28bc:	00873883          	ld	a7,8(a4)
    28c0:	00073803          	ld	a6,0(a4)
    28c4:	0685                	addi	a3,a3,1
    28c6:	0117b423          	sd	a7,8(a5)
    28ca:	0107b023          	sd	a6,0(a5)
    28ce:	0741                	addi	a4,a4,16
    28d0:	07c1                	addi	a5,a5,16
    28d2:	fe66e5e3          	bltu	a3,t1,28bc <memcpy+0x26e>
    28d6:	001e8793          	addi	a5,t4,1
    28da:	0792                	slli	a5,a5,0x4
    28dc:	8a3d                	andi	a2,a2,15
    28de:	9e3e                	add	t3,t3,a5
    28e0:	95be                	add	a1,a1,a5
    28e2:	00867693          	andi	a3,a2,8
    28e6:	00467713          	andi	a4,a2,4
    28ea:	00267793          	andi	a5,a2,2
    28ee:	8a05                	andi	a2,a2,1
    28f0:	ca91                	beqz	a3,2904 <memcpy+0x2b6>
    28f2:	0005a803          	lw	a6,0(a1)
    28f6:	41d4                	lw	a3,4(a1)
    28f8:	0e21                	addi	t3,t3,8
    28fa:	05a1                	addi	a1,a1,8
    28fc:	ff0e2c23          	sw	a6,-8(t3)
    2900:	fede2e23          	sw	a3,-4(t3)
    2904:	c711                	beqz	a4,2910 <memcpy+0x2c2>
    2906:	4198                	lw	a4,0(a1)
    2908:	0e11                	addi	t3,t3,4
    290a:	0591                	addi	a1,a1,4
    290c:	feee2e23          	sw	a4,-4(t3)
    2910:	18078563          	beqz	a5,2a9a <memcpy+0x44c>
    2914:	0005c783          	lbu	a5,0(a1)
    2918:	0015c703          	lbu	a4,1(a1)
    291c:	0589                	addi	a1,a1,2
    291e:	00fe0023          	sb	a5,0(t3)
    2922:	00ee00a3          	sb	a4,1(t3)
    2926:	002e0793          	addi	a5,t3,2
    292a:	d22d                	beqz	a2,288c <memcpy+0x23e>
    292c:	0005c703          	lbu	a4,0(a1)
    2930:	00e78023          	sb	a4,0(a5)
    2934:	8082                	ret
    2936:	fec60713          	addi	a4,a2,-20
    293a:	ff077413          	andi	s0,a4,-16
    293e:	0585                	addi	a1,a1,1
    2940:	001e0493          	addi	s1,t3,1
    2944:	01140393          	addi	t2,s0,17
    2948:	00475913          	srli	s2,a4,0x4
    294c:	010e0023          	sb	a6,0(t3)
    2950:	93f2                	add	t2,t2,t3
    2952:	832e                	mv	t1,a1
    2954:	8726                	mv	a4,s1
    2956:	00332883          	lw	a7,3(t1)
    295a:	00732803          	lw	a6,7(t1)
    295e:	00b32683          	lw	a3,11(t1)
    2962:	0087de1b          	srliw	t3,a5,0x8
    2966:	00f32783          	lw	a5,15(t1)
    296a:	0188929b          	slliw	t0,a7,0x18
    296e:	01881f9b          	slliw	t6,a6,0x18
    2972:	01869f1b          	slliw	t5,a3,0x18
    2976:	0088d89b          	srliw	a7,a7,0x8
    297a:	0088581b          	srliw	a6,a6,0x8
    297e:	0086d69b          	srliw	a3,a3,0x8
    2982:	01879e9b          	slliw	t4,a5,0x18
    2986:	005e6e33          	or	t3,t3,t0
    298a:	01f8e8b3          	or	a7,a7,t6
    298e:	01e86833          	or	a6,a6,t5
    2992:	01d6e6b3          	or	a3,a3,t4
    2996:	01c72023          	sw	t3,0(a4)
    299a:	01172223          	sw	a7,4(a4)
    299e:	01072423          	sw	a6,8(a4)
    29a2:	c754                	sw	a3,12(a4)
    29a4:	0741                	addi	a4,a4,16
    29a6:	0341                	addi	t1,t1,16
    29a8:	fa7717e3          	bne	a4,t2,2956 <memcpy+0x308>
    29ac:	00190793          	addi	a5,s2,1
    29b0:	0792                	slli	a5,a5,0x4
    29b2:	163d                	addi	a2,a2,-17
    29b4:	8e01                	sub	a2,a2,s0
    29b6:	00f48e33          	add	t3,s1,a5
    29ba:	95be                	add	a1,a1,a5
    29bc:	b359                	j	2742 <memcpy+0xf4>
    29be:	0015c683          	lbu	a3,1(a1)
    29c2:	fec60713          	addi	a4,a2,-20
    29c6:	ff077393          	andi	t2,a4,-16
    29ca:	0589                	addi	a1,a1,2
    29cc:	002e0413          	addi	s0,t3,2
    29d0:	01238913          	addi	s2,t2,18
    29d4:	00475493          	srli	s1,a4,0x4
    29d8:	010e0023          	sb	a6,0(t3)
    29dc:	00de00a3          	sb	a3,1(t3)
    29e0:	9972                	add	s2,s2,t3
    29e2:	832e                	mv	t1,a1
    29e4:	8722                	mv	a4,s0
    29e6:	00232883          	lw	a7,2(t1)
    29ea:	00632803          	lw	a6,6(t1)
    29ee:	00a32683          	lw	a3,10(t1)
    29f2:	0107de1b          	srliw	t3,a5,0x10
    29f6:	00e32783          	lw	a5,14(t1)
    29fa:	0108929b          	slliw	t0,a7,0x10
    29fe:	01081f9b          	slliw	t6,a6,0x10
    2a02:	01069f1b          	slliw	t5,a3,0x10
    2a06:	0108d89b          	srliw	a7,a7,0x10
    2a0a:	0108581b          	srliw	a6,a6,0x10
    2a0e:	0106d69b          	srliw	a3,a3,0x10
    2a12:	01079e9b          	slliw	t4,a5,0x10
    2a16:	005e6e33          	or	t3,t3,t0
    2a1a:	01f8e8b3          	or	a7,a7,t6
    2a1e:	01e86833          	or	a6,a6,t5
    2a22:	01d6e6b3          	or	a3,a3,t4
    2a26:	01c72023          	sw	t3,0(a4)
    2a2a:	01172223          	sw	a7,4(a4)
    2a2e:	01072423          	sw	a6,8(a4)
    2a32:	c754                	sw	a3,12(a4)
    2a34:	0741                	addi	a4,a4,16
    2a36:	0341                	addi	t1,t1,16
    2a38:	fb2717e3          	bne	a4,s2,29e6 <memcpy+0x398>
    2a3c:	00148793          	addi	a5,s1,1
    2a40:	0792                	slli	a5,a5,0x4
    2a42:	1639                	addi	a2,a2,-18
    2a44:	40760633          	sub	a2,a2,t2
    2a48:	00f40e33          	add	t3,s0,a5
    2a4c:	95be                	add	a1,a1,a5
    2a4e:	b9d5                	j	2742 <memcpy+0xf4>
    2a50:	873e                	mv	a4,a5
    2a52:	bd29                	j	286c <memcpy+0x21e>
    2a54:	873e                	mv	a4,a5
    2a56:	bbc9                	j	2828 <memcpy+0x1da>
    2a58:	8e2a                	mv	t3,a0
    2a5a:	b931                	j	2676 <memcpy+0x28>
    2a5c:	004ede93          	srli	t4,t4,0x4
    2a60:	001e8f13          	addi	t5,t4,1
    2a64:	0f12                	slli	t5,t5,0x4
    2a66:	9f2e                	add	t5,t5,a1
    2a68:	87ae                	mv	a5,a1
    2a6a:	8772                	mv	a4,t3
    2a6c:	0007a303          	lw	t1,0(a5)
    2a70:	0047a883          	lw	a7,4(a5)
    2a74:	0087a803          	lw	a6,8(a5)
    2a78:	47d4                	lw	a3,12(a5)
    2a7a:	00672023          	sw	t1,0(a4)
    2a7e:	01172223          	sw	a7,4(a4)
    2a82:	01072423          	sw	a6,8(a4)
    2a86:	c754                	sw	a3,12(a4)
    2a88:	07c1                	addi	a5,a5,16
    2a8a:	0741                	addi	a4,a4,16
    2a8c:	feff10e3          	bne	t5,a5,2a6c <memcpy+0x41e>
    2a90:	b599                	j	28d6 <memcpy+0x288>
    2a92:	87ba                	mv	a5,a4
    2a94:	bb7d                	j	2852 <memcpy+0x204>
    2a96:	87f2                	mv	a5,t3
    2a98:	b399                	j	27de <memcpy+0x190>
    2a9a:	87f2                	mv	a5,t3
    2a9c:	b579                	j	292a <memcpy+0x2dc>

0000000000002a9e <__set_thread_area>:
__set_thread_area():
    2a9e:	822a                	mv	tp,a0
    2aa0:	4501                	li	a0,0
    2aa2:	8082                	ret

0000000000002aa4 <lseek>:
__lseek():
    2aa4:	03e00893          	li	a7,62
    2aa8:	00000073          	ecall
    2aac:	a009                	j	2aae <__syscall_ret>

0000000000002aae <__syscall_ret>:
__syscall_ret():
    2aae:	1141                	addi	sp,sp,-16
    2ab0:	e022                	sd	s0,0(sp)
    2ab2:	e406                	sd	ra,8(sp)
    2ab4:	77fd                	lui	a5,0xfffff
    2ab6:	842a                	mv	s0,a0
    2ab8:	00a7e663          	bltu	a5,a0,2ac4 <__syscall_ret+0x16>
    2abc:	60a2                	ld	ra,8(sp)
    2abe:	6402                	ld	s0,0(sp)
    2ac0:	0141                	addi	sp,sp,16
    2ac2:	8082                	ret
    2ac4:	f48ff0ef          	jal	ra,220c <__errno_location>
    2ac8:	4080043b          	negw	s0,s0
    2acc:	c100                	sw	s0,0(a0)
    2ace:	557d                	li	a0,-1
    2ad0:	b7f5                	j	2abc <__syscall_ret+0xe>

0000000000002ad2 <wcrtomb>:
wcrtomb():
    2ad2:	c909                	beqz	a0,2ae4 <wcrtomb+0x12>
    2ad4:	07f00693          	li	a3,127
    2ad8:	0005879b          	sext.w	a5,a1
    2adc:	00b6ec63          	bltu	a3,a1,2af4 <wcrtomb+0x22>
    2ae0:	00b50023          	sb	a1,0(a0)
    2ae4:	4505                	li	a0,1
    2ae6:	8082                	ret
    2ae8:	00b50023          	sb	a1,0(a0)
    2aec:	4505                	li	a0,1
    2aee:	60a2                	ld	ra,8(sp)
    2af0:	0141                	addi	sp,sp,16
    2af2:	8082                	ret
    2af4:	1141                	addi	sp,sp,-16
    2af6:	e406                	sd	ra,8(sp)
    2af8:	8712                	mv	a4,tp
    2afa:	fd073703          	ld	a4,-48(a4)
    2afe:	6318                	ld	a4,0(a4)
    2b00:	ef11                	bnez	a4,2b1c <wcrtomb+0x4a>
    2b02:	7749                	lui	a4,0xffff2
    2b04:	0807071b          	addiw	a4,a4,128
    2b08:	9fb9                	addw	a5,a5,a4
    2b0a:	fcf6ffe3          	bgeu	a3,a5,2ae8 <wcrtomb+0x16>
    2b0e:	efeff0ef          	jal	ra,220c <__errno_location>
    2b12:	05400793          	li	a5,84
    2b16:	c11c                	sw	a5,0(a0)
    2b18:	557d                	li	a0,-1
    2b1a:	bfd1                	j	2aee <wcrtomb+0x1c>
    2b1c:	7ff00713          	li	a4,2047
    2b20:	02f76063          	bltu	a4,a5,2b40 <wcrtomb+0x6e>
    2b24:	4065d79b          	sraiw	a5,a1,0x6
    2b28:	03f5f593          	andi	a1,a1,63
    2b2c:	fc07e793          	ori	a5,a5,-64
    2b30:	f805e593          	ori	a1,a1,-128
    2b34:	00f50023          	sb	a5,0(a0)
    2b38:	00b500a3          	sb	a1,1(a0)
    2b3c:	4509                	li	a0,2
    2b3e:	bf45                	j	2aee <wcrtomb+0x1c>
    2b40:	6735                	lui	a4,0xd
    2b42:	7ff70713          	addi	a4,a4,2047 # d7ff <__BSS_END__+0x5fdf>
    2b46:	00f77763          	bgeu	a4,a5,2b54 <wcrtomb+0x82>
    2b4a:	7749                	lui	a4,0xffff2
    2b4c:	9f3d                	addw	a4,a4,a5
    2b4e:	6689                	lui	a3,0x2
    2b50:	02d77863          	bgeu	a4,a3,2b80 <wcrtomb+0xae>
    2b54:	40c5d79b          	sraiw	a5,a1,0xc
    2b58:	fe07e793          	ori	a5,a5,-32
    2b5c:	00f50023          	sb	a5,0(a0)
    2b60:	4065d79b          	sraiw	a5,a1,0x6
    2b64:	03f7f793          	andi	a5,a5,63
    2b68:	03f5f593          	andi	a1,a1,63
    2b6c:	f807e793          	ori	a5,a5,-128
    2b70:	f805e593          	ori	a1,a1,-128
    2b74:	00f500a3          	sb	a5,1(a0)
    2b78:	00b50123          	sb	a1,2(a0)
    2b7c:	450d                	li	a0,3
    2b7e:	bf85                	j	2aee <wcrtomb+0x1c>
    2b80:	7741                	lui	a4,0xffff0
    2b82:	9fb9                	addw	a5,a5,a4
    2b84:	00100737          	lui	a4,0x100
    2b88:	f8e7f3e3          	bgeu	a5,a4,2b0e <wcrtomb+0x3c>
    2b8c:	4125d79b          	sraiw	a5,a1,0x12
    2b90:	ff07e793          	ori	a5,a5,-16
    2b94:	00f50023          	sb	a5,0(a0)
    2b98:	40c5d79b          	sraiw	a5,a1,0xc
    2b9c:	03f7f793          	andi	a5,a5,63
    2ba0:	f807e793          	ori	a5,a5,-128
    2ba4:	00f500a3          	sb	a5,1(a0)
    2ba8:	4065d79b          	sraiw	a5,a1,0x6
    2bac:	03f7f793          	andi	a5,a5,63
    2bb0:	03f5f593          	andi	a1,a1,63
    2bb4:	f807e793          	ori	a5,a5,-128
    2bb8:	f805e593          	ori	a1,a1,-128
    2bbc:	00f50123          	sb	a5,2(a0)
    2bc0:	00b501a3          	sb	a1,3(a0)
    2bc4:	4511                	li	a0,4
    2bc6:	b725                	j	2aee <wcrtomb+0x1c>

0000000000002bc8 <close_file>:
close_file():
    2bc8:	c521                	beqz	a0,2c10 <close_file+0x48>
    2bca:	08c52783          	lw	a5,140(a0)
    2bce:	1141                	addi	sp,sp,-16
    2bd0:	e022                	sd	s0,0(sp)
    2bd2:	e406                	sd	ra,8(sp)
    2bd4:	842a                	mv	s0,a0
    2bd6:	0007c463          	bltz	a5,2bde <close_file+0x16>
    2bda:	f60ff0ef          	jal	ra,233a <__lockfile>
    2bde:	7418                	ld	a4,40(s0)
    2be0:	7c1c                	ld	a5,56(s0)
    2be2:	00f70763          	beq	a4,a5,2bf0 <close_file+0x28>
    2be6:	643c                	ld	a5,72(s0)
    2be8:	4601                	li	a2,0
    2bea:	4581                	li	a1,0
    2bec:	8522                	mv	a0,s0
    2bee:	9782                	jalr	a5
    2bf0:	640c                	ld	a1,8(s0)
    2bf2:	681c                	ld	a5,16(s0)
    2bf4:	00f58a63          	beq	a1,a5,2c08 <close_file+0x40>
    2bf8:	6838                	ld	a4,80(s0)
    2bfa:	8522                	mv	a0,s0
    2bfc:	6402                	ld	s0,0(sp)
    2bfe:	60a2                	ld	ra,8(sp)
    2c00:	4605                	li	a2,1
    2c02:	8d9d                	sub	a1,a1,a5
    2c04:	0141                	addi	sp,sp,16
    2c06:	8702                	jr	a4
    2c08:	60a2                	ld	ra,8(sp)
    2c0a:	6402                	ld	s0,0(sp)
    2c0c:	0141                	addi	sp,sp,16
    2c0e:	8082                	ret
    2c10:	8082                	ret

0000000000002c12 <__stdio_exit>:
__stdio_exit():
    2c12:	1141                	addi	sp,sp,-16
    2c14:	e022                	sd	s0,0(sp)
    2c16:	e406                	sd	ra,8(sp)
    2c18:	0e0000ef          	jal	ra,2cf8 <__ofl_lock>
    2c1c:	6100                	ld	s0,0(a0)
    2c1e:	e40d                	bnez	s0,2c48 <__stdio_exit+0x36>
    2c20:	00005517          	auipc	a0,0x5
    2c24:	be853503          	ld	a0,-1048(a0) # 7808 <__stderr_used>
    2c28:	fa1ff0ef          	jal	ra,2bc8 <close_file>
    2c2c:	00004517          	auipc	a0,0x4
    2c30:	4cc53503          	ld	a0,1228(a0) # 70f8 <__stdout_used>
    2c34:	f95ff0ef          	jal	ra,2bc8 <close_file>
    2c38:	6402                	ld	s0,0(sp)
    2c3a:	60a2                	ld	ra,8(sp)
    2c3c:	00005517          	auipc	a0,0x5
    2c40:	bcc53503          	ld	a0,-1076(a0) # 7808 <__stderr_used>
    2c44:	0141                	addi	sp,sp,16
    2c46:	b749                	j	2bc8 <close_file>
    2c48:	8522                	mv	a0,s0
    2c4a:	f7fff0ef          	jal	ra,2bc8 <close_file>
    2c4e:	7820                	ld	s0,112(s0)
    2c50:	b7f9                	j	2c1e <__stdio_exit+0xc>

0000000000002c52 <__stdio_write>:
__stdio_write():
    2c52:	715d                	addi	sp,sp,-80
    2c54:	7d1c                	ld	a5,56(a0)
    2c56:	f44e                	sd	s3,40(sp)
    2c58:	02853983          	ld	s3,40(a0)
    2c5c:	e0a2                	sd	s0,64(sp)
    2c5e:	fc26                	sd	s1,56(sp)
    2c60:	40f989b3          	sub	s3,s3,a5
    2c64:	f84a                	sd	s2,48(sp)
    2c66:	f052                	sd	s4,32(sp)
    2c68:	e44e                	sd	s3,8(sp)
    2c6a:	e486                	sd	ra,72(sp)
    2c6c:	842a                	mv	s0,a0
    2c6e:	8932                	mv	s2,a2
    2c70:	e03e                	sd	a5,0(sp)
    2c72:	e82e                	sd	a1,16(sp)
    2c74:	ec32                	sd	a2,24(sp)
    2c76:	99b2                	add	s3,s3,a2
    2c78:	4a09                	li	s4,2
    2c7a:	848a                	mv	s1,sp
    2c7c:	5c28                	lw	a0,120(s0)
    2c7e:	04200893          	li	a7,66
    2c82:	85a6                	mv	a1,s1
    2c84:	8652                	mv	a2,s4
    2c86:	00000073          	ecall
    2c8a:	e25ff0ef          	jal	ra,2aae <__syscall_ret>
    2c8e:	02a99163          	bne	s3,a0,2cb0 <__stdio_write+0x5e>
    2c92:	6c3c                	ld	a5,88(s0)
    2c94:	7038                	ld	a4,96(s0)
    2c96:	fc1c                	sd	a5,56(s0)
    2c98:	973e                	add	a4,a4,a5
    2c9a:	f018                	sd	a4,32(s0)
    2c9c:	f41c                	sd	a5,40(s0)
    2c9e:	60a6                	ld	ra,72(sp)
    2ca0:	6406                	ld	s0,64(sp)
    2ca2:	74e2                	ld	s1,56(sp)
    2ca4:	79a2                	ld	s3,40(sp)
    2ca6:	7a02                	ld	s4,32(sp)
    2ca8:	854a                	mv	a0,s2
    2caa:	7942                	ld	s2,48(sp)
    2cac:	6161                	addi	sp,sp,80
    2cae:	8082                	ret
    2cb0:	02055363          	bgez	a0,2cd6 <__stdio_write+0x84>
    2cb4:	401c                	lw	a5,0(s0)
    2cb6:	02043023          	sd	zero,32(s0)
    2cba:	02043c23          	sd	zero,56(s0)
    2cbe:	0207e793          	ori	a5,a5,32
    2cc2:	c01c                	sw	a5,0(s0)
    2cc4:	02043423          	sd	zero,40(s0)
    2cc8:	4789                	li	a5,2
    2cca:	02fa0563          	beq	s4,a5,2cf4 <__stdio_write+0xa2>
    2cce:	649c                	ld	a5,8(s1)
    2cd0:	40f90933          	sub	s2,s2,a5
    2cd4:	b7e9                	j	2c9e <__stdio_write+0x4c>
    2cd6:	649c                	ld	a5,8(s1)
    2cd8:	40a989b3          	sub	s3,s3,a0
    2cdc:	00a7f563          	bgeu	a5,a0,2ce6 <__stdio_write+0x94>
    2ce0:	8d1d                	sub	a0,a0,a5
    2ce2:	04c1                	addi	s1,s1,16
    2ce4:	3a7d                	addiw	s4,s4,-1
    2ce6:	609c                	ld	a5,0(s1)
    2ce8:	97aa                	add	a5,a5,a0
    2cea:	e09c                	sd	a5,0(s1)
    2cec:	649c                	ld	a5,8(s1)
    2cee:	8f89                	sub	a5,a5,a0
    2cf0:	e49c                	sd	a5,8(s1)
    2cf2:	b769                	j	2c7c <__stdio_write+0x2a>
    2cf4:	4901                	li	s2,0
    2cf6:	b765                	j	2c9e <__stdio_write+0x4c>

0000000000002cf8 <__ofl_lock>:
__ofl_lock():
    2cf8:	1141                	addi	sp,sp,-16
    2cfa:	00005517          	auipc	a0,0x5
    2cfe:	b1e50513          	addi	a0,a0,-1250 # 7818 <ofl_lock>
    2d02:	e406                	sd	ra,8(sp)
    2d04:	01c000ef          	jal	ra,2d20 <__lock>
    2d08:	60a2                	ld	ra,8(sp)
    2d0a:	00005517          	auipc	a0,0x5
    2d0e:	b0650513          	addi	a0,a0,-1274 # 7810 <ofl_head>
    2d12:	0141                	addi	sp,sp,16
    2d14:	8082                	ret

0000000000002d16 <__ofl_unlock>:
__ofl_unlock():
    2d16:	00005517          	auipc	a0,0x5
    2d1a:	b0250513          	addi	a0,a0,-1278 # 7818 <ofl_lock>
    2d1e:	a8d1                	j	2df2 <__unlock>

0000000000002d20 <__lock>:
__lock():
    2d20:	00004617          	auipc	a2,0x4
    2d24:	4db60603          	lb	a2,1243(a2) # 71fb <__libc+0x3>
    2d28:	872a                	mv	a4,a0
    2d2a:	c279                	beqz	a2,2df0 <__lock+0xd0>
    2d2c:	800006b7          	lui	a3,0x80000
    2d30:	4581                	li	a1,0
    2d32:	0685                	addi	a3,a3,1
    2d34:	160727af          	lr.w.aqrl	a5,(a4)
    2d38:	00b79563          	bne	a5,a1,2d42 <__lock+0x22>
    2d3c:	1ed7252f          	sc.w.aqrl	a0,a3,(a4)
    2d40:	f975                	bnez	a0,2d34 <__lock+0x14>
    2d42:	2781                	sext.w	a5,a5
    2d44:	00065663          	bgez	a2,2d50 <__lock+0x30>
    2d48:	00004697          	auipc	a3,0x4
    2d4c:	4a0689a3          	sb	zero,1203(a3) # 71fb <__libc+0x3>
    2d50:	c3c5                	beqz	a5,2df0 <__lock+0xd0>
    2d52:	800006b7          	lui	a3,0x80000
    2d56:	45a9                	li	a1,10
    2d58:	fff6c813          	not	a6,a3
    2d5c:	0016861b          	addiw	a2,a3,1
    2d60:	86be                	mv	a3,a5
    2d62:	0007d463          	bgez	a5,2d6a <__lock+0x4a>
    2d66:	00f806bb          	addw	a3,a6,a5
    2d6a:	00d6053b          	addw	a0,a2,a3
    2d6e:	160727af          	lr.w.aqrl	a5,(a4)
    2d72:	00d79663          	bne	a5,a3,2d7e <__lock+0x5e>
    2d76:	1ea728af          	sc.w.aqrl	a7,a0,(a4)
    2d7a:	fe089ae3          	bnez	a7,2d6e <__lock+0x4e>
    2d7e:	2781                	sext.w	a5,a5
    2d80:	06f68863          	beq	a3,a5,2df0 <__lock+0xd0>
    2d84:	35fd                	addiw	a1,a1,-1
    2d86:	fde9                	bnez	a1,2d60 <__lock+0x40>
    2d88:	431c                	lw	a5,0(a4)
    2d8a:	0007861b          	sext.w	a2,a5
    2d8e:	2785                	addiw	a5,a5,1
    2d90:	160726af          	lr.w.aqrl	a3,(a4)
    2d94:	00c69563          	bne	a3,a2,2d9e <__lock+0x7e>
    2d98:	1ef725af          	sc.w.aqrl	a1,a5,(a4)
    2d9c:	f9f5                	bnez	a1,2d90 <__lock+0x70>
    2d9e:	2681                	sext.w	a3,a3
    2da0:	fed614e3          	bne	a2,a3,2d88 <__lock+0x68>
    2da4:	80000837          	lui	a6,0x80000
    2da8:	fda00313          	li	t1,-38
    2dac:	fff84e13          	not	t3,a6
    2db0:	86be                	mv	a3,a5
    2db2:	0207d363          	bgez	a5,2dd8 <__lock+0xb8>
    2db6:	06200893          	li	a7,98
    2dba:	853a                	mv	a0,a4
    2dbc:	08000593          	li	a1,128
    2dc0:	863e                	mv	a2,a5
    2dc2:	4681                	li	a3,0
    2dc4:	00000073          	ecall
    2dc8:	00651663          	bne	a0,t1,2dd4 <__lock+0xb4>
    2dcc:	853a                	mv	a0,a4
    2dce:	4581                	li	a1,0
    2dd0:	00000073          	ecall
    2dd4:	00fe06bb          	addw	a3,t3,a5
    2dd8:	00d8063b          	addw	a2,a6,a3
    2ddc:	160727af          	lr.w.aqrl	a5,(a4)
    2de0:	00d79563          	bne	a5,a3,2dea <__lock+0xca>
    2de4:	1ec725af          	sc.w.aqrl	a1,a2,(a4)
    2de8:	f9f5                	bnez	a1,2ddc <__lock+0xbc>
    2dea:	2781                	sext.w	a5,a5
    2dec:	fcf692e3          	bne	a3,a5,2db0 <__lock+0x90>
    2df0:	8082                	ret

0000000000002df2 <__unlock>:
__unlock():
    2df2:	4118                	lw	a4,0(a0)
    2df4:	87aa                	mv	a5,a0
    2df6:	04075a63          	bgez	a4,2e4a <__unlock+0x58>
    2dfa:	800005b7          	lui	a1,0x80000
    2dfe:	fff5c593          	not	a1,a1
    2e02:	4398                	lw	a4,0(a5)
    2e04:	0007069b          	sext.w	a3,a4
    2e08:	9f2d                	addw	a4,a4,a1
    2e0a:	1607a62f          	lr.w.aqrl	a2,(a5)
    2e0e:	00d61563          	bne	a2,a3,2e18 <__unlock+0x26>
    2e12:	1ee7a52f          	sc.w.aqrl	a0,a4,(a5)
    2e16:	f975                	bnez	a0,2e0a <__unlock+0x18>
    2e18:	0006071b          	sext.w	a4,a2
    2e1c:	fee693e3          	bne	a3,a4,2e02 <__unlock+0x10>
    2e20:	80000737          	lui	a4,0x80000
    2e24:	0705                	addi	a4,a4,1
    2e26:	02e68263          	beq	a3,a4,2e4a <__unlock+0x58>
    2e2a:	06200893          	li	a7,98
    2e2e:	853e                	mv	a0,a5
    2e30:	08100593          	li	a1,129
    2e34:	4605                	li	a2,1
    2e36:	00000073          	ecall
    2e3a:	fda00713          	li	a4,-38
    2e3e:	00e51663          	bne	a0,a4,2e4a <__unlock+0x58>
    2e42:	853e                	mv	a0,a5
    2e44:	4585                	li	a1,1
    2e46:	00000073          	ecall
    2e4a:	8082                	ret

0000000000002e4c <__addtf3>:
__addtf3():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:36
    2e4c:	7179                	addi	sp,sp,-48
    2e4e:	f406                	sd	ra,40(sp)
    2e50:	f022                	sd	s0,32(sp)
    2e52:	ec26                	sd	s1,24(sp)
    2e54:	e84a                	sd	s2,16(sp)
    2e56:	e44e                	sd	s3,8(sp)
    2e58:	e052                	sd	s4,0(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:43
    2e5a:	002029f3          	frrm	s3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44
    2e5e:	58fd                	li	a7,-1
    2e60:	0108d793          	srli	a5,a7,0x10
    2e64:	00f5f833          	and	a6,a1,a5
    2e68:	62a1                	lui	t0,0x8
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    2e6a:	8ff5                	and	a5,a5,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44
    2e6c:	fff28f13          	addi	t5,t0,-1 # 7fff <__BSS_END__+0x7df>
    2e70:	0305d713          	srli	a4,a1,0x30
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    2e74:	0306d313          	srli	t1,a3,0x30
    2e78:	03d65e13          	srli	t3,a2,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44
    2e7c:	080e                	slli	a6,a6,0x3
    2e7e:	03d55e93          	srli	t4,a0,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    2e82:	078e                	slli	a5,a5,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44
    2e84:	03f5d413          	srli	s0,a1,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    2e88:	92fd                	srli	a3,a3,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44
    2e8a:	01e774b3          	and	s1,a4,t5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:43
    2e8e:	2981                	sext.w	s3,s3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    2e90:	00fe6733          	or	a4,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44
    2e94:	010ee833          	or	a6,t4,a6
    2e98:	00351f93          	slli	t6,a0,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    2e9c:	01e37333          	and	t1,t1,t5
    2ea0:	00361e13          	slli	t3,a2,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    2ea4:	1cd40e63          	beq	s0,a3,3080 <__addtf3+0x234>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 8)
    2ea8:	40648ebb          	subw	t4,s1,t1
    2eac:	000e879b          	sext.w	a5,t4
    2eb0:	16f05d63          	blez	a5,302a <__addtf3+0x1de>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 200)
    2eb4:	22030063          	beqz	t1,30d4 <__addtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 203)
    2eb8:	23e48863          	beq	s1,t5,30e8 <__addtf3+0x29c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 229)
    2ebc:	4685                	li	a3,1
    2ebe:	16ce                	slli	a3,a3,0x33
    2ec0:	8f55                	or	a4,a4,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 238)
    2ec2:	07400693          	li	a3,116
    2ec6:	3ef6c763          	blt	a3,a5,32b4 <__addtf3+0x468>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 239)
    2eca:	03f00693          	li	a3,63
    2ece:	56f6ca63          	blt	a3,a5,3442 <__addtf3+0x5f6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 241)
    2ed2:	04000693          	li	a3,64
    2ed6:	9e9d                	subw	a3,a3,a5
    2ed8:	00d71933          	sll	s2,a4,a3
    2edc:	00fe5633          	srl	a2,t3,a5
    2ee0:	00de16b3          	sll	a3,t3,a3
    2ee4:	00c96933          	or	s2,s2,a2
    2ee8:	00d036b3          	snez	a3,a3
    2eec:	00f75733          	srl	a4,a4,a5
    2ef0:	00d96933          	or	s2,s2,a3
    2ef4:	40e80833          	sub	a6,a6,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 255)
    2ef8:	412f8933          	sub	s2,t6,s2
    2efc:	012fbfb3          	sltu	t6,t6,s2
    2f00:	41f80833          	sub	a6,a6,t6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 313)
    2f04:	03385793          	srli	a5,a6,0x33
    2f08:	8b85                	andi	a5,a5,1
    2f0a:	2c078563          	beqz	a5,31d4 <__addtf3+0x388>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 373)
    2f0e:	00d81a13          	slli	s4,a6,0xd
    2f12:	00da5a13          	srli	s4,s4,0xd
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 375)
    2f16:	2e0a0f63          	beqz	s4,3214 <__addtf3+0x3c8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 381)
    2f1a:	8552                	mv	a0,s4
    2f1c:	5bb010ef          	jal	ra,4cd6 <__clzdi2>
    2f20:	3551                	addiw	a0,a0,-12
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 398)
    2f22:	04000813          	li	a6,64
    2f26:	40a8083b          	subw	a6,a6,a0
    2f2a:	00aa1a33          	sll	s4,s4,a0
    2f2e:	01095833          	srl	a6,s2,a6
    2f32:	01486833          	or	a6,a6,s4
    2f36:	00a91a33          	sll	s4,s2,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 402)
    2f3a:	28954663          	blt	a0,s1,31c6 <__addtf3+0x37a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 403)
    2f3e:	9d05                	subw	a0,a0,s1
    2f40:	0015071b          	addiw	a4,a0,1
    2f44:	03f00793          	li	a5,63
    2f48:	4ce7c763          	blt	a5,a4,3416 <__addtf3+0x5ca>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 405)
    2f4c:	04000793          	li	a5,64
    2f50:	9f99                	subw	a5,a5,a4
    2f52:	00f81933          	sll	s2,a6,a5
    2f56:	00ea56b3          	srl	a3,s4,a4
    2f5a:	00fa17b3          	sll	a5,s4,a5
    2f5e:	00d96933          	or	s2,s2,a3
    2f62:	00f037b3          	snez	a5,a5
    2f66:	00f96933          	or	s2,s2,a5
    2f6a:	00e85833          	srl	a6,a6,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 405)
    2f6e:	010965b3          	or	a1,s2,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 1)
    2f72:	1e058063          	beqz	a1,3152 <__addtf3+0x306>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    2f76:	00797593          	andi	a1,s2,7
    2f7a:	00191693          	slli	a3,s2,0x1
    2f7e:	03f95793          	srli	a5,s2,0x3f
    2f82:	00181713          	slli	a4,a6,0x1
    2f86:	0076f613          	andi	a2,a3,7
    2f8a:	973e                	add	a4,a4,a5
    2f8c:	4781                	li	a5,0
    2f8e:	ca11                	beqz	a2,2fa2 <__addtf3+0x156>
    2f90:	4789                	li	a5,2
    2f92:	6af98063          	beq	s3,a5,3632 <__addtf3+0x7e6>
    2f96:	478d                	li	a5,3
    2f98:	68f98263          	beq	s3,a5,361c <__addtf3+0x7d0>
    2f9c:	4785                	li	a5,1
    2f9e:	66098263          	beqz	s3,3602 <__addtf3+0x7b6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 23)
    2fa2:	4685                	li	a3,1
    2fa4:	03469613          	slli	a2,a3,0x34
    2fa8:	8f71                	and	a4,a4,a2
    2faa:	00173613          	seqz	a2,a4
    2fae:	4481                	li	s1,0
    2fb0:	6a058563          	beqz	a1,365a <__addtf3+0x80e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 37)
    2fb4:	4789                	li	a5,2
    2fb6:	2cf98963          	beq	s3,a5,3288 <__addtf3+0x43c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    2fba:	478d                	li	a5,3
    2fbc:	2ef98263          	beq	s3,a5,32a0 <__addtf3+0x454>
    2fc0:	4785                	li	a5,1
    2fc2:	1e098463          	beqz	s3,31aa <__addtf3+0x35e>
    2fc6:	c219                	beqz	a2,2fcc <__addtf3+0x180>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 60)
    2fc8:	0027e793          	ori	a5,a5,2
    2fcc:	4685                	li	a3,1
    2fce:	16ce                	slli	a3,a3,0x33
    2fd0:	00d876b3          	and	a3,a6,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 62)
    2fd4:	1a068f63          	beqz	a3,3192 <__addtf3+0x346>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 63)
    2fd8:	66a1                	lui	a3,0x8
    2fda:	00148713          	addi	a4,s1,1
    2fde:	fff68613          	addi	a2,a3,-1 # 7fff <__BSS_END__+0x7df>
    2fe2:	20c70863          	beq	a4,a2,31f2 <__addtf3+0x3a6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    2fe6:	56fd                	li	a3,-1
    2fe8:	03369593          	slli	a1,a3,0x33
    2fec:	15fd                	addi	a1,a1,-1
    2fee:	00b875b3          	and	a1,a6,a1
    2ff2:	8f71                	and	a4,a4,a2
    2ff4:	03d59513          	slli	a0,a1,0x3d
    2ff8:	00395913          	srli	s2,s2,0x3
    2ffc:	818d                	srli	a1,a1,0x3
    2ffe:	82c1                	srli	a3,a3,0x10
    3000:	1742                	slli	a4,a4,0x30
    3002:	01256533          	or	a0,a0,s2
    3006:	8df5                	and	a1,a1,a3
    3008:	9341                	srli	a4,a4,0x30
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 90)
    300a:	043e                	slli	s0,s0,0xf
    300c:	05c2                	slli	a1,a1,0x10
    300e:	8c59                	or	s0,s0,a4
    3010:	1442                	slli	s0,s0,0x30
    3012:	81c1                	srli	a1,a1,0x10
    3014:	8dc1                	or	a1,a1,s0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:48 (discriminator 90)
    3016:	2c079163          	bnez	a5,32d8 <__addtf3+0x48c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:51
    301a:	70a2                	ld	ra,40(sp)
    301c:	7402                	ld	s0,32(sp)
    301e:	64e2                	ld	s1,24(sp)
    3020:	6942                	ld	s2,16(sp)
    3022:	69a2                	ld	s3,8(sp)
    3024:	6a02                	ld	s4,0(sp)
    3026:	6145                	addi	sp,sp,48
    3028:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 201)
    302a:	cbe9                	beqz	a5,30fc <__addtf3+0x2b0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 257)
    302c:	32049f63          	bnez	s1,336a <__addtf3+0x51e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 259)
    3030:	01f867b3          	or	a5,a6,t6
    3034:	50078563          	beqz	a5,353e <__addtf3+0x6f2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 262)
    3038:	fffece93          	not	t4,t4
    303c:	2e81                	sext.w	t4,t4
    303e:	6a0e8763          	beqz	t4,36ec <__addtf3+0x8a0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 272)
    3042:	33e31c63          	bne	t1,t5,337a <__addtf3+0x52e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 287)
    3046:	01c76e33          	or	t3,a4,t3
    304a:	6a0e0d63          	beqz	t3,3704 <__addtf3+0x8b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 289)
    304e:	03275793          	srli	a5,a4,0x32
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 289)
    3052:	0038d513          	srli	a0,a7,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 289)
    3056:	0017c793          	xori	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 289)
    305a:	03d71593          	slli	a1,a4,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 289)
    305e:	8b85                	andi	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 289)
    3060:	8e69                	and	a2,a2,a0
    3062:	00b66533          	or	a0,a2,a1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 289)
    3066:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 289)
    3068:	00375593          	srli	a1,a4,0x3
    306c:	8436                	mv	s0,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 80)
    306e:	8d4d                	or	a0,a0,a1
    3070:	c149                	beqz	a0,30f2 <__addtf3+0x2a6>
    3072:	6721                	lui	a4,0x8
    3074:	4585                	li	a1,1
    3076:	4401                	li	s0,0
    3078:	177d                	addi	a4,a4,-1
    307a:	15be                	slli	a1,a1,0x2f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    307c:	4501                	li	a0,0
    307e:	b771                	j	300a <__addtf3+0x1be>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 7)
    3080:	406486bb          	subw	a3,s1,t1
    3084:	0006879b          	sext.w	a5,a3
    3088:	1af05463          	blez	a5,3230 <__addtf3+0x3e4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 9)
    308c:	0c030c63          	beqz	t1,3164 <__addtf3+0x318>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 12)
    3090:	5de48f63          	beq	s1,t5,366e <__addtf3+0x822>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 38)
    3094:	4685                	li	a3,1
    3096:	16ce                	slli	a3,a3,0x33
    3098:	8f55                	or	a4,a4,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 47)
    309a:	07400693          	li	a3,116
    309e:	32f6c663          	blt	a3,a5,33ca <__addtf3+0x57e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 48)
    30a2:	03f00693          	li	a3,63
    30a6:	44f6d763          	bge	a3,a5,34f4 <__addtf3+0x6a8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 51)
    30aa:	fc07869b          	addiw	a3,a5,-64
    30ae:	04000613          	li	a2,64
    30b2:	00d756b3          	srl	a3,a4,a3
    30b6:	00c78a63          	beq	a5,a2,30ca <__addtf3+0x27e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 58)
    30ba:	08000613          	li	a2,128
    30be:	40f607bb          	subw	a5,a2,a5
    30c2:	00f717b3          	sll	a5,a4,a5
    30c6:	00fe6e33          	or	t3,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 61)
    30ca:	01c03933          	snez	s2,t3
    30ce:	00d96933          	or	s2,s2,a3
    30d2:	a601                	j	33d2 <__addtf3+0x586>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 202)
    30d4:	01c767b3          	or	a5,a4,t3
    30d8:	2c078e63          	beqz	a5,33b4 <__addtf3+0x568>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 205)
    30dc:	fffe879b          	addiw	a5,t4,-1
    30e0:	4e078363          	beqz	a5,35c6 <__addtf3+0x77a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 215)
    30e4:	dde49fe3          	bne	s1,t5,2ec2 <__addtf3+0x76>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 230)
    30e8:	01f86fb3          	or	t6,a6,t6
    30ec:	3c0f9b63          	bnez	t6,34c2 <__addtf3+0x676>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:37
    30f0:	4781                	li	a5,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    30f2:	6721                	lui	a4,0x8
    30f4:	177d                	addi	a4,a4,-1
    30f6:	4581                	li	a1,0
    30f8:	4501                	li	a0,0
    30fa:	bf01                	j	300a <__addtf3+0x1be>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 258)
    30fc:	00148893          	addi	a7,s1,1
    3100:	ffe28593          	addi	a1,t0,-2
    3104:	00b8f5b3          	and	a1,a7,a1
    3108:	22059a63          	bnez	a1,333c <__addtf3+0x4f0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 314)
    310c:	01f868b3          	or	a7,a6,t6
    3110:	01c765b3          	or	a1,a4,t3
    3114:	1a049563          	bnez	s1,32be <__addtf3+0x472>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 316)
    3118:	4c088063          	beqz	a7,35d8 <__addtf3+0x78c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 319)
    311c:	4c058463          	beqz	a1,35e4 <__addtf3+0x798>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 326)
    3120:	41cf8533          	sub	a0,t6,t3
    3124:	00afb5b3          	sltu	a1,t6,a0
    3128:	40e80633          	sub	a2,a6,a4
    312c:	8e0d                	sub	a2,a2,a1
    312e:	03365593          	srli	a1,a2,0x33
    3132:	8985                	andi	a1,a1,1
    3134:	68058f63          	beqz	a1,37d2 <__addtf3+0x986>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 328)
    3138:	41fe0933          	sub	s2,t3,t6
    313c:	41070733          	sub	a4,a4,a6
    3140:	012e3e33          	sltu	t3,t3,s2
    3144:	41c70833          	sub	a6,a4,t3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 328)
    3148:	010965b3          	or	a1,s2,a6
    314c:	8436                	mv	s0,a3
    314e:	e20594e3          	bnez	a1,2f76 <__addtf3+0x12a>
    3152:	4501                	li	a0,0
    3154:	4481                	li	s1,0
    3156:	4781                	li	a5,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    3158:	05c2                	slli	a1,a1,0x10
    315a:	03149713          	slli	a4,s1,0x31
    315e:	81c1                	srli	a1,a1,0x10
    3160:	9345                	srli	a4,a4,0x31
    3162:	b565                	j	300a <__addtf3+0x1be>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 11)
    3164:	01c767b3          	or	a5,a4,t3
    3168:	48078063          	beqz	a5,35e8 <__addtf3+0x79c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 14)
    316c:	fff6879b          	addiw	a5,a3,-1
    3170:	3e078863          	beqz	a5,3560 <__addtf3+0x714>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 24)
    3174:	f3e493e3          	bne	s1,t5,309a <__addtf3+0x24e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 28)
    3178:	01f867b3          	or	a5,a6,t6
    317c:	dbb5                	beqz	a5,30f0 <__addtf3+0x2a4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 208)
    317e:	03285793          	srli	a5,a6,0x32
    3182:	0017c793          	xori	a5,a5,1
    3186:	8b85                	andi	a5,a5,1
    3188:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    318a:	6721                	lui	a4,0x8
    318c:	897e                	mv	s2,t6
    318e:	fff70493          	addi	s1,a4,-1 # 7fff <__BSS_END__+0x7df>
    3192:	6721                	lui	a4,0x8
    3194:	00395513          	srli	a0,s2,0x3
    3198:	03d81693          	slli	a3,a6,0x3d
    319c:	177d                	addi	a4,a4,-1
    319e:	8d55                	or	a0,a0,a3
    31a0:	00385593          	srli	a1,a6,0x3
    31a4:	ece485e3          	beq	s1,a4,306e <__addtf3+0x222>
    31a8:	bf45                	j	3158 <__addtf3+0x30c>
    31aa:	00f97713          	andi	a4,s2,15
    31ae:	4691                	li	a3,4
    31b0:	e0d70be3          	beq	a4,a3,2fc6 <__addtf3+0x17a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 44)
    31b4:	00490713          	addi	a4,s2,4
    31b8:	01273933          	sltu	s2,a4,s2
    31bc:	984a                	add	a6,a6,s2
    31be:	893a                	mv	s2,a4
    31c0:	e00614e3          	bnez	a2,2fc8 <__addtf3+0x17c>
    31c4:	b521                	j	2fcc <__addtf3+0x180>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 404)
    31c6:	57fd                	li	a5,-1
    31c8:	17ce                	slli	a5,a5,0x33
    31ca:	17fd                	addi	a5,a5,-1
    31cc:	8c89                	sub	s1,s1,a0
    31ce:	00f87833          	and	a6,a6,a5
    31d2:	8952                	mv	s2,s4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 421)
    31d4:	010965b3          	or	a1,s2,a6
    31d8:	00797793          	andi	a5,s2,7
    31dc:	d8048be3          	beqz	s1,2f72 <__addtf3+0x126>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    31e0:	4601                	li	a2,0
    31e2:	dc0799e3          	bnez	a5,2fb4 <__addtf3+0x168>
    31e6:	4685                	li	a3,1
    31e8:	16ce                	slli	a3,a3,0x33
    31ea:	00d876b3          	and	a3,a6,a3
    31ee:	4781                	li	a5,0
    31f0:	b3d5                	j	2fd4 <__addtf3+0x188>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 65)
    31f2:	0a098e63          	beqz	s3,32ae <__addtf3+0x462>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 68)
    31f6:	470d                	li	a4,3
    31f8:	2ee98463          	beq	s3,a4,34e0 <__addtf3+0x694>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 72)
    31fc:	4709                	li	a4,2
    31fe:	0ae98663          	beq	s3,a4,32aa <__addtf3+0x45e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    3202:	557d                	li	a0,-1
    3204:	6721                	lui	a4,0x8
    3206:	0057e793          	ori	a5,a5,5
    320a:	00355593          	srli	a1,a0,0x3
    320e:	ffe70493          	addi	s1,a4,-2 # 7ffe <__BSS_END__+0x7de>
    3212:	b799                	j	3158 <__addtf3+0x30c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 388)
    3214:	854a                	mv	a0,s2
    3216:	2c1010ef          	jal	ra,4cd6 <__clzdi2>
    321a:	ff45081b          	addiw	a6,a0,-12
    321e:	03f00793          	li	a5,63
    3222:	0345051b          	addiw	a0,a0,52
    3226:	01091833          	sll	a6,s2,a6
    322a:	d0a7c8e3          	blt	a5,a0,2f3a <__addtf3+0xee>
    322e:	b9d5                	j	2f22 <__addtf3+0xd6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 10)
    3230:	cfd5                	beqz	a5,32ec <__addtf3+0x4a0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 66)
    3232:	24048a63          	beqz	s1,3486 <__addtf3+0x63a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 69)
    3236:	5be30863          	beq	t1,t5,37e6 <__addtf3+0x99a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 95)
    323a:	4785                	li	a5,1
    323c:	17ce                	slli	a5,a5,0x33
    323e:	40d006bb          	negw	a3,a3
    3242:	00f86833          	or	a6,a6,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 104)
    3246:	07400793          	li	a5,116
    324a:	44d7c663          	blt	a5,a3,3696 <__addtf3+0x84a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 105)
    324e:	03f00793          	li	a5,63
    3252:	4cd7c963          	blt	a5,a3,3724 <__addtf3+0x8d8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 107)
    3256:	04000793          	li	a5,64
    325a:	9f95                	subw	a5,a5,a3
    325c:	00f81933          	sll	s2,a6,a5
    3260:	00dfd633          	srl	a2,t6,a3
    3264:	00ff97b3          	sll	a5,t6,a5
    3268:	00c96933          	or	s2,s2,a2
    326c:	00f037b3          	snez	a5,a5
    3270:	00d856b3          	srl	a3,a6,a3
    3274:	00f96933          	or	s2,s2,a5
    3278:	9736                	add	a4,a4,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 121)
    327a:	9972                	add	s2,s2,t3
    327c:	01c93e33          	sltu	t3,s2,t3
    3280:	00ee0833          	add	a6,t3,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45 (discriminator 121)
    3284:	849a                	mv	s1,t1
    3286:	aa91                	j	33da <__addtf3+0x58e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 42)
    3288:	4785                	li	a5,1
    328a:	d2040ee3          	beqz	s0,2fc6 <__addtf3+0x17a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 55)
    328e:	00890713          	addi	a4,s2,8
    3292:	01273933          	sltu	s2,a4,s2
    3296:	984a                	add	a6,a6,s2
    3298:	893a                	mv	s2,a4
    329a:	d20617e3          	bnez	a2,2fc8 <__addtf3+0x17c>
    329e:	b33d                	j	2fcc <__addtf3+0x180>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 43)
    32a0:	4785                	li	a5,1
    32a2:	d475                	beqz	s0,328e <__addtf3+0x442>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    32a4:	d20612e3          	bnez	a2,2fc8 <__addtf3+0x17c>
    32a8:	b315                	j	2fcc <__addtf3+0x180>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 73)
    32aa:	22040d63          	beqz	s0,34e4 <__addtf3+0x698>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    32ae:	0057e793          	ori	a5,a5,5
    32b2:	b581                	j	30f2 <__addtf3+0x2a6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 240)
    32b4:	01c76933          	or	s2,a4,t3
    32b8:	01203933          	snez	s2,s2
    32bc:	b935                	j	2ef8 <__addtf3+0xac>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 317)
    32be:	2be48963          	beq	s1,t5,3570 <__addtf3+0x724>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 341)
    32c2:	2de30f63          	beq	t1,t5,35a0 <__addtf3+0x754>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 348)
    32c6:	2a089f63          	bnez	a7,3584 <__addtf3+0x738>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 349)
    32ca:	2e059463          	bnez	a1,35b2 <__addtf3+0x766>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    32ce:	0ffff5b7          	lui	a1,0xffff
    32d2:	4501                	li	a0,0
    32d4:	158e                	slli	a1,a1,0x23
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    32d6:	47c1                	li	a5,16
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:48 (discriminator 1)
    32d8:	0017a073          	csrs	fflags,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:51 (discriminator 1)
    32dc:	70a2                	ld	ra,40(sp)
    32de:	7402                	ld	s0,32(sp)
    32e0:	64e2                	ld	s1,24(sp)
    32e2:	6942                	ld	s2,16(sp)
    32e4:	69a2                	ld	s3,8(sp)
    32e6:	6a02                	ld	s4,0(sp)
    32e8:	6145                	addi	sp,sp,48
    32ea:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 67)
    32ec:	00148693          	addi	a3,s1,1
    32f0:	ffe28593          	addi	a1,t0,-2
    32f4:	00b6feb3          	and	t4,a3,a1
    32f8:	220e9163          	bnez	t4,351a <__addtf3+0x6ce>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 123)
    32fc:	01f866b3          	or	a3,a6,t6
    3300:	3c049563          	bnez	s1,36ca <__addtf3+0x87e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 125)
    3304:	01c765b3          	or	a1,a4,t3
    3308:	40068b63          	beqz	a3,371e <__addtf3+0x8d2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 128)
    330c:	2c058c63          	beqz	a1,35e4 <__addtf3+0x798>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 134)
    3310:	01cf8933          	add	s2,t6,t3
    3314:	9742                	add	a4,a4,a6
    3316:	01f93fb3          	sltu	t6,s2,t6
    331a:	01f70833          	add	a6,a4,t6
    331e:	03385793          	srli	a5,a6,0x33
    3322:	8b85                	andi	a5,a5,1
    3324:	c40785e3          	beqz	a5,2f6e <__addtf3+0x122>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 136)
    3328:	03389513          	slli	a0,a7,0x33
    332c:	fff50793          	addi	a5,a0,-1
    3330:	00f87833          	and	a6,a6,a5
    3334:	4485                	li	s1,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 136)
    3336:	00797793          	andi	a5,s2,7
    333a:	b55d                	j	31e0 <__addtf3+0x394>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 315)
    333c:	41cf8933          	sub	s2,t6,t3
    3340:	012fb633          	sltu	a2,t6,s2
    3344:	40e80a33          	sub	s4,a6,a4
    3348:	40ca0a33          	sub	s4,s4,a2
    334c:	033a5613          	srli	a2,s4,0x33
    3350:	8a05                	andi	a2,a2,1
    3352:	1e061d63          	bnez	a2,354c <__addtf3+0x700>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 367)
    3356:	014965b3          	or	a1,s2,s4
    335a:	ba059ee3          	bnez	a1,2f16 <__addtf3+0xca>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 369)
    335e:	19f9                	addi	s3,s3,-2
    3360:	0019b413          	seqz	s0,s3
    3364:	4501                	li	a0,0
    3366:	4481                	li	s1,0
    3368:	bbc5                	j	3158 <__addtf3+0x30c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 260)
    336a:	cde30ee3          	beq	t1,t5,3046 <__addtf3+0x1fa>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 286)
    336e:	4785                	li	a5,1
    3370:	17ce                	slli	a5,a5,0x33
    3372:	41d00ebb          	negw	t4,t4
    3376:	00f86833          	or	a6,a6,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 295)
    337a:	07400793          	li	a5,116
    337e:	0fd7c763          	blt	a5,t4,346c <__addtf3+0x620>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 296)
    3382:	03f00793          	li	a5,63
    3386:	31d7cd63          	blt	a5,t4,36a0 <__addtf3+0x854>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 298)
    338a:	04000793          	li	a5,64
    338e:	41d787bb          	subw	a5,a5,t4
    3392:	00f81933          	sll	s2,a6,a5
    3396:	01dfd633          	srl	a2,t6,t4
    339a:	00ff97b3          	sll	a5,t6,a5
    339e:	00c96933          	or	s2,s2,a2
    33a2:	00f037b3          	snez	a5,a5
    33a6:	01d85eb3          	srl	t4,a6,t4
    33aa:	00f96933          	or	s2,s2,a5
    33ae:	41d70733          	sub	a4,a4,t4
    33b2:	a0c9                	j	3474 <__addtf3+0x628>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44 (discriminator 204)
    33b4:	897e                	mv	s2,t6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 204)
    33b6:	e1e49fe3          	bne	s1,t5,31d4 <__addtf3+0x388>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 206)
    33ba:	01f867b3          	or	a5,a6,t6
    33be:	dc0790e3          	bnez	a5,317e <__addtf3+0x332>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    33c2:	4501                	li	a0,0
    33c4:	4581                	li	a1,0
    33c6:	4781                	li	a5,0
    33c8:	b15d                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 49)
    33ca:	01c76933          	or	s2,a4,t3
    33ce:	01203933          	snez	s2,s2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 64)
    33d2:	997e                	add	s2,s2,t6
    33d4:	01f93fb3          	sltu	t6,s2,t6
    33d8:	987e                	add	a6,a6,t6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 122)
    33da:	03385793          	srli	a5,a6,0x33
    33de:	8b85                	andi	a5,a5,1
    33e0:	de078ae3          	beqz	a5,31d4 <__addtf3+0x388>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 182)
    33e4:	6721                	lui	a4,0x8
    33e6:	0485                	addi	s1,s1,1
    33e8:	fff70793          	addi	a5,a4,-1 # 7fff <__BSS_END__+0x7df>
    33ec:	24f48763          	beq	s1,a5,363a <__addtf3+0x7ee>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    33f0:	577d                	li	a4,-1
    33f2:	174e                	slli	a4,a4,0x33
    33f4:	177d                	addi	a4,a4,-1
    33f6:	00e87733          	and	a4,a6,a4
    33fa:	00195793          	srli	a5,s2,0x1
    33fe:	00197913          	andi	s2,s2,1
    3402:	0127e7b3          	or	a5,a5,s2
    3406:	03f71913          	slli	s2,a4,0x3f
    340a:	00f96933          	or	s2,s2,a5
    340e:	00175813          	srli	a6,a4,0x1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    3412:	8b9d                	andi	a5,a5,7
    3414:	b3f1                	j	31e0 <__addtf3+0x394>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 406)
    3416:	fc15051b          	addiw	a0,a0,-63
    341a:	04000793          	li	a5,64
    341e:	00a855b3          	srl	a1,a6,a0
    3422:	00f70963          	beq	a4,a5,3434 <__addtf3+0x5e8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 414)
    3426:	08000793          	li	a5,128
    342a:	9f99                	subw	a5,a5,a4
    342c:	00f81833          	sll	a6,a6,a5
    3430:	010a6a33          	or	s4,s4,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 417)
    3434:	01403a33          	snez	s4,s4
    3438:	00ba65b3          	or	a1,s4,a1
    343c:	892e                	mv	s2,a1
    343e:	4801                	li	a6,0
    3440:	be0d                	j	2f72 <__addtf3+0x126>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 242)
    3442:	fc07869b          	addiw	a3,a5,-64
    3446:	04000613          	li	a2,64
    344a:	00d756b3          	srl	a3,a4,a3
    344e:	00c78a63          	beq	a5,a2,3462 <__addtf3+0x616>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 249)
    3452:	08000613          	li	a2,128
    3456:	40f607bb          	subw	a5,a2,a5
    345a:	00f717b3          	sll	a5,a4,a5
    345e:	00fe6e33          	or	t3,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 252)
    3462:	01c03933          	snez	s2,t3
    3466:	00d96933          	or	s2,s2,a3
    346a:	b479                	j	2ef8 <__addtf3+0xac>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 297)
    346c:	01f86933          	or	s2,a6,t6
    3470:	01203933          	snez	s2,s2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 312)
    3474:	412e0933          	sub	s2,t3,s2
    3478:	012e3e33          	sltu	t3,t3,s2
    347c:	41c70833          	sub	a6,a4,t3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45 (discriminator 312)
    3480:	849a                	mv	s1,t1
    3482:	8436                	mv	s0,a3
    3484:	b441                	j	2f04 <__addtf3+0xb8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 68)
    3486:	01f867b3          	or	a5,a6,t6
    348a:	26078f63          	beqz	a5,3708 <__addtf3+0x8bc>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 71)
    348e:	fff6c693          	not	a3,a3
    3492:	2681                	sext.w	a3,a3
    3494:	2e068963          	beqz	a3,3786 <__addtf3+0x93a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 81)
    3498:	dbe317e3          	bne	t1,t5,3246 <__addtf3+0x3fa>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 85)
    349c:	01c76e33          	or	t3,a4,t3
    34a0:	c40e08e3          	beqz	t3,30f0 <__addtf3+0x2a4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 87)
    34a4:	03275793          	srli	a5,a4,0x32
    34a8:	0017c793          	xori	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 87)
    34ac:	0038d693          	srli	a3,a7,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 87)
    34b0:	8b85                	andi	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 87)
    34b2:	03d71513          	slli	a0,a4,0x3d
    34b6:	8ef1                	and	a3,a3,a2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 87)
    34b8:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 87)
    34ba:	8d55                	or	a0,a0,a3
    34bc:	00375593          	srli	a1,a4,0x3
    34c0:	b67d                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 232)
    34c2:	03285793          	srli	a5,a6,0x32
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 232)
    34c6:	0038d713          	srli	a4,a7,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 232)
    34ca:	0017c793          	xori	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 232)
    34ce:	8d79                	and	a0,a0,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 232)
    34d0:	8b85                	andi	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 232)
    34d2:	03d81713          	slli	a4,a6,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 232)
    34d6:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 232)
    34d8:	8d59                	or	a0,a0,a4
    34da:	00385593          	srli	a1,a6,0x3
    34de:	be41                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 69)
    34e0:	dc0407e3          	beqz	s0,32ae <__addtf3+0x462>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    34e4:	557d                	li	a0,-1
    34e6:	0057e793          	ori	a5,a5,5
    34ea:	00355593          	srli	a1,a0,0x3
    34ee:	ffe68493          	addi	s1,a3,-2
    34f2:	b19d                	j	3158 <__addtf3+0x30c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 50)
    34f4:	04000693          	li	a3,64
    34f8:	9e9d                	subw	a3,a3,a5
    34fa:	00d71933          	sll	s2,a4,a3
    34fe:	00fe5633          	srl	a2,t3,a5
    3502:	00de16b3          	sll	a3,t3,a3
    3506:	00c96933          	or	s2,s2,a2
    350a:	00d036b3          	snez	a3,a3
    350e:	00f75733          	srl	a4,a4,a5
    3512:	00d96933          	or	s2,s2,a3
    3516:	983a                	add	a6,a6,a4
    3518:	bd6d                	j	33d2 <__addtf3+0x586>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 124)
    351a:	23e68a63          	beq	a3,t5,374e <__addtf3+0x902>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    351e:	01cf87b3          	add	a5,t6,t3
    3522:	9742                	add	a4,a4,a6
    3524:	01f7bfb3          	sltu	t6,a5,t6
    3528:	977e                	add	a4,a4,t6
    352a:	8385                	srli	a5,a5,0x1
    352c:	03f71913          	slli	s2,a4,0x3f
    3530:	00f96933          	or	s2,s2,a5
    3534:	00175813          	srli	a6,a4,0x1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    3538:	8b9d                	andi	a5,a5,7
    353a:	84b6                	mv	s1,a3
    353c:	b155                	j	31e0 <__addtf3+0x394>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 261)
    353e:	23e30763          	beq	t1,t5,376c <__addtf3+0x920>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    3542:	883a                	mv	a6,a4
    3544:	8972                	mv	s2,t3
    3546:	849a                	mv	s1,t1
    3548:	8436                	mv	s0,a3
    354a:	b169                	j	31d4 <__addtf3+0x388>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 366)
    354c:	41fe0933          	sub	s2,t3,t6
    3550:	41070a33          	sub	s4,a4,a6
    3554:	012e3e33          	sltu	t3,t3,s2
    3558:	41ca0a33          	sub	s4,s4,t3
    355c:	8436                	mv	s0,a3
    355e:	ba65                	j	2f16 <__addtf3+0xca>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 23)
    3560:	01cf8933          	add	s2,t6,t3
    3564:	9742                	add	a4,a4,a6
    3566:	01f93fb3          	sltu	t6,s2,t6
    356a:	01f70833          	add	a6,a4,t6
    356e:	b5b5                	j	33da <__addtf3+0x58e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 335)
    3570:	02088663          	beqz	a7,359c <__addtf3+0x750>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 337)
    3574:	03285793          	srli	a5,a6,0x32
    3578:	0017c793          	xori	a5,a5,1
    357c:	8b85                	andi	a5,a5,1
    357e:	0792                	slli	a5,a5,0x4
    3580:	02930063          	beq	t1,s1,35a0 <__addtf3+0x754>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 350)
    3584:	ae0597e3          	bnez	a1,3072 <__addtf3+0x226>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    3588:	00351693          	slli	a3,a0,0x3
    358c:	03d81713          	slli	a4,a6,0x3d
    3590:	828d                	srli	a3,a3,0x3
    3592:	00d76533          	or	a0,a4,a3
    3596:	00385593          	srli	a1,a6,0x3
    359a:	bcd1                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    359c:	d29317e3          	bne	t1,s1,32ca <__addtf3+0x47e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 342)
    35a0:	d20583e3          	beqz	a1,32c6 <__addtf3+0x47a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 344)
    35a4:	03275593          	srli	a1,a4,0x32
    35a8:	8985                	andi	a1,a1,1
    35aa:	e191                	bnez	a1,35ae <__addtf3+0x762>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    35ac:	47c1                	li	a5,16
    35ae:	ac0892e3          	bnez	a7,3072 <__addtf3+0x226>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    35b2:	060e                	slli	a2,a2,0x3
    35b4:	03d71593          	slli	a1,a4,0x3d
    35b8:	820d                	srli	a2,a2,0x3
    35ba:	00b66533          	or	a0,a2,a1
    35be:	8436                	mv	s0,a3
    35c0:	00375593          	srli	a1,a4,0x3
    35c4:	b46d                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 214)
    35c6:	41cf8933          	sub	s2,t6,t3
    35ca:	40e80733          	sub	a4,a6,a4
    35ce:	012fbfb3          	sltu	t6,t6,s2
    35d2:	41f70833          	sub	a6,a4,t6
    35d6:	b23d                	j	2f04 <__addtf3+0xb8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 318)
    35d8:	12058e63          	beqz	a1,3714 <__addtf3+0x8c8>
    35dc:	4581                	li	a1,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    35de:	883a                	mv	a6,a4
    35e0:	8ff2                	mv	t6,t3
    35e2:	8436                	mv	s0,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    35e4:	897e                	mv	s2,t6
    35e6:	ba51                	j	2f7a <__addtf3+0x12e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:44 (discriminator 13)
    35e8:	897e                	mv	s2,t6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 13)
    35ea:	bfe495e3          	bne	s1,t5,31d4 <__addtf3+0x388>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 15)
    35ee:	01f867b3          	or	a5,a6,t6
    35f2:	dc0788e3          	beqz	a5,33c2 <__addtf3+0x576>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 17)
    35f6:	03285793          	srli	a5,a6,0x32
    35fa:	0017c793          	xori	a5,a5,1
    35fe:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 17)
    3600:	b669                	j	318a <__addtf3+0x33e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 16)
    3602:	00f6f613          	andi	a2,a3,15
    3606:	4511                	li	a0,4
    3608:	98a60de3          	beq	a2,a0,2fa2 <__addtf3+0x156>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 20)
    360c:	ffc6b693          	sltiu	a3,a3,-4
    3610:	0016c693          	xori	a3,a3,1
    3614:	1682                	slli	a3,a3,0x20
    3616:	9281                	srli	a3,a3,0x20
    3618:	9736                	add	a4,a4,a3
    361a:	b261                	j	2fa2 <__addtf3+0x156>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 19)
    361c:	4785                	li	a5,1
    361e:	980412e3          	bnez	s0,2fa2 <__addtf3+0x156>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 31)
    3622:	ff86b693          	sltiu	a3,a3,-8
    3626:	0016c693          	xori	a3,a3,1
    362a:	1682                	slli	a3,a3,0x20
    362c:	9281                	srli	a3,a3,0x20
    362e:	9736                	add	a4,a4,a3
    3630:	ba8d                	j	2fa2 <__addtf3+0x156>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 18)
    3632:	4785                	li	a5,1
    3634:	960407e3          	beqz	s0,2fa2 <__addtf3+0x156>
    3638:	b7ed                	j	3622 <__addtf3+0x7d6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 184)
    363a:	02098863          	beqz	s3,366a <__addtf3+0x81e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 187)
    363e:	478d                	li	a5,3
    3640:	1cf98763          	beq	s3,a5,380e <__addtf3+0x9c2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 191)
    3644:	4689                	li	a3,2
    3646:	4795                	li	a5,5
    3648:	bad99de3          	bne	s3,a3,3202 <__addtf3+0x3b6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 192)
    364c:	aa0413e3          	bnez	s0,30f2 <__addtf3+0x2a6>
    3650:	587d                	li	a6,-1
    3652:	597d                	li	s2,-1
    3654:	ffe70493          	addi	s1,a4,-2
    3658:	ba95                	j	2fcc <__addtf3+0x180>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    365a:	16ce                	slli	a3,a3,0x33
    365c:	00d876b3          	and	a3,a6,a3
    3660:	96071ae3          	bnez	a4,2fd4 <__addtf3+0x188>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 58)
    3664:	960788e3          	beqz	a5,2fd4 <__addtf3+0x188>
    3668:	b285                	j	2fc8 <__addtf3+0x17c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    366a:	4795                	li	a5,5
    366c:	b459                	j	30f2 <__addtf3+0x2a6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 39)
    366e:	01f86fb3          	or	t6,a6,t6
    3672:	a60f8fe3          	beqz	t6,30f0 <__addtf3+0x2a4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 41)
    3676:	03285793          	srli	a5,a6,0x32
    367a:	0017c793          	xori	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 41)
    367e:	0038d693          	srli	a3,a7,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 41)
    3682:	8b85                	andi	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 41)
    3684:	03d81713          	slli	a4,a6,0x3d
    3688:	8ee9                	and	a3,a3,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 41)
    368a:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 41)
    368c:	00d76533          	or	a0,a4,a3
    3690:	00385593          	srli	a1,a6,0x3
    3694:	bae9                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 106)
    3696:	01f86933          	or	s2,a6,t6
    369a:	01203933          	snez	s2,s2
    369e:	bef1                	j	327a <__addtf3+0x42e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 299)
    36a0:	fc0e879b          	addiw	a5,t4,-64
    36a4:	04000613          	li	a2,64
    36a8:	00f857b3          	srl	a5,a6,a5
    36ac:	00ce8a63          	beq	t4,a2,36c0 <__addtf3+0x874>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 306)
    36b0:	08000613          	li	a2,128
    36b4:	41d6063b          	subw	a2,a2,t4
    36b8:	00c81633          	sll	a2,a6,a2
    36bc:	00cfefb3          	or	t6,t6,a2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 309)
    36c0:	01f03933          	snez	s2,t6
    36c4:	00f96933          	or	s2,s2,a5
    36c8:	b375                	j	3474 <__addtf3+0x628>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 126)
    36ca:	0de48763          	beq	s1,t5,3798 <__addtf3+0x94c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 146)
    36ce:	17e30863          	beq	t1,t5,383e <__addtf3+0x9f2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 153)
    36d2:	c6fd                	beqz	a3,37c0 <__addtf3+0x974>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 155)
    36d4:	01c76e33          	or	t3,a4,t3
    36d8:	980e1de3          	bnez	t3,3072 <__addtf3+0x226>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    36dc:	050e                	slli	a0,a0,0x3
    36de:	810d                	srli	a0,a0,0x3
    36e0:	03d81713          	slli	a4,a6,0x3d
    36e4:	8d59                	or	a0,a0,a4
    36e6:	00385593          	srli	a1,a6,0x3
    36ea:	b251                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 271)
    36ec:	41fe0933          	sub	s2,t3,t6
    36f0:	41070733          	sub	a4,a4,a6
    36f4:	012e3e33          	sltu	t3,t3,s2
    36f8:	41c70833          	sub	a6,a4,t3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45 (discriminator 271)
    36fc:	849a                	mv	s1,t1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 271)
    36fe:	8436                	mv	s0,a3
    3700:	805ff06f          	j	2f04 <__addtf3+0xb8>
    3704:	8436                	mv	s0,a3
    3706:	b2ed                	j	30f0 <__addtf3+0x2a4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 70)
    3708:	11e30c63          	beq	t1,t5,3820 <__addtf3+0x9d4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    370c:	883a                	mv	a6,a4
    370e:	8972                	mv	s2,t3
    3710:	849a                	mv	s1,t1
    3712:	b4c9                	j	31d4 <__addtf3+0x388>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 331)
    3714:	19f9                	addi	s3,s3,-2
    3716:	0019b413          	seqz	s0,s3
    371a:	4501                	li	a0,0
    371c:	bc35                	j	3158 <__addtf3+0x30c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45
    371e:	883a                	mv	a6,a4
    3720:	8972                	mv	s2,t3
    3722:	b881                	j	2f72 <__addtf3+0x126>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 108)
    3724:	fc06879b          	addiw	a5,a3,-64
    3728:	04000613          	li	a2,64
    372c:	00f857b3          	srl	a5,a6,a5
    3730:	00c68a63          	beq	a3,a2,3744 <__addtf3+0x8f8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 115)
    3734:	08000613          	li	a2,128
    3738:	40d606bb          	subw	a3,a2,a3
    373c:	00d816b3          	sll	a3,a6,a3
    3740:	00dfefb3          	or	t6,t6,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 118)
    3744:	01f03933          	snez	s2,t6
    3748:	00f96933          	or	s2,s2,a5
    374c:	b63d                	j	327a <__addtf3+0x42e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 166)
    374e:	f0098ee3          	beqz	s3,366a <__addtf3+0x81e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 169)
    3752:	478d                	li	a5,3
    3754:	10f98263          	beq	s3,a5,3858 <__addtf3+0xa0c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 173)
    3758:	4709                	li	a4,2
    375a:	4795                	li	a5,5
    375c:	aae993e3          	bne	s3,a4,3202 <__addtf3+0x3b6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 174)
    3760:	980419e3          	bnez	s0,30f2 <__addtf3+0x2a6>
    3764:	587d                	li	a6,-1
    3766:	597d                	li	s2,-1
    3768:	84ae                	mv	s1,a1
    376a:	b08d                	j	2fcc <__addtf3+0x180>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 263)
    376c:	01c767b3          	or	a5,a4,t3
    3770:	c7e9                	beqz	a5,383a <__addtf3+0x9ee>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 265)
    3772:	03275793          	srli	a5,a4,0x32
    3776:	0017c793          	xori	a5,a5,1
    377a:	8b85                	andi	a5,a5,1
    377c:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45 (discriminator 265)
    377e:	883a                	mv	a6,a4
    3780:	8ff2                	mv	t6,t3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 265)
    3782:	8436                	mv	s0,a3
    3784:	b419                	j	318a <__addtf3+0x33e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 80)
    3786:	01cf8933          	add	s2,t6,t3
    378a:	9742                	add	a4,a4,a6
    378c:	01c93e33          	sltu	t3,s2,t3
    3790:	01c70833          	add	a6,a4,t3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45 (discriminator 80)
    3794:	849a                	mv	s1,t1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 80)
    3796:	b191                	j	33da <__addtf3+0x58e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 140)
    3798:	cacd                	beqz	a3,384a <__addtf3+0x9fe>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 142)
    379a:	03285793          	srli	a5,a6,0x32
    379e:	0017c793          	xori	a5,a5,1
    37a2:	8b85                	andi	a5,a5,1
    37a4:	0792                	slli	a5,a5,0x4
    37a6:	f29317e3          	bne	t1,s1,36d4 <__addtf3+0x888>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    37aa:	01c76e33          	or	t3,a4,t3
    37ae:	f20e07e3          	beqz	t3,36dc <__addtf3+0x890>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 149)
    37b2:	03275593          	srli	a1,a4,0x32
    37b6:	8985                	andi	a1,a1,1
    37b8:	e191                	bnez	a1,37bc <__addtf3+0x970>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    37ba:	47c1                	li	a5,16
    37bc:	8a069be3          	bnez	a3,3072 <__addtf3+0x226>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    37c0:	060e                	slli	a2,a2,0x3
    37c2:	820d                	srli	a2,a2,0x3
    37c4:	03d71693          	slli	a3,a4,0x3d
    37c8:	00d66533          	or	a0,a2,a3
    37cc:	00375593          	srli	a1,a4,0x3
    37d0:	b879                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 329)
    37d2:	00c565b3          	or	a1,a0,a2
    37d6:	dd9d                	beqz	a1,3714 <__addtf3+0x8c8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    37d8:	8faa                	mv	t6,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47
    37da:	00757593          	andi	a1,a0,7
    37de:	8832                	mv	a6,a2
    37e0:	897e                	mv	s2,t6
    37e2:	f98ff06f          	j	2f7a <__addtf3+0x12e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 96)
    37e6:	01c76e33          	or	t3,a4,t3
    37ea:	900e03e3          	beqz	t3,30f0 <__addtf3+0x2a4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 98)
    37ee:	03275793          	srli	a5,a4,0x32
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 98)
    37f2:	0038d513          	srli	a0,a7,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 98)
    37f6:	0017c793          	xori	a5,a5,1
    37fa:	8b85                	andi	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 98)
    37fc:	8e69                	and	a2,a2,a0
    37fe:	03d71693          	slli	a3,a4,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 98)
    3802:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 98)
    3804:	00d66533          	or	a0,a2,a3
    3808:	00375593          	srli	a1,a4,0x3
    380c:	b08d                	j	306e <__addtf3+0x222>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 188)
    380e:	e4040ee3          	beqz	s0,366a <__addtf3+0x81e>
    3812:	ffe70493          	addi	s1,a4,-2
    3816:	4795                	li	a5,5
    3818:	587d                	li	a6,-1
    381a:	597d                	li	s2,-1
    381c:	fb0ff06f          	j	2fcc <__addtf3+0x180>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 72)
    3820:	01c767b3          	or	a5,a4,t3
    3824:	b8078fe3          	beqz	a5,33c2 <__addtf3+0x576>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 74)
    3828:	03275793          	srli	a5,a4,0x32
    382c:	0017c793          	xori	a5,a5,1
    3830:	8b85                	andi	a5,a5,1
    3832:	0792                	slli	a5,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:45 (discriminator 74)
    3834:	883a                	mv	a6,a4
    3836:	8ff2                	mv	t6,t3
    3838:	ba89                	j	318a <__addtf3+0x33e>
    383a:	8436                	mv	s0,a3
    383c:	b659                	j	33c2 <__addtf3+0x576>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 147)
    383e:	01c76e33          	or	t3,a4,t3
    3842:	f60e18e3          	bnez	t3,37b2 <__addtf3+0x966>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46
    3846:	dead                	beqz	a3,37c0 <__addtf3+0x974>
    3848:	bd51                	j	36dc <__addtf3+0x890>
    384a:	f6931be3          	bne	t1,s1,37c0 <__addtf3+0x974>
    384e:	01c76e33          	or	t3,a4,t3
    3852:	f60e10e3          	bnez	t3,37b2 <__addtf3+0x966>
    3856:	b7ad                	j	37c0 <__addtf3+0x974>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 170)
    3858:	e00409e3          	beqz	s0,366a <__addtf3+0x81e>
    385c:	84ae                	mv	s1,a1
    385e:	4795                	li	a5,5
    3860:	587d                	li	a6,-1
    3862:	597d                	li	s2,-1
    3864:	f68ff06f          	j	2fcc <__addtf3+0x180>

0000000000003868 <__eqtf2>:
__eqtf2():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:36
    3868:	832a                	mv	t1,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:42
    386a:	002027f3          	frrm	a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:43
    386e:	6721                	lui	a4,0x8
    3870:	177d                	addi	a4,a4,-1
    3872:	0305d813          	srli	a6,a1,0x30
    3876:	57fd                	li	a5,-1
    3878:	83c1                	srli	a5,a5,0x10
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:44
    387a:	0306d893          	srli	a7,a3,0x30
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:43
    387e:	00e87833          	and	a6,a6,a4
    3882:	00f5fe33          	and	t3,a1,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:44
    3886:	00e8f8b3          	and	a7,a7,a4
    388a:	8ff5                	and	a5,a5,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:43
    388c:	91fd                	srli	a1,a1,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:44
    388e:	92fd                	srli	a3,a3,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45
    3890:	02e80063          	beq	a6,a4,38b0 <__eqtf2+0x48>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 23)
    3894:	00e88663          	beq	a7,a4,38a0 <__eqtf2+0x38>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 78)
    3898:	4505                	li	a0,1
    389a:	03180463          	beq	a6,a7,38c2 <__eqtf2+0x5a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:49
    389e:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 24)
    38a0:	8e5d                	or	a2,a2,a5
    38a2:	c609                	beqz	a2,38ac <__eqtf2+0x44>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 63)
    38a4:	93bd                	srli	a5,a5,0x2f
    38a6:	e399                	bnez	a5,38ac <__eqtf2+0x44>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:46
    38a8:	00186073          	csrsi	fflags,16
    38ac:	4505                	li	a0,1
    38ae:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 20)
    38b0:	00ae6733          	or	a4,t3,a0
    38b4:	e71d                	bnez	a4,38e2 <__eqtf2+0x7a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45
    38b6:	4505                	li	a0,1
    38b8:	ff0893e3          	bne	a7,a6,389e <__eqtf2+0x36>
    38bc:	00c7e733          	or	a4,a5,a2
    38c0:	f375                	bnez	a4,38a4 <__eqtf2+0x3c>
    38c2:	4505                	li	a0,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 80)
    38c4:	fcfe1de3          	bne	t3,a5,389e <__eqtf2+0x36>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 82)
    38c8:	fcc31be3          	bne	t1,a2,389e <__eqtf2+0x36>
    38cc:	4501                	li	a0,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 84)
    38ce:	fcd588e3          	beq	a1,a3,389e <__eqtf2+0x36>
    38d2:	4505                	li	a0,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 85)
    38d4:	fc0815e3          	bnez	a6,389e <__eqtf2+0x36>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 88)
    38d8:	006e6e33          	or	t3,t3,t1
    38dc:	01c03533          	snez	a0,t3
    38e0:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 54)
    38e2:	02fe5e13          	srli	t3,t3,0x2f
    38e6:	fc0e01e3          	beqz	t3,38a8 <__eqtf2+0x40>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 60)
    38ea:	4505                	li	a0,1
    38ec:	fb0899e3          	bne	a7,a6,389e <__eqtf2+0x36>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:45
    38f0:	8e5d                	or	a2,a2,a5
    38f2:	fa4d                	bnez	a2,38a4 <__eqtf2+0x3c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/eqtf2.c:49
    38f4:	8082                	ret

00000000000038f6 <__multf3>:
__multf3():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:36
    38f6:	7159                	addi	sp,sp,-112
    38f8:	f0a2                	sd	s0,96(sp)
    38fa:	e8ca                	sd	s2,80(sp)
    38fc:	ec66                	sd	s9,24(sp)
    38fe:	f486                	sd	ra,104(sp)
    3900:	eca6                	sd	s1,88(sp)
    3902:	e4ce                	sd	s3,72(sp)
    3904:	e0d2                	sd	s4,64(sp)
    3906:	fc56                	sd	s5,56(sp)
    3908:	f85a                	sd	s6,48(sp)
    390a:	f45e                	sd	s7,40(sp)
    390c:	f062                	sd	s8,32(sp)
    390e:	e86a                	sd	s10,16(sp)
    3910:	e46e                	sd	s11,8(sp)
    3912:	842a                	mv	s0,a0
    3914:	8cb2                	mv	s9,a2
    3916:	8936                	mv	s2,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:43
    3918:	00202a73          	frrm	s4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44
    391c:	6721                	lui	a4,0x8
    391e:	0305d793          	srli	a5,a1,0x30
    3922:	177d                	addi	a4,a4,-1
    3924:	01059a93          	slli	s5,a1,0x10
    3928:	8ff9                	and	a5,a5,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:43
    392a:	2a01                	sext.w	s4,s4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44
    392c:	010ada93          	srli	s5,s5,0x10
    3930:	03f5dc13          	srli	s8,a1,0x3f
    3934:	38078063          	beqz	a5,3cb4 <__multf3+0x3be>
    3938:	0007881b          	sext.w	a6,a5
    393c:	30e78a63          	beq	a5,a4,3c50 <__multf3+0x35a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 1)
    3940:	0a8e                	slli	s5,s5,0x3
    3942:	03d55713          	srli	a4,a0,0x3d
    3946:	01576733          	or	a4,a4,s5
    394a:	7871                	lui	a6,0xffffc
    394c:	4a85                	li	s5,1
    394e:	1ace                	slli	s5,s5,0x33
    3950:	0805                	addi	a6,a6,1
    3952:	01576ab3          	or	s5,a4,s5
    3956:	00351b93          	slli	s7,a0,0x3
    395a:	01078db3          	add	s11,a5,a6
    395e:	4481                	li	s1,0
    3960:	4d01                	li	s10,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:37 (discriminator 1)
    3962:	4981                	li	s3,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 8)
    3964:	6721                	lui	a4,0x8
    3966:	03095693          	srli	a3,s2,0x30
    396a:	fff70793          	addi	a5,a4,-1 # 7fff <__BSS_END__+0x7df>
    396e:	01091413          	slli	s0,s2,0x10
    3972:	8efd                	and	a3,a3,a5
    3974:	8b66                	mv	s6,s9
    3976:	8041                	srli	s0,s0,0x10
    3978:	03f95913          	srli	s2,s2,0x3f
    397c:	2e068463          	beqz	a3,3c64 <__multf3+0x36e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45
    3980:	0006851b          	sext.w	a0,a3
    3984:	04f68163          	beq	a3,a5,39c6 <__multf3+0xd0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 1)
    3988:	040e                	slli	s0,s0,0x3
    398a:	03dcd793          	srli	a5,s9,0x3d
    398e:	7571                	lui	a0,0xffffc
    3990:	8fc1                	or	a5,a5,s0
    3992:	0505                	addi	a0,a0,1
    3994:	4405                	li	s0,1
    3996:	9536                	add	a0,a0,a3
    3998:	144e                	slli	s0,s0,0x33
    399a:	8c5d                	or	s0,s0,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 1)
    399c:	956e                	add	a0,a0,s11
    399e:	012c47b3          	xor	a5,s8,s2
    39a2:	4729                	li	a4,10
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 1)
    39a4:	003c9b13          	slli	s6,s9,0x3
    39a8:	4581                	li	a1,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 1)
    39aa:	863e                	mv	a2,a5
    39ac:	00150813          	addi	a6,a0,1 # ffffffffffffc001 <__BSS_END__+0xffffffffffff47e1>
    39b0:	02975c63          	bge	a4,s1,39e8 <__multf3+0xf2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    39b4:	47ad                	li	a5,11
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44
    39b6:	8662                	mv	a2,s8
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    39b8:	0af49763          	bne	s1,a5,3a66 <__multf3+0x170>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 4)
    39bc:	864a                	mv	a2,s2
    39be:	8aa2                	mv	s5,s0
    39c0:	8bda                	mv	s7,s6
    39c2:	8d2e                	mv	s10,a1
    39c4:	a04d                	j	3a66 <__multf3+0x170>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 3)
    39c6:	008ce7b3          	or	a5,s9,s0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 3)
    39ca:	956e                	add	a0,a0,s11
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 3)
    39cc:	e7b5                	bnez	a5,3a38 <__multf3+0x142>
    39ce:	012c47b3          	xor	a5,s8,s2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    39d2:	0024e493          	ori	s1,s1,2
    39d6:	45a9                	li	a1,10
    39d8:	863e                	mv	a2,a5
    39da:	00ed8833          	add	a6,s11,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45
    39de:	4401                	li	s0,0
    39e0:	4b01                	li	s6,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    39e2:	3a95cd63          	blt	a1,s1,3d9c <__multf3+0x4a6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45
    39e6:	4589                	li	a1,2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    39e8:	4709                	li	a4,2
    39ea:	06974863          	blt	a4,s1,3a5a <__multf3+0x164>
    39ee:	14fd                	addi	s1,s1,-1
    39f0:	4685                	li	a3,1
    39f2:	0896ee63          	bltu	a3,s1,3a8e <__multf3+0x198>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    39f6:	24e58763          	beq	a1,a4,3c44 <__multf3+0x34e>
    39fa:	4785                	li	a5,1
    39fc:	2ef59f63          	bne	a1,a5,3cfa <__multf3+0x404>
    3a00:	87b2                	mv	a5,a2
    3a02:	4681                	li	a3,0
    3a04:	4401                	li	s0,0
    3a06:	4501                	li	a0,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 119)
    3a08:	07be                	slli	a5,a5,0xf
    3a0a:	01041593          	slli	a1,s0,0x10
    3a0e:	8fd5                	or	a5,a5,a3
    3a10:	17c2                	slli	a5,a5,0x30
    3a12:	81c1                	srli	a1,a1,0x10
    3a14:	8ddd                	or	a1,a1,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:48 (discriminator 119)
    3a16:	44099963          	bnez	s3,3e68 <__multf3+0x572>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:51
    3a1a:	70a6                	ld	ra,104(sp)
    3a1c:	7406                	ld	s0,96(sp)
    3a1e:	64e6                	ld	s1,88(sp)
    3a20:	6946                	ld	s2,80(sp)
    3a22:	69a6                	ld	s3,72(sp)
    3a24:	6a06                	ld	s4,64(sp)
    3a26:	7ae2                	ld	s5,56(sp)
    3a28:	7b42                	ld	s6,48(sp)
    3a2a:	7ba2                	ld	s7,40(sp)
    3a2c:	7c02                	ld	s8,32(sp)
    3a2e:	6ce2                	ld	s9,24(sp)
    3a30:	6d42                	ld	s10,16(sp)
    3a32:	6da2                	ld	s11,8(sp)
    3a34:	6165                	addi	sp,sp,112
    3a36:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 44)
    3a38:	02f45793          	srli	a5,s0,0x2f
    3a3c:	8b85                	andi	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 44)
    3a3e:	0034e493          	ori	s1,s1,3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 44)
    3a42:	e391                	bnez	a5,3a46 <__multf3+0x150>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45
    3a44:	49c1                	li	s3,16
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    3a46:	65a1                	lui	a1,0x8
    3a48:	012c47b3          	xor	a5,s8,s2
    3a4c:	4729                	li	a4,10
    3a4e:	00bd8833          	add	a6,s11,a1
    3a52:	863e                	mv	a2,a5
    3a54:	458d                	li	a1,3
    3a56:	34974463          	blt	a4,s1,3d9e <__multf3+0x4a8>
    3a5a:	4705                	li	a4,1
    3a5c:	00971733          	sll	a4,a4,s1
    3a60:	53077693          	andi	a3,a4,1328
    3a64:	ce91                	beqz	a3,3a80 <__multf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 56)
    3a66:	4789                	li	a5,2
    3a68:	1cfd0e63          	beq	s10,a5,3c44 <__multf3+0x34e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3a6c:	478d                	li	a5,3
    3a6e:	4efd0f63          	beq	s10,a5,3f6c <__multf3+0x676>
    3a72:	85ea                	mv	a1,s10
    3a74:	4785                	li	a5,1
    3a76:	8456                	mv	s0,s5
    3a78:	8b5e                	mv	s6,s7
    3a7a:	f8f583e3          	beq	a1,a5,3a00 <__multf3+0x10a>
    3a7e:	acb5                	j	3cfa <__multf3+0x404>
    3a80:	24077693          	andi	a3,a4,576
    3a84:	48069b63          	bnez	a3,3f1a <__multf3+0x624>
    3a88:	08877713          	andi	a4,a4,136
    3a8c:	fb05                	bnez	a4,39bc <__multf3+0xc6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 2)
    3a8e:	577d                	li	a4,-1
    3a90:	9301                	srli	a4,a4,0x20
    3a92:	00ebf6b3          	and	a3,s7,a4
    3a96:	020bd493          	srli	s1,s7,0x20
    3a9a:	020b5313          	srli	t1,s6,0x20
    3a9e:	00eb7733          	and	a4,s6,a4
    3aa2:	02d703b3          	mul	t2,a4,a3
    3aa6:	017a8eb3          	add	t4,s5,s7
    3aaa:	016408b3          	add	a7,s0,s6
    3aae:	017ebf33          	sltu	t5,t4,s7
    3ab2:	0168bfb3          	sltu	t6,a7,s6
    3ab6:	8bfa                	mv	s7,t5
    3ab8:	8b7e                	mv	s6,t6
    3aba:	02e48733          	mul	a4,s1,a4
    3abe:	0203d593          	srli	a1,t2,0x20
    3ac2:	02d306b3          	mul	a3,t1,a3
    3ac6:	96ba                	add	a3,a3,a4
    3ac8:	95b6                	add	a1,a1,a3
    3aca:	026484b3          	mul	s1,s1,t1
    3ace:	00e5f563          	bgeu	a1,a4,3ad8 <__multf3+0x1e2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 9)
    3ad2:	4705                	li	a4,1
    3ad4:	1702                	slli	a4,a4,0x20
    3ad6:	94ba                	add	s1,s1,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 11)
    3ad8:	577d                	li	a4,-1
    3ada:	9301                	srli	a4,a4,0x20
    3adc:	00eef6b3          	and	a3,t4,a4
    3ae0:	00e8f333          	and	t1,a7,a4
    3ae4:	020ed913          	srli	s2,t4,0x20
    3ae8:	0208d293          	srli	t0,a7,0x20
    3aec:	02d30c33          	mul	s8,t1,a3
    3af0:	00e5fe33          	and	t3,a1,a4
    3af4:	1e02                	slli	t3,t3,0x20
    3af6:	00e3f733          	and	a4,t2,a4
    3afa:	9e3a                	add	t3,t3,a4
    3afc:	9181                	srli	a1,a1,0x20
    3afe:	95a6                	add	a1,a1,s1
    3b00:	02690333          	mul	t1,s2,t1
    3b04:	020c5713          	srli	a4,s8,0x20
    3b08:	02d286b3          	mul	a3,t0,a3
    3b0c:	969a                	add	a3,a3,t1
    3b0e:	9736                	add	a4,a4,a3
    3b10:	02590933          	mul	s2,s2,t0
    3b14:	00677563          	bgeu	a4,t1,3b1e <__multf3+0x228>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 12)
    3b18:	4685                	li	a3,1
    3b1a:	1682                	slli	a3,a3,0x20
    3b1c:	9936                	add	s2,s2,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 14)
    3b1e:	56fd                	li	a3,-1
    3b20:	9281                	srli	a3,a3,0x20
    3b22:	020ad493          	srli	s1,s5,0x20
    3b26:	02045c93          	srli	s9,s0,0x20
    3b2a:	00dafab3          	and	s5,s5,a3
    3b2e:	8c75                	and	s0,s0,a3
    3b30:	028a83b3          	mul	t2,s5,s0
    3b34:	00d772b3          	and	t0,a4,a3
    3b38:	1282                	slli	t0,t0,0x20
    3b3a:	00dc7c33          	and	s8,s8,a3
    3b3e:	9301                	srli	a4,a4,0x20
    3b40:	92e2                	add	t0,t0,s8
    3b42:	02848433          	mul	s0,s1,s0
    3b46:	0203d313          	srli	t1,t2,0x20
    3b4a:	035c8ab3          	mul	s5,s9,s5
    3b4e:	9aa2                	add	s5,s5,s0
    3b50:	9356                	add	t1,t1,s5
    3b52:	039484b3          	mul	s1,s1,s9
    3b56:	00837563          	bgeu	t1,s0,3b60 <__multf3+0x26a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 15)
    3b5a:	4685                	li	a3,1
    3b5c:	1682                	slli	a3,a3,0x20
    3b5e:	94b6                	add	s1,s1,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 17)
    3b60:	92ae                	add	t0,t0,a1
    3b62:	00b2b6b3          	sltu	a3,t0,a1
    3b66:	9736                	add	a4,a4,a3
    3b68:	41600b33          	neg	s6,s6
    3b6c:	01270433          	add	s0,a4,s2
    3b70:	01db7b33          	and	s6,s6,t4
    3b74:	41700bb3          	neg	s7,s7
    3b78:	5efd                	li	t4,-1
    3b7a:	9b22                	add	s6,s6,s0
    3b7c:	020ede93          	srli	t4,t4,0x20
    3b80:	01ff7f33          	and	t5,t5,t6
    3b84:	011bfbb3          	and	s7,s7,a7
    3b88:	00d436b3          	sltu	a3,s0,a3
    3b8c:	9bda                	add	s7,s7,s6
    3b8e:	01d37733          	and	a4,t1,t4
    3b92:	96fa                	add	a3,a3,t5
    3b94:	41c28fb3          	sub	t6,t0,t3
    3b98:	008b3f33          	sltu	t5,s6,s0
    3b9c:	01d3f3b3          	and	t2,t2,t4
    3ba0:	40bb88b3          	sub	a7,s7,a1
    3ba4:	96fa                	add	a3,a3,t5
    3ba6:	02035313          	srli	t1,t1,0x20
    3baa:	1702                	slli	a4,a4,0x20
    3bac:	016bbeb3          	sltu	t4,s7,s6
    3bb0:	01f2bf33          	sltu	t5,t0,t6
    3bb4:	971e                	add	a4,a4,t2
    3bb6:	9326                	add	t1,t1,s1
    3bb8:	011bb3b3          	sltu	t2,s7,a7
    3bbc:	96f6                	add	a3,a3,t4
    3bbe:	41e888b3          	sub	a7,a7,t5
    3bc2:	01f2f463          	bgeu	t0,t6,3bca <__multf3+0x2d4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 18)
    3bc6:	3b758163          	beq	a1,s7,3f68 <__multf3+0x672>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 23)
    3bca:	40ef8f33          	sub	t5,t6,a4
    3bce:	406885b3          	sub	a1,a7,t1
    3bd2:	01efbeb3          	sltu	t4,t6,t5
    3bd6:	969a                	add	a3,a3,t1
    3bd8:	00b8b8b3          	sltu	a7,a7,a1
    3bdc:	41d70333          	sub	t1,a4,t4
    3be0:	01eff663          	bgeu	t6,t5,3bec <__multf3+0x2f6>
    3be4:	0015be93          	seqz	t4,a1
    3be8:	011ee8b3          	or	a7,t4,a7
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 29)
    3bec:	959a                	add	a1,a1,t1
    3bee:	00e5b433          	sltu	s0,a1,a4
    3bf2:	9436                	add	s0,s0,a3
    3bf4:	40740433          	sub	s0,s0,t2
    3bf8:	41140433          	sub	s0,s0,a7
    3bfc:	00df1b13          	slli	s6,t5,0xd
    3c00:	0436                	slli	s0,s0,0xd
    3c02:	01cb6b33          	or	s6,s6,t3
    3c06:	033f5713          	srli	a4,t5,0x33
    3c0a:	03445693          	srli	a3,s0,0x34
    3c0e:	01603b33          	snez	s6,s6
    3c12:	0335d893          	srli	a7,a1,0x33
    3c16:	00eb6b33          	or	s6,s6,a4
    3c1a:	05b6                	slli	a1,a1,0xd
    3c1c:	0016f713          	andi	a4,a3,1
    3c20:	01146433          	or	s0,s0,a7
    3c24:	00bb6b33          	or	s6,s6,a1
    3c28:	cb79                	beqz	a4,3cfe <__multf3+0x408>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 47)
    3c2a:	001b5713          	srli	a4,s6,0x1
    3c2e:	001b7b13          	andi	s6,s6,1
    3c32:	03f41693          	slli	a3,s0,0x3f
    3c36:	01676733          	or	a4,a4,s6
    3c3a:	00d76b33          	or	s6,a4,a3
    3c3e:	8005                	srli	s0,s0,0x1
    3c40:	8542                	mv	a0,a6
    3c42:	a875                	j	3cfe <__multf3+0x408>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 4)
    3c44:	66a1                	lui	a3,0x8
    3c46:	87b2                	mv	a5,a2
    3c48:	16fd                	addi	a3,a3,-1
    3c4a:	4401                	li	s0,0
    3c4c:	4501                	li	a0,0
    3c4e:	bb6d                	j	3a08 <__multf3+0x112>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 3)
    3c50:	00aaebb3          	or	s7,s5,a0
    3c54:	100b9363          	bnez	s7,3d5a <__multf3+0x464>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44
    3c58:	4a81                	li	s5,0
    3c5a:	44a1                	li	s1,8
    3c5c:	8dc2                	mv	s11,a6
    3c5e:	4d09                	li	s10,2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:37
    3c60:	4981                	li	s3,0
    3c62:	b309                	j	3964 <__multf3+0x6e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 2)
    3c64:	008ce7b3          	or	a5,s9,s0
    3c68:	10078b63          	beqz	a5,3d7e <__multf3+0x488>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 13)
    3c6c:	22040363          	beqz	s0,3e92 <__multf3+0x59c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 20)
    3c70:	8522                	mv	a0,s0
    3c72:	064010ef          	jal	ra,4cd6 <__clzdi2>
    3c76:	0005071b          	sext.w	a4,a0
    3c7a:	ff15079b          	addiw	a5,a0,-15
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 32)
    3c7e:	03d00693          	li	a3,61
    3c82:	00378b1b          	addiw	s6,a5,3
    3c86:	40f687bb          	subw	a5,a3,a5
    3c8a:	01641433          	sll	s0,s0,s6
    3c8e:	00fcd7b3          	srl	a5,s9,a5
    3c92:	8c5d                	or	s0,s0,a5
    3c94:	016c9b33          	sll	s6,s9,s6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 41)
    3c98:	7571                	lui	a0,0xffffc
    3c9a:	0545                	addi	a0,a0,17
    3c9c:	8d19                	sub	a0,a0,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 41)
    3c9e:	956e                	add	a0,a0,s11
    3ca0:	012c47b3          	xor	a5,s8,s2
    3ca4:	4729                	li	a4,10
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 41)
    3ca6:	4581                	li	a1,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46 (discriminator 41)
    3ca8:	863e                	mv	a2,a5
    3caa:	00150813          	addi	a6,a0,1 # ffffffffffffc001 <__BSS_END__+0xffffffffffff47e1>
    3cae:	d09743e3          	blt	a4,s1,39b4 <__multf3+0xbe>
    3cb2:	bb1d                	j	39e8 <__multf3+0xf2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 2)
    3cb4:	00aaebb3          	or	s7,s5,a0
    3cb8:	0a0b8d63          	beqz	s7,3d72 <__multf3+0x47c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 13)
    3cbc:	1a0a8963          	beqz	s5,3e6e <__multf3+0x578>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 20)
    3cc0:	8556                	mv	a0,s5
    3cc2:	014010ef          	jal	ra,4cd6 <__clzdi2>
    3cc6:	0005071b          	sext.w	a4,a0
    3cca:	ff15079b          	addiw	a5,a0,-15
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 32)
    3cce:	03d00693          	li	a3,61
    3cd2:	00378b9b          	addiw	s7,a5,3
    3cd6:	40f687bb          	subw	a5,a3,a5
    3cda:	017a9ab3          	sll	s5,s5,s7
    3cde:	00f457b3          	srl	a5,s0,a5
    3ce2:	0157eab3          	or	s5,a5,s5
    3ce6:	01741bb3          	sll	s7,s0,s7
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 41)
    3cea:	7871                	lui	a6,0xffffc
    3cec:	0845                	addi	a6,a6,17
    3cee:	40e80db3          	sub	s11,a6,a4
    3cf2:	4481                	li	s1,0
    3cf4:	4d01                	li	s10,0
    3cf6:	4981                	li	s3,0
    3cf8:	b1b5                	j	3964 <__multf3+0x6e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3cfa:	87b2                	mv	a5,a2
    3cfc:	8542                	mv	a0,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 2)
    3cfe:	6711                	lui	a4,0x4
    3d00:	177d                	addi	a4,a4,-1
    3d02:	972a                	add	a4,a4,a0
    3d04:	0ae05563          	blez	a4,3dae <__multf3+0x4b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 6)
    3d08:	007b7693          	andi	a3,s6,7
    3d0c:	ca99                	beqz	a3,3d22 <__multf3+0x42c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 8)
    3d0e:	4689                	li	a3,2
    3d10:	0019e993          	ori	s3,s3,1
    3d14:	2ada0263          	beq	s4,a3,3fb8 <__multf3+0x6c2>
    3d18:	468d                	li	a3,3
    3d1a:	22da0e63          	beq	s4,a3,3f56 <__multf3+0x660>
    3d1e:	220a0063          	beqz	s4,3f3e <__multf3+0x648>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 9)
    3d22:	03445693          	srli	a3,s0,0x34
    3d26:	8a85                	andi	a3,a3,1
    3d28:	c699                	beqz	a3,3d36 <__multf3+0x440>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 24)
    3d2a:	577d                	li	a4,-1
    3d2c:	1752                	slli	a4,a4,0x34
    3d2e:	177d                	addi	a4,a4,-1
    3d30:	8c79                	and	s0,s0,a4
    3d32:	6711                	lui	a4,0x4
    3d34:	972a                	add	a4,a4,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 26)
    3d36:	66a1                	lui	a3,0x8
    3d38:	ffe68593          	addi	a1,a3,-2 # 7ffe <__BSS_END__+0x7de>
    3d3c:	1ce5c063          	blt	a1,a4,3efc <__multf3+0x606>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3d40:	16fd                	addi	a3,a3,-1
    3d42:	8ef9                	and	a3,a3,a4
    3d44:	03d41513          	slli	a0,s0,0x3d
    3d48:	003b5b13          	srli	s6,s6,0x3
    3d4c:	0436                	slli	s0,s0,0xd
    3d4e:	16c2                	slli	a3,a3,0x30
    3d50:	01656533          	or	a0,a0,s6
    3d54:	8041                	srli	s0,s0,0x10
    3d56:	92c1                	srli	a3,a3,0x30
    3d58:	b945                	j	3a08 <__multf3+0x112>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 44)
    3d5a:	02fad993          	srli	s3,s5,0x2f
    3d5e:	0019c993          	xori	s3,s3,1
    3d62:	0019f993          	andi	s3,s3,1
    3d66:	0992                	slli	s3,s3,0x4
    3d68:	8baa                	mv	s7,a0
    3d6a:	44b1                	li	s1,12
    3d6c:	8dc2                	mv	s11,a6
    3d6e:	4d0d                	li	s10,3
    3d70:	bed5                	j	3964 <__multf3+0x6e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44
    3d72:	4a81                	li	s5,0
    3d74:	4491                	li	s1,4
    3d76:	4d81                	li	s11,0
    3d78:	4d05                	li	s10,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:37
    3d7a:	4981                	li	s3,0
    3d7c:	b6e5                	j	3964 <__multf3+0x6e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    3d7e:	856e                	mv	a0,s11
    3d80:	012c47b3          	xor	a5,s8,s2
    3d84:	0014e493          	ori	s1,s1,1
    3d88:	4729                	li	a4,10
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45
    3d8a:	4401                	li	s0,0
    3d8c:	4b01                	li	s6,0
    3d8e:	4585                	li	a1,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    3d90:	863e                	mv	a2,a5
    3d92:	00150813          	addi	a6,a0,1
    3d96:	c0974fe3          	blt	a4,s1,39b4 <__multf3+0xbe>
    3d9a:	b1b9                	j	39e8 <__multf3+0xf2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45
    3d9c:	4589                	li	a1,2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    3d9e:	47bd                	li	a5,15
    3da0:	c0f49ae3          	bne	s1,a5,39b4 <__multf3+0xbe>
    3da4:	4405                	li	s0,1
    3da6:	4781                	li	a5,0
    3da8:	143e                	slli	s0,s0,0x2f
    3daa:	4501                	li	a0,0
    3dac:	b9b1                	j	3a08 <__multf3+0x112>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 7)
    3dae:	4685                	li	a3,1
    3db0:	40e685b3          	sub	a1,a3,a4
    3db4:	10071363          	bnez	a4,3eba <__multf3+0x5c4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 39)
    3db8:	007b7693          	andi	a3,s6,7
    3dbc:	8722                	mv	a4,s0
    3dbe:	c69d                	beqz	a3,3dec <__multf3+0x4f6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 41)
    3dc0:	4689                	li	a3,2
    3dc2:	0019e993          	ori	s3,s3,1
    3dc6:	24da0063          	beq	s4,a3,4006 <__multf3+0x710>
    3dca:	468d                	li	a3,3
    3dcc:	22da0363          	beq	s4,a3,3ff2 <__multf3+0x6fc>
    3dd0:	000a1e63          	bnez	s4,3dec <__multf3+0x4f6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3dd4:	00fb7693          	andi	a3,s6,15
    3dd8:	4511                	li	a0,4
    3dda:	00a68963          	beq	a3,a0,3dec <__multf3+0x4f6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 43)
    3dde:	ffcb3713          	sltiu	a4,s6,-4
    3de2:	00174713          	xori	a4,a4,1
    3de6:	1702                	slli	a4,a4,0x20
    3de8:	9301                	srli	a4,a4,0x20
    3dea:	9722                	add	a4,a4,s0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 42)
    3dec:	9351                	srli	a4,a4,0x34
    3dee:	00174713          	xori	a4,a4,1
    3df2:	8b05                	andi	a4,a4,1
    3df4:	0005869b          	sext.w	a3,a1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 62)
    3df8:	04000593          	li	a1,64
    3dfc:	9d95                	subw	a1,a1,a3
    3dfe:	00b41533          	sll	a0,s0,a1
    3e02:	00db5833          	srl	a6,s6,a3
    3e06:	00bb15b3          	sll	a1,s6,a1
    3e0a:	00b035b3          	snez	a1,a1
    3e0e:	01056533          	or	a0,a0,a6
    3e12:	8d4d                	or	a0,a0,a1
    3e14:	00757593          	andi	a1,a0,7
    3e18:	00d456b3          	srl	a3,s0,a3
    3e1c:	c595                	beqz	a1,3e48 <__multf3+0x552>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 76)
    3e1e:	4589                	li	a1,2
    3e20:	0019e993          	ori	s3,s3,1
    3e24:	1eba0d63          	beq	s4,a1,401e <__multf3+0x728>
    3e28:	458d                	li	a1,3
    3e2a:	1eba0163          	beq	s4,a1,400c <__multf3+0x716>
    3e2e:	000a1d63          	bnez	s4,3e48 <__multf3+0x552>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3e32:	00f57613          	andi	a2,a0,15
    3e36:	4591                	li	a1,4
    3e38:	00b60863          	beq	a2,a1,3e48 <__multf3+0x552>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 78)
    3e3c:	00450613          	addi	a2,a0,4
    3e40:	00a63533          	sltu	a0,a2,a0
    3e44:	96aa                	add	a3,a3,a0
    3e46:	8532                	mv	a0,a2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 77)
    3e48:	4805                	li	a6,1
    3e4a:	03381613          	slli	a2,a6,0x33
    3e4e:	8e75                	and	a2,a2,a3
    3e50:	18060863          	beqz	a2,3fe0 <__multf3+0x6ea>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 92)
    3e54:	0019e993          	ori	s3,s3,1
    3e58:	16071e63          	bnez	a4,3fd4 <__multf3+0x6de>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3e5c:	03f79593          	slli	a1,a5,0x3f
    3e60:	1842                	slli	a6,a6,0x30
    3e62:	4501                	li	a0,0
    3e64:	0105e5b3          	or	a1,a1,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:48 (discriminator 1)
    3e68:	0019a073          	csrs	fflags,s3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:50 (discriminator 1)
    3e6c:	b67d                	j	3a1a <__multf3+0x124>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 27)
    3e6e:	669000ef          	jal	ra,4cd6 <__clzdi2>
    3e72:	0405071b          	addiw	a4,a0,64
    3e76:	ff170693          	addi	a3,a4,-15 # 3ff1 <__multf3+0x6fb>
    3e7a:	03c00613          	li	a2,60
    3e7e:	0006879b          	sext.w	a5,a3
    3e82:	e4d656e3          	bge	a2,a3,3cce <__multf3+0x3d8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:44 (discriminator 33)
    3e86:	fc37879b          	addiw	a5,a5,-61
    3e8a:	4b81                	li	s7,0
    3e8c:	00f41ab3          	sll	s5,s0,a5
    3e90:	bda9                	j	3cea <__multf3+0x3f4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 27)
    3e92:	8566                	mv	a0,s9
    3e94:	643000ef          	jal	ra,4cd6 <__clzdi2>
    3e98:	0405071b          	addiw	a4,a0,64
    3e9c:	ff170693          	addi	a3,a4,-15
    3ea0:	03c00613          	li	a2,60
    3ea4:	0006879b          	sext.w	a5,a3
    3ea8:	dcd65be3          	bge	a2,a3,3c7e <__multf3+0x388>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:45 (discriminator 33)
    3eac:	fc37879b          	addiw	a5,a5,-61
    3eb0:	00fc97b3          	sll	a5,s9,a5
    3eb4:	843e                	mv	s0,a5
    3eb6:	4b01                	li	s6,0
    3eb8:	b3c5                	j	3c98 <__multf3+0x3a2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 59)
    3eba:	07400713          	li	a4,116
    3ebe:	0ab75e63          	bge	a4,a1,3f7a <__multf3+0x684>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 61)
    3ec2:	008b6533          	or	a0,s6,s0
    3ec6:	cd09                	beqz	a0,3ee0 <__multf3+0x5ea>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 100)
    3ec8:	4709                	li	a4,2
    3eca:	0019e993          	ori	s3,s3,1
    3ece:	8532                	mv	a0,a2
    3ed0:	00ea0863          	beq	s4,a4,3ee0 <__multf3+0x5ea>
    3ed4:	470d                	li	a4,3
    3ed6:	4501                	li	a0,0
    3ed8:	00ea1463          	bne	s4,a4,3ee0 <__multf3+0x5ea>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3edc:	40c68533          	sub	a0,a3,a2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 116)
    3ee0:	0029e993          	ori	s3,s3,2
    3ee4:	4701                	li	a4,0
    3ee6:	4401                	li	s0,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3ee8:	01041593          	slli	a1,s0,0x10
    3eec:	1742                	slli	a4,a4,0x30
    3eee:	81c1                	srli	a1,a1,0x10
    3ef0:	17fe                	slli	a5,a5,0x3f
    3ef2:	8dd9                	or	a1,a1,a4
    3ef4:	8ddd                	or	a1,a1,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:48
    3ef6:	0019a073          	csrs	fflags,s3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:50
    3efa:	b605                	j	3a1a <__multf3+0x124>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3efc:	4709                	li	a4,2
    3efe:	02ea0663          	beq	s4,a4,3f2a <__multf3+0x634>
    3f02:	470d                	li	a4,3
    3f04:	02ea0b63          	beq	s4,a4,3f3a <__multf3+0x644>
    3f08:	020a0263          	beqz	s4,3f2c <__multf3+0x636>
    3f0c:	547d                	li	s0,-1
    3f0e:	872e                	mv	a4,a1
    3f10:	8041                	srli	s0,s0,0x10
    3f12:	557d                	li	a0,-1
    3f14:	0059e993          	ori	s3,s3,5
    3f18:	bfc1                	j	3ee8 <__multf3+0x5f2>
    3f1a:	0ffff5b7          	lui	a1,0xffff
    3f1e:	4501                	li	a0,0
    3f20:	158e                	slli	a1,a1,0x23
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    3f22:	49c1                	li	s3,16
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:48
    3f24:	0019a073          	csrs	fflags,s3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:50
    3f28:	bccd                	j	3a1a <__multf3+0x124>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3f2a:	d26d                	beqz	a2,3f0c <__multf3+0x616>
    3f2c:	fff68713          	addi	a4,a3,-1
    3f30:	4401                	li	s0,0
    3f32:	4501                	li	a0,0
    3f34:	0059e993          	ori	s3,s3,5
    3f38:	bf45                	j	3ee8 <__multf3+0x5f2>
    3f3a:	fa69                	bnez	a2,3f0c <__multf3+0x616>
    3f3c:	bfc5                	j	3f2c <__multf3+0x636>
    3f3e:	00fb7693          	andi	a3,s6,15
    3f42:	4591                	li	a1,4
    3f44:	dcb68fe3          	beq	a3,a1,3d22 <__multf3+0x42c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 10)
    3f48:	004b0693          	addi	a3,s6,4
    3f4c:	0166bb33          	sltu	s6,a3,s6
    3f50:	945a                	add	s0,s0,s6
    3f52:	8b36                	mv	s6,a3
    3f54:	b3f9                	j	3d22 <__multf3+0x42c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3f56:	dc0616e3          	bnez	a2,3d22 <__multf3+0x42c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 21)
    3f5a:	008b0693          	addi	a3,s6,8
    3f5e:	0166bb33          	sltu	s6,a3,s6
    3f62:	945a                	add	s0,s0,s6
    3f64:	8b36                	mv	s6,a3
    3f66:	bb75                	j	3d22 <__multf3+0x42c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:46
    3f68:	4385                	li	t2,1
    3f6a:	b185                	j	3bca <__multf3+0x2d4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3f6c:	66a1                	lui	a3,0x8
    3f6e:	4405                	li	s0,1
    3f70:	4781                	li	a5,0
    3f72:	16fd                	addi	a3,a3,-1
    3f74:	143e                	slli	s0,s0,0x2f
    3f76:	4501                	li	a0,0
    3f78:	bc41                	j	3a08 <__multf3+0x112>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 60)
    3f7a:	03f00713          	li	a4,63
    3f7e:	0005869b          	sext.w	a3,a1
    3f82:	0ab75163          	bge	a4,a1,4024 <__multf3+0x72e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 63)
    3f86:	fc06871b          	addiw	a4,a3,-64
    3f8a:	04000513          	li	a0,64
    3f8e:	00e45733          	srl	a4,s0,a4
    3f92:	00a58a63          	beq	a1,a0,3fa6 <__multf3+0x6b0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 71)
    3f96:	08000593          	li	a1,128
    3f9a:	40d586bb          	subw	a3,a1,a3
    3f9e:	00d416b3          	sll	a3,s0,a3
    3fa2:	00db6b33          	or	s6,s6,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 74)
    3fa6:	01603533          	snez	a0,s6
    3faa:	8d59                	or	a0,a0,a4
    3fac:	00757713          	andi	a4,a0,7
    3fb0:	c719                	beqz	a4,3fbe <__multf3+0x6c8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3fb2:	4705                	li	a4,1
    3fb4:	4681                	li	a3,0
    3fb6:	b5a5                	j	3e1e <__multf3+0x528>
    3fb8:	d60605e3          	beqz	a2,3d22 <__multf3+0x42c>
    3fbc:	bf79                	j	3f5a <__multf3+0x664>
    3fbe:	810d                	srli	a0,a0,0x3
    3fc0:	4401                	li	s0,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 96)
    3fc2:	0019f713          	andi	a4,s3,1
    3fc6:	4681                	li	a3,0
    3fc8:	a40700e3          	beqz	a4,3a08 <__multf3+0x112>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    3fcc:	4701                	li	a4,0
    3fce:	0029e993          	ori	s3,s3,2
    3fd2:	bf19                	j	3ee8 <__multf3+0x5f2>
    3fd4:	4705                	li	a4,1
    3fd6:	4401                	li	s0,0
    3fd8:	4501                	li	a0,0
    3fda:	0029e993          	ori	s3,s3,2
    3fde:	b729                	j	3ee8 <__multf3+0x5f2>
    3fe0:	00d69413          	slli	s0,a3,0xd
    3fe4:	810d                	srli	a0,a0,0x3
    3fe6:	16f6                	slli	a3,a3,0x3d
    3fe8:	8041                	srli	s0,s0,0x10
    3fea:	8d55                	or	a0,a0,a3
    3fec:	fb79                	bnez	a4,3fc2 <__multf3+0x6cc>
    3fee:	4681                	li	a3,0
    3ff0:	bc21                	j	3a08 <__multf3+0x112>
    3ff2:	de061de3          	bnez	a2,3dec <__multf3+0x4f6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 54)
    3ff6:	ff8b3713          	sltiu	a4,s6,-8
    3ffa:	00174713          	xori	a4,a4,1
    3ffe:	1702                	slli	a4,a4,0x20
    4000:	9301                	srli	a4,a4,0x20
    4002:	9722                	add	a4,a4,s0
    4004:	b3e5                	j	3dec <__multf3+0x4f6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    4006:	de0603e3          	beqz	a2,3dec <__multf3+0x4f6>
    400a:	b7f5                	j	3ff6 <__multf3+0x700>
    400c:	e2061ee3          	bnez	a2,3e48 <__multf3+0x552>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47 (discriminator 89)
    4010:	00850613          	addi	a2,a0,8
    4014:	00a63533          	sltu	a0,a2,a0
    4018:	96aa                	add	a3,a3,a0
    401a:	8532                	mv	a0,a2
    401c:	b535                	j	3e48 <__multf3+0x552>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/multf3.c:47
    401e:	e20605e3          	beqz	a2,3e48 <__multf3+0x552>
    4022:	b7fd                	j	4010 <__multf3+0x71a>
    4024:	4705                	li	a4,1
    4026:	bbc9                	j	3df8 <__multf3+0x502>

0000000000004028 <__subtf3>:
__subtf3():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:36
    4028:	7179                	addi	sp,sp,-48
    402a:	f406                	sd	ra,40(sp)
    402c:	f022                	sd	s0,32(sp)
    402e:	ec26                	sd	s1,24(sp)
    4030:	e84a                	sd	s2,16(sp)
    4032:	e44e                	sd	s3,8(sp)
    4034:	e052                	sd	s4,0(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:43
    4036:	002029f3          	frrm	s3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44
    403a:	5efd                	li	t4,-1
    403c:	010ed813          	srli	a6,t4,0x10
    4040:	68a1                	lui	a7,0x8
    4042:	0105f7b3          	and	a5,a1,a6
    4046:	18fd                	addi	a7,a7,-1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    4048:	0306d713          	srli	a4,a3,0x30
    404c:	0106f833          	and	a6,a3,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44
    4050:	0305d413          	srli	s0,a1,0x30
    4054:	03d55e13          	srli	t3,a0,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    4058:	03d65313          	srli	t1,a2,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44
    405c:	078e                	slli	a5,a5,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    405e:	080e                	slli	a6,a6,0x3
    4060:	01177733          	and	a4,a4,a7
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44
    4064:	03f5d913          	srli	s2,a1,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:43
    4068:	2981                	sext.w	s3,s3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44
    406a:	00fe65b3          	or	a1,t3,a5
    406e:	01147433          	and	s0,s0,a7
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    4072:	01036e33          	or	t3,t1,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44
    4076:	00351f13          	slli	t5,a0,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    407a:	92fd                	srli	a3,a3,0x3f
    407c:	00361313          	slli	t1,a2,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    4080:	1d170b63          	beq	a4,a7,4256 <__subtf3+0x22e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 3)
    4084:	0016c693          	xori	a3,a3,1
    4088:	16d90f63          	beq	s2,a3,4206 <__subtf3+0x1de>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 13)
    408c:	40e4083b          	subw	a6,s0,a4
    4090:	1d005c63          	blez	a6,4268 <__subtf3+0x240>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 205)
    4094:	22070763          	beqz	a4,42c2 <__subtf3+0x29a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 208)
    4098:	67a1                	lui	a5,0x8
    409a:	17fd                	addi	a5,a5,-1
    409c:	22f40e63          	beq	s0,a5,42d8 <__subtf3+0x2b0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 234)
    40a0:	4785                	li	a5,1
    40a2:	17ce                	slli	a5,a5,0x33
    40a4:	00fe6e33          	or	t3,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 243)
    40a8:	07400793          	li	a5,116
    40ac:	4107c663          	blt	a5,a6,44b8 <__subtf3+0x490>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 244)
    40b0:	03f00793          	li	a5,63
    40b4:	5907c763          	blt	a5,a6,4642 <__subtf3+0x61a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 246)
    40b8:	04000793          	li	a5,64
    40bc:	410787bb          	subw	a5,a5,a6
    40c0:	00fe14b3          	sll	s1,t3,a5
    40c4:	01035733          	srl	a4,t1,a6
    40c8:	00f317b3          	sll	a5,t1,a5
    40cc:	8cd9                	or	s1,s1,a4
    40ce:	00f037b3          	snez	a5,a5
    40d2:	010e5333          	srl	t1,t3,a6
    40d6:	8cdd                	or	s1,s1,a5
    40d8:	406585b3          	sub	a1,a1,t1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 260)
    40dc:	409f04b3          	sub	s1,t5,s1
    40e0:	009f3f33          	sltu	t5,t5,s1
    40e4:	41e585b3          	sub	a1,a1,t5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 318)
    40e8:	0335d793          	srli	a5,a1,0x33
    40ec:	8b85                	andi	a5,a5,1
    40ee:	32078363          	beqz	a5,4414 <__subtf3+0x3ec>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 378)
    40f2:	00d59a13          	slli	s4,a1,0xd
    40f6:	00da5a13          	srli	s4,s4,0xd
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 380)
    40fa:	340a0b63          	beqz	s4,4450 <__subtf3+0x428>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 386)
    40fe:	8552                	mv	a0,s4
    4100:	3d7000ef          	jal	ra,4cd6 <__clzdi2>
    4104:	3551                	addiw	a0,a0,-12
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 403)
    4106:	04000593          	li	a1,64
    410a:	9d89                	subw	a1,a1,a0
    410c:	00aa1a33          	sll	s4,s4,a0
    4110:	00b4d5b3          	srl	a1,s1,a1
    4114:	0145e5b3          	or	a1,a1,s4
    4118:	00a49a33          	sll	s4,s1,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 407)
    411c:	2e854663          	blt	a0,s0,4408 <__subtf3+0x3e0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 408)
    4120:	9d01                	subw	a0,a0,s0
    4122:	0015071b          	addiw	a4,a0,1
    4126:	03f00793          	li	a5,63
    412a:	86ba                	mv	a3,a4
    412c:	4ee7c563          	blt	a5,a4,4616 <__subtf3+0x5ee>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 410)
    4130:	04000793          	li	a5,64
    4134:	9f99                	subw	a5,a5,a4
    4136:	00f594b3          	sll	s1,a1,a5
    413a:	00ea56b3          	srl	a3,s4,a4
    413e:	00fa17b3          	sll	a5,s4,a5
    4142:	8cd5                	or	s1,s1,a3
    4144:	00f037b3          	snez	a5,a5
    4148:	8cdd                	or	s1,s1,a5
    414a:	00e5d5b3          	srl	a1,a1,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 410)
    414e:	00b4e7b3          	or	a5,s1,a1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 1)
    4152:	26078063          	beqz	a5,43b2 <__subtf3+0x38a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4156:	0074f793          	andi	a5,s1,7
    415a:	00149613          	slli	a2,s1,0x1
    415e:	00159693          	slli	a3,a1,0x1
    4162:	03f4d713          	srli	a4,s1,0x3f
    4166:	00767513          	andi	a0,a2,7
    416a:	96ba                	add	a3,a3,a4
    416c:	4801                	li	a6,0
    416e:	c911                	beqz	a0,4182 <__subtf3+0x15a>
    4170:	4709                	li	a4,2
    4172:	66e98d63          	beq	s3,a4,47ec <__subtf3+0x7c4>
    4176:	470d                	li	a4,3
    4178:	4805                	li	a6,1
    417a:	6ae98163          	beq	s3,a4,481c <__subtf3+0x7f4>
    417e:	68098263          	beqz	s3,4802 <__subtf3+0x7da>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 23)
    4182:	4705                	li	a4,1
    4184:	03471613          	slli	a2,a4,0x34
    4188:	8ef1                	and	a3,a3,a2
    418a:	0016b613          	seqz	a2,a3
    418e:	4401                	li	s0,0
    4190:	6a078963          	beqz	a5,4842 <__subtf3+0x81a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 37)
    4194:	4789                	li	a5,2
    4196:	2ef98d63          	beq	s3,a5,4490 <__subtf3+0x468>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    419a:	478d                	li	a5,3
    419c:	2ef98f63          	beq	s3,a5,449a <__subtf3+0x472>
    41a0:	2c098663          	beqz	s3,446c <__subtf3+0x444>
    41a4:	4785                	li	a5,1
    41a6:	17ce                	slli	a5,a5,0x33
    41a8:	8fed                	and	a5,a5,a1
    41aa:	4805                	li	a6,1
    41ac:	c219                	beqz	a2,41b2 <__subtf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 60)
    41ae:	00286813          	ori	a6,a6,2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 62)
    41b2:	24078063          	beqz	a5,43f2 <__subtf3+0x3ca>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 63)
    41b6:	6721                	lui	a4,0x8
    41b8:	0405                	addi	s0,s0,1
    41ba:	177d                	addi	a4,a4,-1
    41bc:	26e40a63          	beq	s0,a4,4430 <__subtf3+0x408>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    41c0:	56fd                	li	a3,-1
    41c2:	03369793          	slli	a5,a3,0x33
    41c6:	17fd                	addi	a5,a5,-1
    41c8:	8fed                	and	a5,a5,a1
    41ca:	8c79                	and	s0,s0,a4
    41cc:	03d79513          	slli	a0,a5,0x3d
    41d0:	808d                	srli	s1,s1,0x3
    41d2:	838d                	srli	a5,a5,0x3
    41d4:	82c1                	srli	a3,a3,0x10
    41d6:	1442                	slli	s0,s0,0x30
    41d8:	8d45                	or	a0,a0,s1
    41da:	8ff5                	and	a5,a5,a3
    41dc:	9041                	srli	s0,s0,0x30
    41de:	00197713          	andi	a4,s2,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 90)
    41e2:	073e                	slli	a4,a4,0xf
    41e4:	01079593          	slli	a1,a5,0x10
    41e8:	008767b3          	or	a5,a4,s0
    41ec:	17c2                	slli	a5,a5,0x30
    41ee:	81c1                	srli	a1,a1,0x10
    41f0:	8ddd                	or	a1,a1,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:48 (discriminator 90)
    41f2:	2e081663          	bnez	a6,44de <__subtf3+0x4b6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:51
    41f6:	70a2                	ld	ra,40(sp)
    41f8:	7402                	ld	s0,32(sp)
    41fa:	64e2                	ld	s1,24(sp)
    41fc:	6942                	ld	s2,16(sp)
    41fe:	69a2                	ld	s3,8(sp)
    4200:	6a02                	ld	s4,0(sp)
    4202:	6145                	addi	sp,sp,48
    4204:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 12)
    4206:	40e4083b          	subw	a6,s0,a4
    420a:	0f005b63          	blez	a6,4300 <__subtf3+0x2d8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 14)
    420e:	1a070c63          	beqz	a4,43c6 <__subtf3+0x39e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 17)
    4212:	65140263          	beq	s0,a7,4856 <__subtf3+0x82e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 43)
    4216:	4785                	li	a5,1
    4218:	17ce                	slli	a5,a5,0x33
    421a:	00fe6e33          	or	t3,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 52)
    421e:	07400793          	li	a5,116
    4222:	3b07c863          	blt	a5,a6,45d2 <__subtf3+0x5aa>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 53)
    4226:	03f00793          	li	a5,63
    422a:	4b07dc63          	bge	a5,a6,46e2 <__subtf3+0x6ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 56)
    422e:	fc08079b          	addiw	a5,a6,-64
    4232:	04000713          	li	a4,64
    4236:	00fe57b3          	srl	a5,t3,a5
    423a:	00e80a63          	beq	a6,a4,424e <__subtf3+0x226>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 63)
    423e:	08000713          	li	a4,128
    4242:	4107073b          	subw	a4,a4,a6
    4246:	00ee1733          	sll	a4,t3,a4
    424a:	00e36333          	or	t1,t1,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 66)
    424e:	006034b3          	snez	s1,t1
    4252:	8cdd                	or	s1,s1,a5
    4254:	a659                	j	45da <__subtf3+0x5b2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 2)
    4256:	006e67b3          	or	a5,t3,t1
    425a:	cbd9                	beqz	a5,42f0 <__subtf3+0x2c8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    425c:	08d90e63          	beq	s2,a3,42f8 <__subtf3+0x2d0>
    4260:	7861                	lui	a6,0xffff8
    4262:	2805                	addiw	a6,a6,1
    4264:	0088083b          	addw	a6,a6,s0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 206)
    4268:	0e080963          	beqz	a6,435a <__subtf3+0x332>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 262)
    426c:	30041263          	bnez	s0,4570 <__subtf3+0x548>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 264)
    4270:	01e5e7b3          	or	a5,a1,t5
    4274:	4c078663          	beqz	a5,4740 <__subtf3+0x718>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 267)
    4278:	fff84813          	not	a6,a6
    427c:	64080763          	beqz	a6,48ca <__subtf3+0x8a2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 277)
    4280:	67a1                	lui	a5,0x8
    4282:	17fd                	addi	a5,a5,-1
    4284:	2ef71f63          	bne	a4,a5,4582 <__subtf3+0x55a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 292)
    4288:	006e6333          	or	t1,t3,t1
    428c:	64030a63          	beqz	t1,48e0 <__subtf3+0x8b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 294)
    4290:	032e5813          	srli	a6,t3,0x32
    4294:	00184813          	xori	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 294)
    4298:	00361793          	slli	a5,a2,0x3
    429c:	838d                	srli	a5,a5,0x3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 294)
    429e:	00187813          	andi	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 294)
    42a2:	03de1513          	slli	a0,t3,0x3d
    42a6:	8d5d                	or	a0,a0,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 294)
    42a8:	0812                	slli	a6,a6,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 294)
    42aa:	003e5793          	srli	a5,t3,0x3
    42ae:	8936                	mv	s2,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 80)
    42b0:	8d5d                	or	a0,a0,a5
    42b2:	c905                	beqz	a0,42e2 <__subtf3+0x2ba>
    42b4:	6421                	lui	s0,0x8
    42b6:	4785                	li	a5,1
    42b8:	4701                	li	a4,0
    42ba:	147d                	addi	s0,s0,-1
    42bc:	17be                	slli	a5,a5,0x2f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    42be:	4501                	li	a0,0
    42c0:	b70d                	j	41e2 <__subtf3+0x1ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 207)
    42c2:	006e6733          	or	a4,t3,t1
    42c6:	2e070963          	beqz	a4,45b8 <__subtf3+0x590>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 210)
    42ca:	387d                	addiw	a6,a6,-1
    42cc:	4e080b63          	beqz	a6,47c2 <__subtf3+0x79a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 220)
    42d0:	67a1                	lui	a5,0x8
    42d2:	17fd                	addi	a5,a5,-1
    42d4:	dcf41ae3          	bne	s0,a5,40a8 <__subtf3+0x80>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 235)
    42d8:	01e5ef33          	or	t5,a1,t5
    42dc:	3e0f1463          	bnez	t5,46c4 <__subtf3+0x69c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:37
    42e0:	4801                	li	a6,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    42e2:	6421                	lui	s0,0x8
    42e4:	00197713          	andi	a4,s2,1
    42e8:	147d                	addi	s0,s0,-1
    42ea:	4781                	li	a5,0
    42ec:	4501                	li	a0,0
    42ee:	bdd5                	j	41e2 <__subtf3+0x1ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    42f0:	0016c693          	xori	a3,a3,1
    42f4:	d8d91ce3          	bne	s2,a3,408c <__subtf3+0x64>
    42f8:	7861                	lui	a6,0xffff8
    42fa:	2805                	addiw	a6,a6,1
    42fc:	0088083b          	addw	a6,a6,s0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 15)
    4300:	1e080963          	beqz	a6,44f2 <__subtf3+0x4ca>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 71)
    4304:	38040063          	beqz	s0,4684 <__subtf3+0x65c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 74)
    4308:	67a1                	lui	a5,0x8
    430a:	17fd                	addi	a5,a5,-1
    430c:	38f70863          	beq	a4,a5,469c <__subtf3+0x674>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 100)
    4310:	4785                	li	a5,1
    4312:	17ce                	slli	a5,a5,0x33
    4314:	4100083b          	negw	a6,a6
    4318:	8ddd                	or	a1,a1,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 109)
    431a:	07400793          	li	a5,116
    431e:	5707c263          	blt	a5,a6,4882 <__subtf3+0x85a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 110)
    4322:	03f00793          	li	a5,63
    4326:	5d07cf63          	blt	a5,a6,4904 <__subtf3+0x8dc>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 112)
    432a:	04000793          	li	a5,64
    432e:	410787bb          	subw	a5,a5,a6
    4332:	00f594b3          	sll	s1,a1,a5
    4336:	010f56b3          	srl	a3,t5,a6
    433a:	00ff17b3          	sll	a5,t5,a5
    433e:	8cd5                	or	s1,s1,a3
    4340:	00f037b3          	snez	a5,a5
    4344:	0105d833          	srl	a6,a1,a6
    4348:	8cdd                	or	s1,s1,a5
    434a:	9e42                	add	t3,t3,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 126)
    434c:	949a                	add	s1,s1,t1
    434e:	0064b333          	sltu	t1,s1,t1
    4352:	01c305b3          	add	a1,t1,t3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45 (discriminator 126)
    4356:	843a                	mv	s0,a4
    4358:	a469                	j	45e2 <__subtf3+0x5ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 263)
    435a:	68a1                	lui	a7,0x8
    435c:	00140793          	addi	a5,s0,1 # 8001 <__BSS_END__+0x7e1>
    4360:	ffe88e93          	addi	t4,a7,-2 # 7ffe <__BSS_END__+0x7de>
    4364:	01d7f7b3          	and	a5,a5,t4
    4368:	1c079d63          	bnez	a5,4542 <__subtf3+0x51a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 319)
    436c:	006e67b3          	or	a5,t3,t1
    4370:	01e5eeb3          	or	t4,a1,t5
    4374:	14041763          	bnez	s0,44c2 <__subtf3+0x49a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 321)
    4378:	440e8e63          	beqz	t4,47d4 <__subtf3+0x7ac>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 324)
    437c:	46078263          	beqz	a5,47e0 <__subtf3+0x7b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 331)
    4380:	406f0633          	sub	a2,t5,t1
    4384:	00cf37b3          	sltu	a5,t5,a2
    4388:	41c58733          	sub	a4,a1,t3
    438c:	8f1d                	sub	a4,a4,a5
    438e:	03375793          	srli	a5,a4,0x33
    4392:	8b85                	andi	a5,a5,1
    4394:	62078063          	beqz	a5,49b4 <__subtf3+0x98c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 333)
    4398:	41e304b3          	sub	s1,t1,t5
    439c:	009337b3          	sltu	a5,t1,s1
    43a0:	40be0e33          	sub	t3,t3,a1
    43a4:	40fe05b3          	sub	a1,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 333)
    43a8:	00b4e7b3          	or	a5,s1,a1
    43ac:	8936                	mv	s2,a3
    43ae:	da0794e3          	bnez	a5,4156 <__subtf3+0x12e>
    43b2:	4501                	li	a0,0
    43b4:	4401                	li	s0,0
    43b6:	4801                	li	a6,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    43b8:	07c2                	slli	a5,a5,0x10
    43ba:	1446                	slli	s0,s0,0x31
    43bc:	83c1                	srli	a5,a5,0x10
    43be:	9045                	srli	s0,s0,0x31
    43c0:	00197713          	andi	a4,s2,1
    43c4:	bd39                	j	41e2 <__subtf3+0x1ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 16)
    43c6:	006e6733          	or	a4,t3,t1
    43ca:	40070d63          	beqz	a4,47e4 <__subtf3+0x7bc>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 19)
    43ce:	387d                	addiw	a6,a6,-1
    43d0:	38080163          	beqz	a6,4752 <__subtf3+0x72a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 29)
    43d4:	e51415e3          	bne	s0,a7,421e <__subtf3+0x1f6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 33)
    43d8:	01e5e7b3          	or	a5,a1,t5
    43dc:	d391                	beqz	a5,42e0 <__subtf3+0x2b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 213)
    43de:	0325d813          	srli	a6,a1,0x32
    43e2:	00184813          	xori	a6,a6,1
    43e6:	00187813          	andi	a6,a6,1
    43ea:	0812                	slli	a6,a6,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    43ec:	6421                	lui	s0,0x8
    43ee:	84fa                	mv	s1,t5
    43f0:	147d                	addi	s0,s0,-1
    43f2:	6721                	lui	a4,0x8
    43f4:	03d59513          	slli	a0,a1,0x3d
    43f8:	808d                	srli	s1,s1,0x3
    43fa:	177d                	addi	a4,a4,-1
    43fc:	8d45                	or	a0,a0,s1
    43fe:	0035d793          	srli	a5,a1,0x3
    4402:	eae407e3          	beq	s0,a4,42b0 <__subtf3+0x288>
    4406:	bf4d                	j	43b8 <__subtf3+0x390>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 409)
    4408:	57fd                	li	a5,-1
    440a:	17ce                	slli	a5,a5,0x33
    440c:	17fd                	addi	a5,a5,-1
    440e:	8c09                	sub	s0,s0,a0
    4410:	8dfd                	and	a1,a1,a5
    4412:	84d2                	mv	s1,s4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 426)
    4414:	00b4e7b3          	or	a5,s1,a1
    4418:	d2040de3          	beqz	s0,4152 <__subtf3+0x12a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    441c:	0074f793          	andi	a5,s1,7
    4420:	4601                	li	a2,0
    4422:	d60799e3          	bnez	a5,4194 <__subtf3+0x16c>
    4426:	4785                	li	a5,1
    4428:	17ce                	slli	a5,a5,0x33
    442a:	8fed                	and	a5,a5,a1
    442c:	4801                	li	a6,0
    442e:	b351                	j	41b2 <__subtf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 65)
    4430:	08098163          	beqz	s3,44b2 <__subtf3+0x48a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 68)
    4434:	478d                	li	a5,3
    4436:	06f98c63          	beq	s3,a5,44ae <__subtf3+0x486>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 72)
    443a:	4789                	li	a5,2
    443c:	32f98463          	beq	s3,a5,4764 <__subtf3+0x73c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4440:	557d                	li	a0,-1
    4442:	6421                	lui	s0,0x8
    4444:	00586813          	ori	a6,a6,5
    4448:	00355793          	srli	a5,a0,0x3
    444c:	1479                	addi	s0,s0,-2
    444e:	b7ad                	j	43b8 <__subtf3+0x390>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 393)
    4450:	8526                	mv	a0,s1
    4452:	085000ef          	jal	ra,4cd6 <__clzdi2>
    4456:	ff45059b          	addiw	a1,a0,-12
    445a:	03f00793          	li	a5,63
    445e:	0345051b          	addiw	a0,a0,52
    4462:	00b495b3          	sll	a1,s1,a1
    4466:	caa7cbe3          	blt	a5,a0,411c <__subtf3+0xf4>
    446a:	b971                	j	4106 <__subtf3+0xde>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 40)
    446c:	00f4f793          	andi	a5,s1,15
    4470:	4711                	li	a4,4
    4472:	d2e789e3          	beq	a5,a4,41a4 <__subtf3+0x17c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4476:	00448713          	addi	a4,s1,4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 50)
    447a:	009734b3          	sltu	s1,a4,s1
    447e:	4785                	li	a5,1
    4480:	95a6                	add	a1,a1,s1
    4482:	17ce                	slli	a5,a5,0x33
    4484:	8fed                	and	a5,a5,a1
    4486:	84ba                	mv	s1,a4
    4488:	4805                	li	a6,1
    448a:	d20612e3          	bnez	a2,41ae <__subtf3+0x186>
    448e:	b315                	j	41b2 <__subtf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 42)
    4490:	d0090ae3          	beqz	s2,41a4 <__subtf3+0x17c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 50)
    4494:	00848713          	addi	a4,s1,8
    4498:	b7cd                	j	447a <__subtf3+0x452>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 43)
    449a:	fe090de3          	beqz	s2,4494 <__subtf3+0x46c>
    449e:	4805                	li	a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    44a0:	4785                	li	a5,1
    44a2:	17ce                	slli	a5,a5,0x33
    44a4:	8fed                	and	a5,a5,a1
    44a6:	4905                	li	s2,1
    44a8:	d00613e3          	bnez	a2,41ae <__subtf3+0x186>
    44ac:	b319                	j	41b2 <__subtf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 69)
    44ae:	f80919e3          	bnez	s2,4440 <__subtf3+0x418>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    44b2:	00586813          	ori	a6,a6,5
    44b6:	b535                	j	42e2 <__subtf3+0x2ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 245)
    44b8:	006e64b3          	or	s1,t3,t1
    44bc:	009034b3          	snez	s1,s1
    44c0:	b931                	j	40dc <__subtf3+0xb4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 322)
    44c2:	18fd                	addi	a7,a7,-1
    44c4:	2b140363          	beq	s0,a7,476a <__subtf3+0x742>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 346)
    44c8:	2d170a63          	beq	a4,a7,479c <__subtf3+0x774>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 353)
    44cc:	2a0e9a63          	bnez	t4,4780 <__subtf3+0x758>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 354)
    44d0:	2c079f63          	bnez	a5,47ae <__subtf3+0x786>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    44d4:	0ffff5b7          	lui	a1,0xffff
    44d8:	4501                	li	a0,0
    44da:	158e                	slli	a1,a1,0x23
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    44dc:	4841                	li	a6,16
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:48 (discriminator 1)
    44de:	00182073          	csrs	fflags,a6
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:51 (discriminator 1)
    44e2:	70a2                	ld	ra,40(sp)
    44e4:	7402                	ld	s0,32(sp)
    44e6:	64e2                	ld	s1,24(sp)
    44e8:	6942                	ld	s2,16(sp)
    44ea:	69a2                	ld	s3,8(sp)
    44ec:	6a02                	ld	s4,0(sp)
    44ee:	6145                	addi	sp,sp,48
    44f0:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 72)
    44f2:	67a1                	lui	a5,0x8
    44f4:	00140693          	addi	a3,s0,1 # 8001 <__BSS_END__+0x7e1>
    44f8:	ffe78893          	addi	a7,a5,-2 # 7ffe <__BSS_END__+0x7de>
    44fc:	0116feb3          	and	t4,a3,a7
    4500:	200e9363          	bnez	t4,4706 <__subtf3+0x6de>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 128)
    4504:	01e5e6b3          	or	a3,a1,t5
    4508:	3a041663          	bnez	s0,48b4 <__subtf3+0x88c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 130)
    450c:	006e67b3          	or	a5,t3,t1
    4510:	3e068763          	beqz	a3,48fe <__subtf3+0x8d6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 133)
    4514:	2c078663          	beqz	a5,47e0 <__subtf3+0x7b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 139)
    4518:	006f04b3          	add	s1,t5,t1
    451c:	01e4bf33          	sltu	t5,s1,t5
    4520:	01c58333          	add	t1,a1,t3
    4524:	01e305b3          	add	a1,t1,t5
    4528:	0335d793          	srli	a5,a1,0x33
    452c:	8b85                	andi	a5,a5,1
    452e:	c20780e3          	beqz	a5,414e <__subtf3+0x126>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 141)
    4532:	57fd                	li	a5,-1
    4534:	17ce                	slli	a5,a5,0x33
    4536:	17fd                	addi	a5,a5,-1
    4538:	8dfd                	and	a1,a1,a5
    453a:	4405                	li	s0,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 141)
    453c:	0074f793          	andi	a5,s1,7
    4540:	b5c5                	j	4420 <__subtf3+0x3f8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 320)
    4542:	406f04b3          	sub	s1,t5,t1
    4546:	009f37b3          	sltu	a5,t5,s1
    454a:	41c58a33          	sub	s4,a1,t3
    454e:	40fa0a33          	sub	s4,s4,a5
    4552:	033a5793          	srli	a5,s4,0x33
    4556:	8b85                	andi	a5,a5,1
    4558:	1c079a63          	bnez	a5,472c <__subtf3+0x704>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 372)
    455c:	0144e7b3          	or	a5,s1,s4
    4560:	b8079de3          	bnez	a5,40fa <__subtf3+0xd2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 374)
    4564:	19f9                	addi	s3,s3,-2
    4566:	0019b913          	seqz	s2,s3
    456a:	4501                	li	a0,0
    456c:	4401                	li	s0,0
    456e:	b5a9                	j	43b8 <__subtf3+0x390>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 265)
    4570:	67a1                	lui	a5,0x8
    4572:	17fd                	addi	a5,a5,-1
    4574:	d0f70ae3          	beq	a4,a5,4288 <__subtf3+0x260>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 291)
    4578:	4785                	li	a5,1
    457a:	17ce                	slli	a5,a5,0x33
    457c:	4100083b          	negw	a6,a6
    4580:	8ddd                	or	a1,a1,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 300)
    4582:	07400793          	li	a5,116
    4586:	0f07c263          	blt	a5,a6,466a <__subtf3+0x642>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 301)
    458a:	03f00793          	li	a5,63
    458e:	2f07cf63          	blt	a5,a6,488c <__subtf3+0x864>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 303)
    4592:	04000793          	li	a5,64
    4596:	410787bb          	subw	a5,a5,a6
    459a:	00f594b3          	sll	s1,a1,a5
    459e:	010f5633          	srl	a2,t5,a6
    45a2:	00ff17b3          	sll	a5,t5,a5
    45a6:	8cd1                	or	s1,s1,a2
    45a8:	00f037b3          	snez	a5,a5
    45ac:	0105d833          	srl	a6,a1,a6
    45b0:	8cdd                	or	s1,s1,a5
    45b2:	410e0e33          	sub	t3,t3,a6
    45b6:	a875                	j	4672 <__subtf3+0x64a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 209)
    45b8:	67a1                	lui	a5,0x8
    45ba:	17fd                	addi	a5,a5,-1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44 (discriminator 209)
    45bc:	84fa                	mv	s1,t5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 209)
    45be:	e4f41be3          	bne	s0,a5,4414 <__subtf3+0x3ec>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 211)
    45c2:	01e5e7b3          	or	a5,a1,t5
    45c6:	e0079ce3          	bnez	a5,43de <__subtf3+0x3b6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    45ca:	4501                	li	a0,0
    45cc:	4781                	li	a5,0
    45ce:	4801                	li	a6,0
    45d0:	b1c5                	j	42b0 <__subtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 54)
    45d2:	006e64b3          	or	s1,t3,t1
    45d6:	009034b3          	snez	s1,s1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 69)
    45da:	94fa                	add	s1,s1,t5
    45dc:	01e4bf33          	sltu	t5,s1,t5
    45e0:	95fa                	add	a1,a1,t5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 127)
    45e2:	0335d793          	srli	a5,a1,0x33
    45e6:	8b85                	andi	a5,a5,1
    45e8:	e20786e3          	beqz	a5,4414 <__subtf3+0x3ec>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 187)
    45ec:	67a1                	lui	a5,0x8
    45ee:	0405                	addi	s0,s0,1
    45f0:	fff78713          	addi	a4,a5,-1 # 7fff <__BSS_END__+0x7df>
    45f4:	22e40763          	beq	s0,a4,4822 <__subtf3+0x7fa>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    45f8:	577d                	li	a4,-1
    45fa:	174e                	slli	a4,a4,0x33
    45fc:	177d                	addi	a4,a4,-1
    45fe:	8f6d                	and	a4,a4,a1
    4600:	0014d793          	srli	a5,s1,0x1
    4604:	8885                	andi	s1,s1,1
    4606:	8fc5                	or	a5,a5,s1
    4608:	03f71493          	slli	s1,a4,0x3f
    460c:	8cdd                	or	s1,s1,a5
    460e:	00175593          	srli	a1,a4,0x1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4612:	8b9d                	andi	a5,a5,7
    4614:	b531                	j	4420 <__subtf3+0x3f8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 411)
    4616:	fc15051b          	addiw	a0,a0,-63
    461a:	04000613          	li	a2,64
    461e:	00a5d7b3          	srl	a5,a1,a0
    4622:	00c70963          	beq	a4,a2,4634 <__subtf3+0x60c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 419)
    4626:	08000713          	li	a4,128
    462a:	9f15                	subw	a4,a4,a3
    462c:	00e595b3          	sll	a1,a1,a4
    4630:	00ba6a33          	or	s4,s4,a1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 422)
    4634:	01403a33          	snez	s4,s4
    4638:	00fa67b3          	or	a5,s4,a5
    463c:	84be                	mv	s1,a5
    463e:	4581                	li	a1,0
    4640:	be09                	j	4152 <__subtf3+0x12a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 247)
    4642:	fc08079b          	addiw	a5,a6,-64
    4646:	04000713          	li	a4,64
    464a:	00fe57b3          	srl	a5,t3,a5
    464e:	00e80a63          	beq	a6,a4,4662 <__subtf3+0x63a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 254)
    4652:	08000713          	li	a4,128
    4656:	4107073b          	subw	a4,a4,a6
    465a:	00ee1733          	sll	a4,t3,a4
    465e:	00e36333          	or	t1,t1,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 257)
    4662:	006034b3          	snez	s1,t1
    4666:	8cdd                	or	s1,s1,a5
    4668:	bc95                	j	40dc <__subtf3+0xb4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 302)
    466a:	01e5e4b3          	or	s1,a1,t5
    466e:	009034b3          	snez	s1,s1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 317)
    4672:	409304b3          	sub	s1,t1,s1
    4676:	00933333          	sltu	t1,t1,s1
    467a:	406e05b3          	sub	a1,t3,t1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45 (discriminator 317)
    467e:	843a                	mv	s0,a4
    4680:	8936                	mv	s2,a3
    4682:	b49d                	j	40e8 <__subtf3+0xc0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 73)
    4684:	01e5e7b3          	or	a5,a1,t5
    4688:	24078e63          	beqz	a5,48e4 <__subtf3+0x8bc>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 76)
    468c:	fff84813          	not	a6,a6
    4690:	30080963          	beqz	a6,49a2 <__subtf3+0x97a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 86)
    4694:	67a1                	lui	a5,0x8
    4696:	17fd                	addi	a5,a5,-1
    4698:	c8f711e3          	bne	a4,a5,431a <__subtf3+0x2f2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 101)
    469c:	006e6333          	or	t1,t3,t1
    46a0:	c40300e3          	beqz	t1,42e0 <__subtf3+0x2b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 103)
    46a4:	032e5813          	srli	a6,t3,0x32
    46a8:	00184813          	xori	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 103)
    46ac:	060e                	slli	a2,a2,0x3
    46ae:	03de1793          	slli	a5,t3,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 103)
    46b2:	00187813          	andi	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 103)
    46b6:	820d                	srli	a2,a2,0x3
    46b8:	00f66533          	or	a0,a2,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 103)
    46bc:	0812                	slli	a6,a6,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 103)
    46be:	003e5793          	srli	a5,t3,0x3
    46c2:	b6fd                	j	42b0 <__subtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 237)
    46c4:	0325d813          	srli	a6,a1,0x32
    46c8:	00184813          	xori	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 237)
    46cc:	050e                	slli	a0,a0,0x3
    46ce:	03d59793          	slli	a5,a1,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 237)
    46d2:	00187813          	andi	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 237)
    46d6:	810d                	srli	a0,a0,0x3
    46d8:	8d5d                	or	a0,a0,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 237)
    46da:	0812                	slli	a6,a6,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 237)
    46dc:	0035d793          	srli	a5,a1,0x3
    46e0:	bec1                	j	42b0 <__subtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 55)
    46e2:	04000793          	li	a5,64
    46e6:	410787bb          	subw	a5,a5,a6
    46ea:	00fe14b3          	sll	s1,t3,a5
    46ee:	01035733          	srl	a4,t1,a6
    46f2:	00f317b3          	sll	a5,t1,a5
    46f6:	8cd9                	or	s1,s1,a4
    46f8:	00f037b3          	snez	a5,a5
    46fc:	010e5333          	srl	t1,t3,a6
    4700:	8cdd                	or	s1,s1,a5
    4702:	959a                	add	a1,a1,t1
    4704:	bdd9                	j	45da <__subtf3+0x5b2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 129)
    4706:	17fd                	addi	a5,a5,-1
    4708:	22f68263          	beq	a3,a5,492c <__subtf3+0x904>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    470c:	006f07b3          	add	a5,t5,t1
    4710:	01c58733          	add	a4,a1,t3
    4714:	01e7bf33          	sltu	t5,a5,t5
    4718:	977a                	add	a4,a4,t5
    471a:	8385                	srli	a5,a5,0x1
    471c:	03f71493          	slli	s1,a4,0x3f
    4720:	8cdd                	or	s1,s1,a5
    4722:	00175593          	srli	a1,a4,0x1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4726:	8b9d                	andi	a5,a5,7
    4728:	8436                	mv	s0,a3
    472a:	b9dd                	j	4420 <__subtf3+0x3f8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 371)
    472c:	41e304b3          	sub	s1,t1,t5
    4730:	40be0a33          	sub	s4,t3,a1
    4734:	00933333          	sltu	t1,t1,s1
    4738:	406a0a33          	sub	s4,s4,t1
    473c:	8936                	mv	s2,a3
    473e:	ba75                	j	40fa <__subtf3+0xd2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 266)
    4740:	67a1                	lui	a5,0x8
    4742:	17fd                	addi	a5,a5,-1
    4744:	20f70363          	beq	a4,a5,494a <__subtf3+0x922>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    4748:	85f2                	mv	a1,t3
    474a:	849a                	mv	s1,t1
    474c:	843a                	mv	s0,a4
    474e:	8936                	mv	s2,a3
    4750:	b1d1                	j	4414 <__subtf3+0x3ec>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 28)
    4752:	006f04b3          	add	s1,t5,t1
    4756:	01e4bf33          	sltu	t5,s1,t5
    475a:	01c58333          	add	t1,a1,t3
    475e:	01e305b3          	add	a1,t1,t5
    4762:	b541                	j	45e2 <__subtf3+0x5ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 73)
    4764:	cc090ee3          	beqz	s2,4440 <__subtf3+0x418>
    4768:	b3a9                	j	44b2 <__subtf3+0x48a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 340)
    476a:	020e8763          	beqz	t4,4798 <__subtf3+0x770>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 342)
    476e:	0325d813          	srli	a6,a1,0x32
    4772:	00184813          	xori	a6,a6,1
    4776:	00187813          	andi	a6,a6,1
    477a:	0812                	slli	a6,a6,0x4
    477c:	02870063          	beq	a4,s0,479c <__subtf3+0x774>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 355)
    4780:	b2079ae3          	bnez	a5,42b4 <__subtf3+0x28c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4784:	00351713          	slli	a4,a0,0x3
    4788:	03d59793          	slli	a5,a1,0x3d
    478c:	830d                	srli	a4,a4,0x3
    478e:	00e7e533          	or	a0,a5,a4
    4792:	0035d793          	srli	a5,a1,0x3
    4796:	be29                	j	42b0 <__subtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    4798:	d2871ce3          	bne	a4,s0,44d0 <__subtf3+0x4a8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 347)
    479c:	d20788e3          	beqz	a5,44cc <__subtf3+0x4a4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 349)
    47a0:	032e5793          	srli	a5,t3,0x32
    47a4:	8b85                	andi	a5,a5,1
    47a6:	e391                	bnez	a5,47aa <__subtf3+0x782>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    47a8:	4841                	li	a6,16
    47aa:	b00e95e3          	bnez	t4,42b4 <__subtf3+0x28c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    47ae:	00361793          	slli	a5,a2,0x3
    47b2:	838d                	srli	a5,a5,0x3
    47b4:	03de1513          	slli	a0,t3,0x3d
    47b8:	8d5d                	or	a0,a0,a5
    47ba:	8936                	mv	s2,a3
    47bc:	003e5793          	srli	a5,t3,0x3
    47c0:	bcc5                	j	42b0 <__subtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 219)
    47c2:	406f04b3          	sub	s1,t5,t1
    47c6:	009f3f33          	sltu	t5,t5,s1
    47ca:	41c58333          	sub	t1,a1,t3
    47ce:	41e305b3          	sub	a1,t1,t5
    47d2:	ba19                	j	40e8 <__subtf3+0xc0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 323)
    47d4:	12078063          	beqz	a5,48f4 <__subtf3+0x8cc>
    47d8:	4781                	li	a5,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    47da:	85f2                	mv	a1,t3
    47dc:	8f1a                	mv	t5,t1
    47de:	8936                	mv	s2,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    47e0:	84fa                	mv	s1,t5
    47e2:	baa5                	j	415a <__subtf3+0x132>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:44 (discriminator 18)
    47e4:	84fa                	mv	s1,t5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 18)
    47e6:	c31417e3          	bne	s0,a7,4414 <__subtf3+0x3ec>
    47ea:	bbe1                	j	45c2 <__subtf3+0x59a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 18)
    47ec:	4805                	li	a6,1
    47ee:	98090ae3          	beqz	s2,4182 <__subtf3+0x15a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 31)
    47f2:	ff863713          	sltiu	a4,a2,-8
    47f6:	00174713          	xori	a4,a4,1
    47fa:	1702                	slli	a4,a4,0x20
    47fc:	9301                	srli	a4,a4,0x20
    47fe:	96ba                	add	a3,a3,a4
    4800:	b249                	j	4182 <__subtf3+0x15a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 16)
    4802:	00f67713          	andi	a4,a2,15
    4806:	4511                	li	a0,4
    4808:	96a70de3          	beq	a4,a0,4182 <__subtf3+0x15a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 20)
    480c:	ffc63713          	sltiu	a4,a2,-4
    4810:	00174713          	xori	a4,a4,1
    4814:	1702                	slli	a4,a4,0x20
    4816:	9301                	srli	a4,a4,0x20
    4818:	96ba                	add	a3,a3,a4
    481a:	b2a5                	j	4182 <__subtf3+0x15a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 19)
    481c:	960913e3          	bnez	s2,4182 <__subtf3+0x15a>
    4820:	bfc9                	j	47f2 <__subtf3+0x7ca>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 189)
    4822:	04098e63          	beqz	s3,487e <__subtf3+0x856>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 192)
    4826:	470d                	li	a4,3
    4828:	1ae98063          	beq	s3,a4,49c8 <__subtf3+0x9a0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 196)
    482c:	4709                	li	a4,2
    482e:	4815                	li	a6,5
    4830:	c0e992e3          	bne	s3,a4,4434 <__subtf3+0x40c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 197)
    4834:	aa0917e3          	bnez	s2,42e2 <__subtf3+0x2ba>
    4838:	ffe78413          	addi	s0,a5,-2 # 7ffe <__BSS_END__+0x7de>
    483c:	55fd                	li	a1,-1
    483e:	54fd                	li	s1,-1
    4840:	ba9d                	j	41b6 <__subtf3+0x18e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4842:	03371793          	slli	a5,a4,0x33
    4846:	8fed                	and	a5,a5,a1
    4848:	960695e3          	bnez	a3,41b2 <__subtf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 58)
    484c:	960803e3          	beqz	a6,41b2 <__subtf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4850:	00286813          	ori	a6,a6,2
    4854:	bab9                	j	41b2 <__subtf3+0x18a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 44)
    4856:	01e5ef33          	or	t5,a1,t5
    485a:	a80f03e3          	beqz	t5,42e0 <__subtf3+0x2b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 46)
    485e:	0325d813          	srli	a6,a1,0x32
    4862:	00184813          	xori	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 46)
    4866:	003ed713          	srli	a4,t4,0x3
    486a:	03d59793          	slli	a5,a1,0x3d
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 46)
    486e:	00187813          	andi	a6,a6,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 46)
    4872:	8d79                	and	a0,a0,a4
    4874:	8d5d                	or	a0,a0,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 46)
    4876:	0812                	slli	a6,a6,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 46)
    4878:	0035d793          	srli	a5,a1,0x3
    487c:	bc15                	j	42b0 <__subtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    487e:	4815                	li	a6,5
    4880:	b48d                	j	42e2 <__subtf3+0x2ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 111)
    4882:	01e5e4b3          	or	s1,a1,t5
    4886:	009034b3          	snez	s1,s1
    488a:	b4c9                	j	434c <__subtf3+0x324>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 304)
    488c:	fc08079b          	addiw	a5,a6,-64
    4890:	04000613          	li	a2,64
    4894:	00f5d7b3          	srl	a5,a1,a5
    4898:	00c80a63          	beq	a6,a2,48ac <__subtf3+0x884>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 311)
    489c:	08000613          	li	a2,128
    48a0:	4106063b          	subw	a2,a2,a6
    48a4:	00c59633          	sll	a2,a1,a2
    48a8:	00cf6f33          	or	t5,t5,a2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 314)
    48ac:	01e034b3          	snez	s1,t5
    48b0:	8cdd                	or	s1,s1,a5
    48b2:	b3c1                	j	4672 <__subtf3+0x64a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 131)
    48b4:	17fd                	addi	a5,a5,-1
    48b6:	0af40863          	beq	s0,a5,4966 <__subtf3+0x93e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 151)
    48ba:	14f70063          	beq	a4,a5,49fa <__subtf3+0x9d2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 158)
    48be:	cae9                	beqz	a3,4990 <__subtf3+0x968>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 160)
    48c0:	006e6333          	or	t1,t3,t1
    48c4:	9e0318e3          	bnez	t1,42b4 <__subtf3+0x28c>
    48c8:	bd75                	j	4784 <__subtf3+0x75c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 276)
    48ca:	41e304b3          	sub	s1,t1,t5
    48ce:	40be0e33          	sub	t3,t3,a1
    48d2:	009337b3          	sltu	a5,t1,s1
    48d6:	40fe05b3          	sub	a1,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45 (discriminator 276)
    48da:	843a                	mv	s0,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 276)
    48dc:	8936                	mv	s2,a3
    48de:	b029                	j	40e8 <__subtf3+0xc0>
    48e0:	8936                	mv	s2,a3
    48e2:	bafd                	j	42e0 <__subtf3+0x2b8>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 75)
    48e4:	67a1                	lui	a5,0x8
    48e6:	17fd                	addi	a5,a5,-1
    48e8:	0ef70963          	beq	a4,a5,49da <__subtf3+0x9b2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    48ec:	85f2                	mv	a1,t3
    48ee:	849a                	mv	s1,t1
    48f0:	843a                	mv	s0,a4
    48f2:	b60d                	j	4414 <__subtf3+0x3ec>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 336)
    48f4:	19f9                	addi	s3,s3,-2
    48f6:	0019b913          	seqz	s2,s3
    48fa:	4501                	li	a0,0
    48fc:	bc75                	j	43b8 <__subtf3+0x390>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45
    48fe:	85f2                	mv	a1,t3
    4900:	849a                	mv	s1,t1
    4902:	b881                	j	4152 <__subtf3+0x12a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 113)
    4904:	fc08079b          	addiw	a5,a6,-64
    4908:	04000693          	li	a3,64
    490c:	00f5d7b3          	srl	a5,a1,a5
    4910:	00d80a63          	beq	a6,a3,4924 <__subtf3+0x8fc>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 120)
    4914:	08000693          	li	a3,128
    4918:	410686bb          	subw	a3,a3,a6
    491c:	00d596b3          	sll	a3,a1,a3
    4920:	00df6f33          	or	t5,t5,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 123)
    4924:	01e034b3          	snez	s1,t5
    4928:	8cdd                	or	s1,s1,a5
    492a:	b40d                	j	434c <__subtf3+0x324>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 171)
    492c:	f40989e3          	beqz	s3,487e <__subtf3+0x856>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 174)
    4930:	478d                	li	a5,3
    4932:	0ef98263          	beq	s3,a5,4a16 <__subtf3+0x9ee>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 178)
    4936:	4789                	li	a5,2
    4938:	4815                	li	a6,5
    493a:	b0f993e3          	bne	s3,a5,4440 <__subtf3+0x418>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 179)
    493e:	9a0912e3          	bnez	s2,42e2 <__subtf3+0x2ba>
    4942:	8446                	mv	s0,a7
    4944:	55fd                	li	a1,-1
    4946:	54fd                	li	s1,-1
    4948:	b0bd                	j	41b6 <__subtf3+0x18e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 268)
    494a:	006e67b3          	or	a5,t3,t1
    494e:	c7c5                	beqz	a5,49f6 <__subtf3+0x9ce>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 270)
    4950:	032e5813          	srli	a6,t3,0x32
    4954:	00184813          	xori	a6,a6,1
    4958:	00187813          	andi	a6,a6,1
    495c:	0812                	slli	a6,a6,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45 (discriminator 270)
    495e:	85f2                	mv	a1,t3
    4960:	8f1a                	mv	t5,t1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 270)
    4962:	8936                	mv	s2,a3
    4964:	b461                	j	43ec <__subtf3+0x3c4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 145)
    4966:	c2cd                	beqz	a3,4a08 <__subtf3+0x9e0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 147)
    4968:	0325d813          	srli	a6,a1,0x32
    496c:	00184813          	xori	a6,a6,1
    4970:	00187813          	andi	a6,a6,1
    4974:	0812                	slli	a6,a6,0x4
    4976:	f48715e3          	bne	a4,s0,48c0 <__subtf3+0x898>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    497a:	006e6333          	or	t1,t3,t1
    497e:	e00303e3          	beqz	t1,4784 <__subtf3+0x75c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 154)
    4982:	032e5793          	srli	a5,t3,0x32
    4986:	8b85                	andi	a5,a5,1
    4988:	e391                	bnez	a5,498c <__subtf3+0x964>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    498a:	4841                	li	a6,16
    498c:	920694e3          	bnez	a3,42b4 <__subtf3+0x28c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    4990:	00361793          	slli	a5,a2,0x3
    4994:	838d                	srli	a5,a5,0x3
    4996:	03de1513          	slli	a0,t3,0x3d
    499a:	8d5d                	or	a0,a0,a5
    499c:	003e5793          	srli	a5,t3,0x3
    49a0:	ba01                	j	42b0 <__subtf3+0x288>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 85)
    49a2:	006f04b3          	add	s1,t5,t1
    49a6:	9e2e                	add	t3,t3,a1
    49a8:	0064b7b3          	sltu	a5,s1,t1
    49ac:	00fe05b3          	add	a1,t3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45 (discriminator 85)
    49b0:	843a                	mv	s0,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 85)
    49b2:	b905                	j	45e2 <__subtf3+0x5ba>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 334)
    49b4:	00e667b3          	or	a5,a2,a4
    49b8:	df95                	beqz	a5,48f4 <__subtf3+0x8cc>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    49ba:	8f32                	mv	t5,a2
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:47
    49bc:	00767793          	andi	a5,a2,7
    49c0:	85ba                	mv	a1,a4
    49c2:	84fa                	mv	s1,t5
    49c4:	f96ff06f          	j	415a <__subtf3+0x132>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 193)
    49c8:	4815                	li	a6,5
    49ca:	90090ce3          	beqz	s2,42e2 <__subtf3+0x2ba>
    49ce:	54fd                	li	s1,-1
    49d0:	55fd                	li	a1,-1
    49d2:	ffe78413          	addi	s0,a5,-2 # 7ffe <__BSS_END__+0x7de>
    49d6:	4601                	li	a2,0
    49d8:	b4e1                	j	44a0 <__subtf3+0x478>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 77)
    49da:	006e67b3          	or	a5,t3,t1
    49de:	be0786e3          	beqz	a5,45ca <__subtf3+0x5a2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 79)
    49e2:	032e5813          	srli	a6,t3,0x32
    49e6:	00184813          	xori	a6,a6,1
    49ea:	00187813          	andi	a6,a6,1
    49ee:	0812                	slli	a6,a6,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:45 (discriminator 79)
    49f0:	85f2                	mv	a1,t3
    49f2:	8f1a                	mv	t5,t1
    49f4:	bae5                	j	43ec <__subtf3+0x3c4>
    49f6:	8936                	mv	s2,a3
    49f8:	bec9                	j	45ca <__subtf3+0x5a2>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 152)
    49fa:	006e6333          	or	t1,t3,t1
    49fe:	f80312e3          	bnez	t1,4982 <__subtf3+0x95a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46
    4a02:	d80691e3          	bnez	a3,4784 <__subtf3+0x75c>
    4a06:	b769                	j	4990 <__subtf3+0x968>
    4a08:	f88714e3          	bne	a4,s0,4990 <__subtf3+0x968>
    4a0c:	006e6333          	or	t1,t3,t1
    4a10:	f60319e3          	bnez	t1,4982 <__subtf3+0x95a>
    4a14:	bfb5                	j	4990 <__subtf3+0x968>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 175)
    4a16:	e60904e3          	beqz	s2,487e <__subtf3+0x856>
    4a1a:	4601                	li	a2,0
    4a1c:	4815                	li	a6,5
    4a1e:	54fd                	li	s1,-1
    4a20:	55fd                	li	a1,-1
    4a22:	8446                	mv	s0,a7
    4a24:	bcb5                	j	44a0 <__subtf3+0x478>

0000000000004a26 <__fixtfsi>:
__fixtfsi():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:36
    4a26:	882a                	mv	a6,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:41
    4a28:	002027f3          	frrm	a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43
    4a2c:	6611                	lui	a2,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:42
    4a2e:	00159793          	slli	a5,a1,0x1
    4a32:	01059713          	slli	a4,a1,0x10
    4a36:	93c5                	srli	a5,a5,0x31
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43
    4a38:	ffe60693          	addi	a3,a2,-2 # 3ffe <__multf3+0x708>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:42
    4a3c:	8341                	srli	a4,a4,0x10
    4a3e:	91fd                	srli	a1,a1,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43
    4a40:	00f6c863          	blt	a3,a5,4a50 <__fixtfsi+0x2a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 1)
    4a44:	cbad                	beqz	a5,4ab6 <__fixtfsi+0x90>
    4a46:	4501                	li	a0,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43
    4a48:	4685                	li	a3,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:44
    4a4a:	0016a073          	csrs	fflags,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:47
    4a4e:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 10)
    4a50:	01d60693          	addi	a3,a2,29
    4a54:	02f6d563          	bge	a3,a5,4a7e <__fixtfsi+0x58>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 14)
    4a58:	800006b7          	lui	a3,0x80000
    4a5c:	fff6c693          	not	a3,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:46 (discriminator 14)
    4a60:	00b6853b          	addw	a0,a3,a1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 14)
    4a64:	cdb1                	beqz	a1,4ac0 <__fixtfsi+0x9a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 20)
    4a66:	0679                	addi	a2,a2,30
    4a68:	46c1                	li	a3,16
    4a6a:	fec790e3          	bne	a5,a2,4a4a <__fixtfsi+0x24>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 22)
    4a6e:	01175793          	srli	a5,a4,0x11
    4a72:	ffe1                	bnez	a5,4a4a <__fixtfsi+0x24>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 25)
    4a74:	173e                	slli	a4,a4,0x2f
    4a76:	01076733          	or	a4,a4,a6
    4a7a:	eb15                	bnez	a4,4aae <__fixtfsi+0x88>
    4a7c:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 13)
    4a7e:	4685                	li	a3,1
    4a80:	16c2                	slli	a3,a3,0x30
    4a82:	8f55                	or	a4,a4,a3
    4a84:	6611                	lui	a2,0x4
    4a86:	76f1                	lui	a3,0xffffc
    4a88:	26c5                	addiw	a3,a3,17
    4a8a:	02f6061b          	addiw	a2,a2,47
    4a8e:	9ebd                	addw	a3,a3,a5
    4a90:	40f607bb          	subw	a5,a2,a5
    4a94:	00d716b3          	sll	a3,a4,a3
    4a98:	00f75733          	srl	a4,a4,a5
    4a9c:	8ec9                	or	a3,a3,a0
    4a9e:	0007079b          	sext.w	a5,a4
    4aa2:	c199                	beqz	a1,4aa8 <__fixtfsi+0x82>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 45)
    4aa4:	40f007bb          	negw	a5,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:46 (discriminator 56)
    4aa8:	0007851b          	sext.w	a0,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 56)
    4aac:	ca89                	beqz	a3,4abe <__fixtfsi+0x98>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43
    4aae:	4685                	li	a3,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:44
    4ab0:	0016a073          	csrs	fflags,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:47
    4ab4:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43 (discriminator 3)
    4ab6:	8f49                	or	a4,a4,a0
    4ab8:	4501                	li	a0,0
    4aba:	fb75                	bnez	a4,4aae <__fixtfsi+0x88>
    4abc:	8082                	ret
    4abe:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixtfsi.c:43
    4ac0:	46c1                	li	a3,16
    4ac2:	b761                	j	4a4a <__fixtfsi+0x24>

0000000000004ac4 <__fixunstfsi>:
__fixunstfsi():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:41
    4ac4:	002027f3          	frrm	a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43
    4ac8:	6611                	lui	a2,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:42
    4aca:	00159793          	slli	a5,a1,0x1
    4ace:	01059713          	slli	a4,a1,0x10
    4ad2:	93c5                	srli	a5,a5,0x31
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43
    4ad4:	ffe60693          	addi	a3,a2,-2 # 3ffe <__multf3+0x708>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:42
    4ad8:	8341                	srli	a4,a4,0x10
    4ada:	91fd                	srli	a1,a1,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43
    4adc:	00f6c863          	blt	a3,a5,4aec <__fixunstfsi+0x28>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43 (discriminator 1)
    4ae0:	c395                	beqz	a5,4b04 <__fixunstfsi+0x40>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43
    4ae2:	4501                	li	a0,0
    4ae4:	4785                	li	a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:44
    4ae6:	0017a073          	csrs	fflags,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:47
    4aea:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43 (discriminator 10)
    4aec:	0015b693          	seqz	a3,a1
    4af0:	96b2                	add	a3,a3,a2
    4af2:	06f9                	addi	a3,a3,30
    4af4:	00d7cb63          	blt	a5,a3,4b0a <__fixunstfsi+0x46>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43 (discriminator 21)
    4af8:	fff5851b          	addiw	a0,a1,-1
    4afc:	47c1                	li	a5,16
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:44 (discriminator 21)
    4afe:	0017a073          	csrs	fflags,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:47 (discriminator 21)
    4b02:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43 (discriminator 3)
    4b04:	8d59                	or	a0,a0,a4
    4b06:	fd71                	bnez	a0,4ae2 <__fixunstfsi+0x1e>
    4b08:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43 (discriminator 17)
    4b0a:	e585                	bnez	a1,4b32 <__fixunstfsi+0x6e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43 (discriminator 19)
    4b0c:	4685                	li	a3,1
    4b0e:	16c2                	slli	a3,a3,0x30
    4b10:	8f55                	or	a4,a4,a3
    4b12:	76f1                	lui	a3,0xffffc
    4b14:	26c5                	addiw	a3,a3,17
    4b16:	6611                	lui	a2,0x4
    4b18:	9ebd                	addw	a3,a3,a5
    4b1a:	02f6061b          	addiw	a2,a2,47
    4b1e:	9e1d                	subw	a2,a2,a5
    4b20:	00d717b3          	sll	a5,a4,a3
    4b24:	8fc9                	or	a5,a5,a0
    4b26:	00c75733          	srl	a4,a4,a2
    4b2a:	0007051b          	sext.w	a0,a4
    4b2e:	e789                	bnez	a5,4b38 <__fixunstfsi+0x74>
    4b30:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/fixunstfsi.c:43
    4b32:	4501                	li	a0,0
    4b34:	47c1                	li	a5,16
    4b36:	bf45                	j	4ae6 <__fixunstfsi+0x22>
    4b38:	4785                	li	a5,1
    4b3a:	b775                	j	4ae6 <__fixunstfsi+0x22>

0000000000004b3c <__floatsitf>:
__floatsitf():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:37
    4b3c:	1101                	addi	sp,sp,-32
    4b3e:	ec06                	sd	ra,24(sp)
    4b40:	e822                	sd	s0,16(sp)
    4b42:	e426                	sd	s1,8(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:41
    4b44:	c531                	beqz	a0,4b90 <__floatsitf+0x54>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:41 (discriminator 1)
    4b46:	0005079b          	sext.w	a5,a0
    4b4a:	01f5549b          	srliw	s1,a0,0x1f
    4b4e:	04054563          	bltz	a0,4b98 <__floatsitf+0x5c>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:41 (discriminator 9)
    4b52:	02079413          	slli	s0,a5,0x20
    4b56:	9001                	srli	s0,s0,0x20
    4b58:	8522                	mv	a0,s0
    4b5a:	17c000ef          	jal	ra,4cd6 <__clzdi2>
    4b5e:	6711                	lui	a4,0x4
    4b60:	ff15079b          	addiw	a5,a0,-15
    4b64:	03e7071b          	addiw	a4,a4,62
    4b68:	00f417b3          	sll	a5,s0,a5
    4b6c:	9f09                	subw	a4,a4,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:42 (discriminator 9)
    4b6e:	07c2                	slli	a5,a5,0x10
    4b70:	1746                	slli	a4,a4,0x31
    4b72:	83c1                	srli	a5,a5,0x10
    4b74:	9345                	srli	a4,a4,0x31
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:45 (discriminator 126)
    4b76:	60e2                	ld	ra,24(sp)
    4b78:	6442                	ld	s0,16(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:42 (discriminator 126)
    4b7a:	00f49593          	slli	a1,s1,0xf
    4b7e:	07c2                	slli	a5,a5,0x10
    4b80:	8dd9                	or	a1,a1,a4
    4b82:	15c2                	slli	a1,a1,0x30
    4b84:	83c1                	srli	a5,a5,0x10
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:45 (discriminator 126)
    4b86:	64a2                	ld	s1,8(sp)
    4b88:	4501                	li	a0,0
    4b8a:	8ddd                	or	a1,a1,a5
    4b8c:	6105                	addi	sp,sp,32
    4b8e:	8082                	ret
    4b90:	4481                	li	s1,0
    4b92:	4701                	li	a4,0
    4b94:	4781                	li	a5,0
    4b96:	b7c5                	j	4b76 <__floatsitf+0x3a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatsitf.c:41 (discriminator 3)
    4b98:	40f007bb          	negw	a5,a5
    4b9c:	bf5d                	j	4b52 <__floatsitf+0x16>

0000000000004b9e <__floatunsitf>:
__floatunsitf():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:41
    4b9e:	cd1d                	beqz	a0,4bdc <__floatunsitf+0x3e>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:37 (discriminator 9)
    4ba0:	1141                	addi	sp,sp,-16
    4ba2:	e022                	sd	s0,0(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:41 (discriminator 9)
    4ba4:	02051413          	slli	s0,a0,0x20
    4ba8:	9001                	srli	s0,s0,0x20
    4baa:	8522                	mv	a0,s0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:37 (discriminator 9)
    4bac:	e406                	sd	ra,8(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:41 (discriminator 9)
    4bae:	128000ef          	jal	ra,4cd6 <__clzdi2>
    4bb2:	ff15079b          	addiw	a5,a0,-15
    4bb6:	6591                	lui	a1,0x4
    4bb8:	00f417b3          	sll	a5,s0,a5
    4bbc:	03e5859b          	addiw	a1,a1,62
    4bc0:	9d89                	subw	a1,a1,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:42 (discriminator 9)
    4bc2:	07c2                	slli	a5,a5,0x10
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:45 (discriminator 9)
    4bc4:	60a2                	ld	ra,8(sp)
    4bc6:	6402                	ld	s0,0(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:42 (discriminator 9)
    4bc8:	15c6                	slli	a1,a1,0x31
    4bca:	83c1                	srli	a5,a5,0x10
    4bcc:	91c5                	srli	a1,a1,0x31
    4bce:	07c2                	slli	a5,a5,0x10
    4bd0:	15c2                	slli	a1,a1,0x30
    4bd2:	83c1                	srli	a5,a5,0x10
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:45 (discriminator 9)
    4bd4:	4501                	li	a0,0
    4bd6:	8ddd                	or	a1,a1,a5
    4bd8:	0141                	addi	sp,sp,16
    4bda:	8082                	ret
    4bdc:	4781                	li	a5,0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:42
    4bde:	4581                	li	a1,0
    4be0:	07c2                	slli	a5,a5,0x10
    4be2:	83c1                	srli	a5,a5,0x10
    4be4:	15c2                	slli	a1,a1,0x30
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/floatunsitf.c:45
    4be6:	4501                	li	a0,0
    4be8:	8ddd                	or	a1,a1,a5
    4bea:	8082                	ret

0000000000004bec <__extenddftf2>:
__extenddftf2():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:38
    4bec:	1101                	addi	sp,sp,-32
    4bee:	e2050753          	fmv.x.d	a4,fa0
    4bf2:	ec06                	sd	ra,24(sp)
    4bf4:	e822                	sd	s0,16(sp)
    4bf6:	e426                	sd	s1,8(sp)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:44
    4bf8:	002027f3          	frrm	a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:45
    4bfc:	03475793          	srli	a5,a4,0x34
    4c00:	7ff7f793          	andi	a5,a5,2047
    4c04:	567d                	li	a2,-1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49
    4c06:	00178693          	addi	a3,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:45
    4c0a:	00c65513          	srli	a0,a2,0xc
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49
    4c0e:	7fe6f693          	andi	a3,a3,2046
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:45
    4c12:	00e57433          	and	s0,a0,a4
    4c16:	03f75493          	srli	s1,a4,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49
    4c1a:	c695                	beqz	a3,4c46 <__extenddftf2+0x5a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 1)
    4c1c:	6711                	lui	a4,0x4
    4c1e:	c0070713          	addi	a4,a4,-1024 # 3c00 <__multf3+0x30a>
    4c22:	97ba                	add	a5,a5,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51 (discriminator 1)
    4c24:	17c6                	slli	a5,a5,0x31
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 1)
    4c26:	00445593          	srli	a1,s0,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51 (discriminator 1)
    4c2a:	93c5                	srli	a5,a5,0x31
    4c2c:	1472                	slli	s0,s0,0x3c
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51
    4c2e:	17c6                	slli	a5,a5,0x31
    4c30:	8385                	srli	a5,a5,0x1
    4c32:	03f49713          	slli	a4,s1,0x3f
    4c36:	8ddd                	or	a1,a1,a5
    4c38:	8522                	mv	a0,s0
    4c3a:	8dd9                	or	a1,a1,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:55
    4c3c:	60e2                	ld	ra,24(sp)
    4c3e:	6442                	ld	s0,16(sp)
    4c40:	64a2                	ld	s1,8(sp)
    4c42:	6105                	addi	sp,sp,32
    4c44:	8082                	ret
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 2)
    4c46:	eb9d                	bnez	a5,4c7c <__extenddftf2+0x90>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 12)
    4c48:	c835                	beqz	s0,4cbc <__extenddftf2+0xd0>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 16)
    4c4a:	8522                	mv	a0,s0
    4c4c:	08a000ef          	jal	ra,4cd6 <__clzdi2>
    4c50:	0005071b          	sext.w	a4,a0
    4c54:	47b9                	li	a5,14
    4c56:	06e7ca63          	blt	a5,a4,4cca <__extenddftf2+0xde>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 29)
    4c5a:	45bd                	li	a1,15
    4c5c:	9d89                	subw	a1,a1,a0
    4c5e:	0315079b          	addiw	a5,a0,49
    4c62:	00b455b3          	srl	a1,s0,a1
    4c66:	00f41433          	sll	s0,s0,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 38)
    4c6a:	6791                	lui	a5,0x4
    4c6c:	c0c7879b          	addiw	a5,a5,-1012
    4c70:	9f89                	subw	a5,a5,a0
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51 (discriminator 38)
    4c72:	05c2                	slli	a1,a1,0x10
    4c74:	17c6                	slli	a5,a5,0x31
    4c76:	81c1                	srli	a1,a1,0x10
    4c78:	93c5                	srli	a5,a5,0x31
    4c7a:	bf55                	j	4c2e <__extenddftf2+0x42>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 9)
    4c7c:	c039                	beqz	s0,4cc2 <__extenddftf2+0xd6>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 39)
    4c7e:	4705                	li	a4,1
    4c80:	173e                	slli	a4,a4,0x2f
    4c82:	00445593          	srli	a1,s0,0x4
    4c86:	8dd9                	or	a1,a1,a4
    4c88:	03345793          	srli	a5,s0,0x33
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51 (discriminator 39)
    4c8c:	8241                	srli	a2,a2,0x10
    4c8e:	07fff6b7          	lui	a3,0x7fff
    4c92:	1692                	slli	a3,a3,0x24
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 39)
    4c94:	0017c793          	xori	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51 (discriminator 39)
    4c98:	8df1                	and	a1,a1,a2
    4c9a:	8dd5                	or	a1,a1,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 39)
    4c9c:	8b85                	andi	a5,a5,1
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51 (discriminator 39)
    4c9e:	03f49713          	slli	a4,s1,0x3f
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 39)
    4ca2:	0047969b          	slliw	a3,a5,0x4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:51 (discriminator 39)
    4ca6:	03c41513          	slli	a0,s0,0x3c
    4caa:	8dd9                	or	a1,a1,a4
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:52 (discriminator 39)
    4cac:	dbc1                	beqz	a5,4c3c <__extenddftf2+0x50>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:52 (discriminator 1)
    4cae:	0016a073          	csrs	fflags,a3
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:55 (discriminator 1)
    4cb2:	60e2                	ld	ra,24(sp)
    4cb4:	6442                	ld	s0,16(sp)
    4cb6:	64a2                	ld	s1,8(sp)
    4cb8:	6105                	addi	sp,sp,32
    4cba:	8082                	ret
    4cbc:	4781                	li	a5,0
    4cbe:	4581                	li	a1,0
    4cc0:	b7bd                	j	4c2e <__extenddftf2+0x42>
    4cc2:	67a1                	lui	a5,0x8
    4cc4:	17fd                	addi	a5,a5,-1
    4cc6:	4581                	li	a1,0
    4cc8:	b79d                	j	4c2e <__extenddftf2+0x42>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/soft-fp/extenddftf2.c:49 (discriminator 30)
    4cca:	ff15059b          	addiw	a1,a0,-15
    4cce:	00b415b3          	sll	a1,s0,a1
    4cd2:	4401                	li	s0,0
    4cd4:	bf59                	j	4c6a <__extenddftf2+0x7e>

0000000000004cd6 <__clzdi2>:
__clzdi2():
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/libgcc2.c:690
    4cd6:	03800793          	li	a5,56
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/libgcc2.c:690 (discriminator 20)
    4cda:	00f55733          	srl	a4,a0,a5
    4cde:	0ff77693          	zext.b	a3,a4
    4ce2:	ee99                	bnez	a3,4d00 <__clzdi2+0x2a>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/libgcc2.c:690 (discriminator 18)
    4ce4:	17e1                	addi	a5,a5,-8
    4ce6:	fbf5                	bnez	a5,4cda <__clzdi2+0x4>
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/libgcc2.c:690
    4ce8:	00002797          	auipc	a5,0x2
    4cec:	4a87b783          	ld	a5,1192(a5) # 7190 <_GLOBAL_OFFSET_TABLE_+0x78>
    4cf0:	97aa                	add	a5,a5,a0
    4cf2:	0007c503          	lbu	a0,0(a5)
    4cf6:	04000693          	li	a3,64
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/libgcc2.c:693
    4cfa:	40a6853b          	subw	a0,a3,a0
    4cfe:	8082                	ret
    4d00:	04000693          	li	a3,64
    4d04:	8e9d                	sub	a3,a3,a5
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/libgcc2.c:690
    4d06:	853a                	mv	a0,a4
    4d08:	00002797          	auipc	a5,0x2
    4d0c:	4887b783          	ld	a5,1160(a5) # 7190 <_GLOBAL_OFFSET_TABLE_+0x78>
    4d10:	97aa                	add	a5,a5,a0
    4d12:	0007c503          	lbu	a0,0(a5)
/tmp/m1132/build/local/riscv64-linux-musl/obj_gcc/riscv64-linux-musl/libgcc/../../../src_gcc/libgcc/libgcc2.c:693
    4d16:	40a6853b          	subw	a0,a3,a0
    4d1a:	8082                	ret
