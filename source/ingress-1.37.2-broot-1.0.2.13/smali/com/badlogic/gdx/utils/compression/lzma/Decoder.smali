.class public Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_DictionarySize:I

.field m_DictionarySizeCheck:I

.field m_IsMatchDecoders:[S

.field m_IsRep0LongDecoders:[S

.field m_IsRepDecoders:[S

.field m_IsRepG0Decoders:[S

.field m_IsRepG1Decoders:[S

.field m_IsRepG2Decoders:[S

.field m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

.field m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

.field m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

.field m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_PosDecoders:[S

.field m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_PosStateMask:I

.field m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

.field m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v3, 0xc0

    const/4 v2, -0x1

    const/4 v4, 0x4

    const/16 v1, 0xc

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    .line 140
    new-instance v0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    .line 142
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    .line 143
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    .line 144
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    .line 145
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    .line 146
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    .line 147
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    .line 149
    new-array v0, v4, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 150
    const/16 v0, 0x72

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    .line 152
    new-instance v0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 154
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    .line 155
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    .line 157
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    .line 159
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    .line 160
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    .line 166
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 167
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->SetStream(Ljava/io/InputStream;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->SetStream(Ljava/io/OutputStream;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->Init()V

    .line 224
    invoke-static {}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateInit()I

    move-result v8

    .line 225
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 227
    const-wide/16 v2, 0x0

    .line 228
    const/4 v1, 0x0

    move-wide v13, v2

    move v3, v4

    move v2, v5

    move v4, v6

    move v5, v7

    move v7, v8

    move-wide v8, v13

    .line 229
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v6, p3, v10

    if-ltz v6, :cond_0

    cmp-long v6, v8, p3

    if-gez v6, :cond_d

    .line 231
    :cond_0
    long-to-int v6, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosStateMask:I

    and-int/2addr v10, v6

    .line 232
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    shl-int/lit8 v12, v7, 0x4

    add-int/2addr v12, v10

    invoke-virtual {v6, v11, v12}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v6

    if-nez v6, :cond_2

    .line 234
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    long-to-int v10, v8

    invoke-virtual {v6, v10, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->GetDecoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    move-result-object v1

    .line 235
    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateIsCharState(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->GetByte(I)B

    move-result v10

    invoke-virtual {v1, v6, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->DecodeWithMatchByte(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;B)B

    move-result v1

    .line 239
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->PutByte(B)V

    .line 240
    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateChar(I)I

    move-result v10

    .line 241
    const-wide/16 v6, 0x1

    add-long/2addr v6, v8

    move-wide v8, v6

    move v7, v10

    .line 242
    goto :goto_0

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->DecodeNormal(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)B

    move-result v1

    goto :goto_1

    .line 246
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_8

    .line 248
    const/4 v6, 0x0

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    invoke-virtual {v1, v11, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_5

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    shl-int/lit8 v12, v7, 0x4

    add-int/2addr v12, v10

    invoke-virtual {v1, v11, v12}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_e

    .line 253
    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateShortRep(I)I

    move-result v6

    .line 254
    const/4 v1, 0x1

    move v13, v3

    move v3, v4

    move v4, v2

    move v2, v13

    .line 276
    :goto_2
    if-nez v1, :cond_3

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v1, v7, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 279
    invoke-static {v6}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateRep(I)I

    move-result v6

    .line 313
    :cond_3
    :goto_3
    int-to-long v10, v5

    cmp-long v7, v10, v8

    if-gez v7, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    if-lt v5, v7, :cond_c

    .line 316
    :cond_4
    const/4 v1, 0x0

    .line 326
    :goto_4
    return v1

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    invoke-virtual {v1, v11, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_6

    move v1, v4

    :goto_5
    move v4, v2

    move v2, v3

    move v3, v5

    move v5, v1

    move v1, v6

    move v6, v7

    .line 274
    goto :goto_2

    .line 264
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    invoke-virtual {v1, v11, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_6
    move v2, v4

    .line 271
    goto :goto_5

    :cond_7
    move v1, v3

    move v3, v2

    .line 269
    goto :goto_6

    .line 287
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v1, v3, v10}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 288
    invoke-static {v7}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->StateUpdateMatch(I)I

    move-result v6

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Base;->GetLenToPosState(I)I

    move-result v7

    aget-object v3, v3, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v3

    .line 290
    const/4 v7, 0x4

    if-lt v3, v7, :cond_b

    .line 292
    shr-int/lit8 v7, v3, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 293
    and-int/lit8 v10, v3, 0x1

    or-int/lit8 v10, v10, 0x2

    shl-int/2addr v10, v7

    .line 294
    const/16 v11, 0xe

    if-ge v3, v11, :cond_9

    .line 295
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    sub-int v3, v10, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-static {v11, v3, v12, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->ReverseDecode([SILcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I

    move-result v3

    add-int/2addr v3, v10

    move v13, v5

    move v5, v3

    move v3, v13

    goto :goto_3

    .line 299
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeDirectBits(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v10

    .line 301
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->ReverseDecode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v7

    add-int/2addr v3, v7

    .line 302
    if-gez v3, :cond_a

    .line 304
    const/4 v1, -0x1

    if-eq v3, v1, :cond_d

    .line 305
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_a
    move v13, v5

    move v5, v3

    move v3, v13

    .line 309
    goto/16 :goto_3

    :cond_b
    move v13, v5

    move v5, v3

    move v3, v13

    .line 311
    goto/16 :goto_3

    .line 318
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v7, v5, v1}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->CopyBlock(II)V

    .line 319
    int-to-long v10, v1

    add-long v7, v8, v10

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->GetByte(I)B

    move-result v1

    move-wide v13, v7

    move-wide v8, v13

    move v7, v6

    move v15, v4

    move v4, v3

    move v3, v2

    move v2, v15

    .line 322
    goto/16 :goto_0

    .line 323
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->ReleaseStream()V

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->ReleaseStream()V

    .line 326
    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_e
    move v1, v6

    move v6, v7

    move v13, v2

    move v2, v3

    move v3, v4

    move v4, v13

    goto/16 :goto_2
.end method

.method Init()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Init(Z)V

    .line 199
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsMatchDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 200
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRep0LongDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 201
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 202
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG0Decoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 203
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG1Decoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 204
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_IsRepG2Decoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 205
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosDecoders:[S

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 207
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->Init()V

    .line 209
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosSlotDecoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Init()V

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Init()V

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosAlignDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RangeDecoder:Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Init()V

    .line 215
    return-void
.end method

.method public SetDecoderProperties([B)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    array-length v1, p1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 334
    rem-int/lit8 v3, v1, 0x9

    .line 335
    div-int/lit8 v1, v1, 0x9

    .line 336
    rem-int/lit8 v4, v1, 0x5

    .line 337
    div-int/lit8 v5, v1, 0x5

    move v1, v0

    move v2, v0

    .line 339
    :goto_1
    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    .line 340
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    mul-int/lit8 v7, v1, 0x8

    shl-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {p0, v3, v4, v5}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetLcLpPb(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetDictionarySize(I)Z

    move-result v0

    goto :goto_0
.end method

.method SetDictionarySize(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 172
    if-gez p1, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    if-eq v1, p1, :cond_0

    .line 176
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    .line 177
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySize:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    .line 178
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_OutWindow:Lcom/badlogic/gdx/utils/compression/lz/OutWindow;

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_DictionarySizeCheck:I

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Create(I)V

    goto :goto_0
.end method

.method SetLcLpPb(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 185
    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    if-gt p2, v2, :cond_0

    if-le p3, v2, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LiteralDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-virtual {v1, p2, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->Create(II)V

    .line 188
    shl-int v1, v0, p3

    .line 189
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_LenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Create(I)V

    .line 190
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_RepLenDecoder:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->Create(I)V

    .line 191
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->m_PosStateMask:I

    goto :goto_0
.end method
