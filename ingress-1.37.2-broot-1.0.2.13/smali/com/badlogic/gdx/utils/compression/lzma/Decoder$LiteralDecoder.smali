.class Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

.field m_NumPosBits:I

.field m_NumPrevBits:I

.field m_PosMask:I

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public Create(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    if-ne v0, p1, :cond_1

    .line 124
    :cond_0
    return-void

    .line 117
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    .line 118
    shl-int v0, v2, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_PosMask:I

    .line 119
    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    add-int/2addr v0, v1

    shl-int v1, v2, v0

    .line 121
    new-array v0, v1, [Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    .line 122
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    new-instance v3, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;)V

    aput-object v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method GetDecoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_PosMask:I

    and-int/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    shl-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    rsub-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public Init()V
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x1

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPrevBits:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_NumPosBits:I

    add-int/2addr v1, v2

    shl-int v1, v0, v1

    .line 129
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 130
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;->m_Coders:[Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->Init()V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
