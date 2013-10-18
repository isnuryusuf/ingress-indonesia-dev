package com.nianticproject.ingress.common.k;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.o;

public final class q
  implements o
{
  private static final Vector3 a = new Vector3(-0.1825742F, 0.3651484F, 0.9128709F);
  private final Matrix4 b = new Matrix4();
  private float c = 1.0F;
  private float d;
  private float e;
  private boolean f;
  private float g;
  private boolean h;

  public final void a(float paramFloat1, float paramFloat2)
  {
    this.d = (0.5F - paramFloat1 / 180.0F);
    this.e = (paramFloat2 / 360.0F);
    float f1 = this.e;
    if (this.e > 0.5F);
    for (float f2 = -1.0F; ; f2 = 0.0F)
    {
      this.e = (f1 + (f2 + 0.5F));
      this.g = 0.0F;
      return;
    }
  }

  // ERROR //
  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, com.nianticproject.ingress.common.j.n paramn)
  {
    // Byte code:
    //   0: getstatic 58	com/badlogic/gdx/Gdx:gl20	Lcom/badlogic/gdx/graphics/GL20;
    //   3: astore 4
    //   5: aload_0
    //   6: getfield 38	com/nianticproject/ingress/common/k/q:b	Lcom/badlogic/gdx/math/Matrix4;
    //   9: aload_2
    //   10: invokevirtual 63	com/nianticproject/ingress/common/j/f:e	()Lcom/badlogic/gdx/math/Matrix4;
    //   13: invokevirtual 67	com/badlogic/gdx/math/Matrix4:set	(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    //   16: aload_1
    //   17: invokevirtual 70	com/badlogic/gdx/math/Matrix4:mul	(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;
    //   20: pop
    //   21: aload 4
    //   23: sipush 2884
    //   26: invokeinterface 76 2 0
    //   31: aload 4
    //   33: sipush 1029
    //   36: invokeinterface 79 2 0
    //   41: aload 4
    //   43: sipush 2305
    //   46: invokeinterface 82 2 0
    //   51: aload 4
    //   53: iconst_1
    //   54: invokeinterface 86 2 0
    //   59: getstatic 91	com/nianticproject/ingress/common/k/c:d	Lcom/badlogic/gdx/graphics/Texture;
    //   62: astore 6
    //   64: getstatic 93	com/nianticproject/ingress/common/k/c:c	Lcom/badlogic/gdx/graphics/Texture;
    //   67: astore 7
    //   69: getstatic 96	com/nianticproject/ingress/common/k/c:b	Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    //   72: astore 8
    //   74: getstatic 99	com/nianticproject/ingress/common/k/c:a	Lcom/nianticproject/ingress/common/j/ai;
    //   77: astore 9
    //   79: aload 6
    //   81: ifnull +203 -> 284
    //   84: aload 7
    //   86: ifnull +198 -> 284
    //   89: aload 8
    //   91: ifnull +193 -> 284
    //   94: aload 9
    //   96: ifnull +188 -> 284
    //   99: ldc 101
    //   101: invokestatic 106	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   104: aload 6
    //   106: iconst_1
    //   107: invokevirtual 111	com/badlogic/gdx/graphics/Texture:bind	(I)V
    //   110: aload 7
    //   112: iconst_0
    //   113: invokevirtual 111	com/badlogic/gdx/graphics/Texture:bind	(I)V
    //   116: aload 8
    //   118: invokevirtual 116	com/badlogic/gdx/graphics/glutils/ShaderProgram:begin	()V
    //   121: aload 8
    //   123: ldc 118
    //   125: iconst_0
    //   126: invokevirtual 122	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformi	(Ljava/lang/String;I)V
    //   129: aload 8
    //   131: ldc 124
    //   133: iconst_1
    //   134: invokevirtual 122	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformi	(Ljava/lang/String;I)V
    //   137: aload 8
    //   139: ldc 126
    //   141: aload_2
    //   142: invokevirtual 128	com/nianticproject/ingress/common/j/f:d	()Lcom/badlogic/gdx/math/Matrix4;
    //   145: invokevirtual 132	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformMatrix	(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    //   148: aload 8
    //   150: ldc 134
    //   152: aload_0
    //   153: getfield 38	com/nianticproject/ingress/common/k/q:b	Lcom/badlogic/gdx/math/Matrix4;
    //   156: invokevirtual 132	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformMatrix	(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    //   159: aload 8
    //   161: ldc 136
    //   163: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   166: getfield 139	com/badlogic/gdx/math/Vector3:x	F
    //   169: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   172: getfield 142	com/badlogic/gdx/math/Vector3:y	F
    //   175: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   178: getfield 145	com/badlogic/gdx/math/Vector3:z	F
    //   181: invokevirtual 149	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FFF)V
    //   184: ldc 150
    //   186: ldc 151
    //   188: fconst_1
    //   189: aload_0
    //   190: getfield 40	com/nianticproject/ingress/common/k/q:c	F
    //   193: fdiv
    //   194: fconst_1
    //   195: fsub
    //   196: fconst_1
    //   197: invokestatic 157	java/lang/Math:min	(FF)F
    //   200: fmul
    //   201: fadd
    //   202: fstore 23
    //   204: ldc 158
    //   206: ldc 159
    //   208: fload 23
    //   210: fadd
    //   211: invokestatic 157	java/lang/Math:min	(FF)F
    //   214: fstore 24
    //   216: aload 8
    //   218: ldc 161
    //   220: fload 23
    //   222: fload 24
    //   224: fconst_1
    //   225: fload 24
    //   227: fload 23
    //   229: fsub
    //   230: fdiv
    //   231: invokevirtual 149	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FFF)V
    //   234: ldc 158
    //   236: fload 24
    //   238: fmul
    //   239: fstore 25
    //   241: aload 8
    //   243: ldc 163
    //   245: fload 25
    //   247: fconst_1
    //   248: fconst_1
    //   249: fconst_1
    //   250: fload 25
    //   252: fsub
    //   253: fdiv
    //   254: invokevirtual 149	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FFF)V
    //   257: aload 9
    //   259: aload 8
    //   261: invokevirtual 168	com/nianticproject/ingress/common/j/ai:a	(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    //   264: aload 9
    //   266: invokevirtual 170	com/nianticproject/ingress/common/j/ai:h	()V
    //   269: aload 9
    //   271: aload 8
    //   273: invokevirtual 172	com/nianticproject/ingress/common/j/ai:c	(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    //   276: aload 8
    //   278: invokevirtual 175	com/badlogic/gdx/graphics/glutils/ShaderProgram:end	()V
    //   281: invokestatic 177	com/nianticproject/ingress/shared/aj:b	()V
    //   284: aload 4
    //   286: sipush 3042
    //   289: invokeinterface 76 2 0
    //   294: aload 4
    //   296: sipush 770
    //   299: sipush 771
    //   302: invokeinterface 181 3 0
    //   307: aload 4
    //   309: iconst_0
    //   310: invokeinterface 86 2 0
    //   315: getstatic 183	com/nianticproject/ingress/common/k/c:h	Lcom/badlogic/gdx/graphics/Texture;
    //   318: astore 10
    //   320: getstatic 187	com/nianticproject/ingress/common/k/c:i	Ljava/util/ArrayList;
    //   323: astore 11
    //   325: getstatic 190	com/nianticproject/ingress/common/k/c:j	Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    //   328: astore 12
    //   330: aload 11
    //   332: invokevirtual 196	java/util/ArrayList:size	()I
    //   335: bipush 6
    //   337: if_icmpne +243 -> 580
    //   340: aload 10
    //   342: ifnull +238 -> 580
    //   345: aload 12
    //   347: ifnull +233 -> 580
    //   350: aload 9
    //   352: ifnull +228 -> 580
    //   355: aload_0
    //   356: getfield 198	com/nianticproject/ingress/common/k/q:h	Z
    //   359: ifeq +221 -> 580
    //   362: ldc 200
    //   364: invokestatic 106	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   367: aload 10
    //   369: iconst_0
    //   370: invokevirtual 111	com/badlogic/gdx/graphics/Texture:bind	(I)V
    //   373: aload 12
    //   375: invokevirtual 116	com/badlogic/gdx/graphics/glutils/ShaderProgram:begin	()V
    //   378: aload 12
    //   380: ldc 118
    //   382: iconst_0
    //   383: invokevirtual 122	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformi	(Ljava/lang/String;I)V
    //   386: aload 12
    //   388: ldc 202
    //   390: iconst_1
    //   391: invokevirtual 122	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformi	(Ljava/lang/String;I)V
    //   394: aload 12
    //   396: ldc 126
    //   398: aload_2
    //   399: invokevirtual 128	com/nianticproject/ingress/common/j/f:d	()Lcom/badlogic/gdx/math/Matrix4;
    //   402: invokevirtual 132	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformMatrix	(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    //   405: aload 12
    //   407: ldc 134
    //   409: aload_0
    //   410: getfield 38	com/nianticproject/ingress/common/k/q:b	Lcom/badlogic/gdx/math/Matrix4;
    //   413: invokevirtual 132	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformMatrix	(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    //   416: aload 12
    //   418: ldc 136
    //   420: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   423: getfield 139	com/badlogic/gdx/math/Vector3:x	F
    //   426: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   429: getfield 142	com/badlogic/gdx/math/Vector3:y	F
    //   432: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   435: getfield 145	com/badlogic/gdx/math/Vector3:z	F
    //   438: invokevirtual 149	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FFF)V
    //   441: ldc 203
    //   443: aload_0
    //   444: getfield 40	com/nianticproject/ingress/common/k/q:c	F
    //   447: fmul
    //   448: fstore 16
    //   450: fload 16
    //   452: fload 16
    //   454: invokestatic 209	com/badlogic/gdx/math/MathUtils:floor	(F)I
    //   457: i2f
    //   458: fsub
    //   459: fstore 17
    //   461: fload 16
    //   463: invokestatic 209	com/badlogic/gdx/math/MathUtils:floor	(F)I
    //   466: istore 18
    //   468: aload 9
    //   470: aload 12
    //   472: invokevirtual 168	com/nianticproject/ingress/common/j/ai:a	(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    //   475: ldc 210
    //   477: fstore 19
    //   479: iconst_0
    //   480: istore 20
    //   482: iload 20
    //   484: iload 18
    //   486: if_icmpge +73 -> 559
    //   489: aload 11
    //   491: iload 20
    //   493: invokevirtual 214	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   496: checkcast 108	com/badlogic/gdx/graphics/Texture
    //   499: iconst_1
    //   500: invokevirtual 111	com/badlogic/gdx/graphics/Texture:bind	(I)V
    //   503: iload 20
    //   505: iload 18
    //   507: iconst_1
    //   508: isub
    //   509: if_icmpge +43 -> 552
    //   512: fconst_1
    //   513: fstore 21
    //   515: aload 12
    //   517: ldc 216
    //   519: fload 19
    //   521: fload 21
    //   523: invokevirtual 219	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FF)V
    //   526: aload 9
    //   528: invokevirtual 170	com/nianticproject/ingress/common/j/ai:h	()V
    //   531: fload 19
    //   533: ldc 220
    //   535: fadd
    //   536: fstore 19
    //   538: iinc 20 1
    //   541: goto -59 -> 482
    //   544: astore 22
    //   546: invokestatic 177	com/nianticproject/ingress/shared/aj:b	()V
    //   549: aload 22
    //   551: athrow
    //   552: fload 17
    //   554: fstore 21
    //   556: goto -41 -> 515
    //   559: aload 9
    //   561: aload 12
    //   563: invokevirtual 172	com/nianticproject/ingress/common/j/ai:c	(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    //   566: aload 12
    //   568: invokevirtual 175	com/badlogic/gdx/graphics/glutils/ShaderProgram:end	()V
    //   571: aload 10
    //   573: iconst_0
    //   574: invokevirtual 111	com/badlogic/gdx/graphics/Texture:bind	(I)V
    //   577: invokestatic 177	com/nianticproject/ingress/shared/aj:b	()V
    //   580: getstatic 223	com/nianticproject/ingress/common/k/c:k	Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    //   583: astore 13
    //   585: aload 13
    //   587: ifnull +149 -> 736
    //   590: aload 9
    //   592: ifnull +144 -> 736
    //   595: aload_0
    //   596: getfield 225	com/nianticproject/ingress/common/k/q:f	Z
    //   599: ifeq +137 -> 736
    //   602: ldc 227
    //   604: invokestatic 106	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   607: aload 4
    //   609: sipush 515
    //   612: invokeinterface 230 2 0
    //   617: aload 13
    //   619: invokevirtual 116	com/badlogic/gdx/graphics/glutils/ShaderProgram:begin	()V
    //   622: aload 13
    //   624: ldc 126
    //   626: aload_2
    //   627: invokevirtual 128	com/nianticproject/ingress/common/j/f:d	()Lcom/badlogic/gdx/math/Matrix4;
    //   630: invokevirtual 132	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformMatrix	(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    //   633: aload 13
    //   635: ldc 134
    //   637: aload_0
    //   638: getfield 38	com/nianticproject/ingress/common/k/q:b	Lcom/badlogic/gdx/math/Matrix4;
    //   641: invokevirtual 132	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformMatrix	(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V
    //   644: aload 13
    //   646: ldc 136
    //   648: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   651: getfield 139	com/badlogic/gdx/math/Vector3:x	F
    //   654: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   657: getfield 142	com/badlogic/gdx/math/Vector3:y	F
    //   660: getstatic 31	com/nianticproject/ingress/common/k/q:a	Lcom/badlogic/gdx/math/Vector3;
    //   663: getfield 145	com/badlogic/gdx/math/Vector3:z	F
    //   666: invokevirtual 149	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FFF)V
    //   669: aload 13
    //   671: ldc 232
    //   673: aload_0
    //   674: getfield 48	com/nianticproject/ingress/common/k/q:e	F
    //   677: aload_0
    //   678: getfield 45	com/nianticproject/ingress/common/k/q:d	F
    //   681: invokevirtual 219	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FF)V
    //   684: aload 13
    //   686: ldc 234
    //   688: aload_0
    //   689: getfield 51	com/nianticproject/ingress/common/k/q:g	F
    //   692: aload_0
    //   693: getfield 40	com/nianticproject/ingress/common/k/q:c	F
    //   696: invokevirtual 219	com/badlogic/gdx/graphics/glutils/ShaderProgram:setUniformf	(Ljava/lang/String;FF)V
    //   699: aload 9
    //   701: aload 13
    //   703: invokevirtual 168	com/nianticproject/ingress/common/j/ai:a	(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    //   706: aload 9
    //   708: invokevirtual 170	com/nianticproject/ingress/common/j/ai:h	()V
    //   711: aload 9
    //   713: aload 13
    //   715: invokevirtual 172	com/nianticproject/ingress/common/j/ai:c	(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    //   718: aload 13
    //   720: invokevirtual 175	com/badlogic/gdx/graphics/glutils/ShaderProgram:end	()V
    //   723: aload 4
    //   725: sipush 513
    //   728: invokeinterface 230 2 0
    //   733: invokestatic 177	com/nianticproject/ingress/shared/aj:b	()V
    //   736: aload 4
    //   738: iconst_1
    //   739: invokeinterface 86 2 0
    //   744: aload 4
    //   746: sipush 3042
    //   749: invokeinterface 237 2 0
    //   754: return
    //   755: astore 15
    //   757: invokestatic 177	com/nianticproject/ingress/shared/aj:b	()V
    //   760: aload 15
    //   762: athrow
    //   763: astore 14
    //   765: invokestatic 177	com/nianticproject/ingress/shared/aj:b	()V
    //   768: aload 14
    //   770: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   99	234	544	finally
    //   241	281	544	finally
    //   362	475	755	finally
    //   489	503	755	finally
    //   515	531	755	finally
    //   559	577	755	finally
    //   602	733	763	finally
  }

  public final void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    this.g = ((paramFloat + this.g) % 1.0F);
    return true;
  }

  public final void b()
  {
    this.h = true;
  }

  public final void b(float paramFloat)
  {
    this.c = paramFloat;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.q
 * JD-Core Version:    0.6.2
 */