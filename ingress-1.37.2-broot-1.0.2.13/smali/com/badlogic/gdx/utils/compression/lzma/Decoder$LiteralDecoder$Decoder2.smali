.class Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_Decoders:[S

.field final synthetic this$1:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->this$1:Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x300

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    return-void
.end method


# virtual methods
.method public DecodeNormal(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)B
    .locals 3
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v0

    or-int/2addr v0, v1

    .line 83
    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 84
    int-to-byte v0, v0

    return v0
.end method

.method public DecodeWithMatchByte(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;B)B
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x100

    .line 89
    const/4 v0, 0x1

    .line 92
    :cond_0
    shr-int/lit8 v1, p2, 0x7

    and-int/lit8 v1, v1, 0x1

    .line 93
    shl-int/lit8 v2, p2, 0x1

    int-to-byte p2, v2

    .line 94
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    add-int/lit8 v3, v1, 0x1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v2

    .line 95
    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    .line 96
    if-eq v1, v2, :cond_1

    .line 98
    :goto_0
    if-ge v0, v4, :cond_2

    .line 99
    shl-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    .line 103
    :cond_1
    if-lt v0, v4, :cond_0

    .line 104
    :cond_2
    int-to-byte v0, v0

    return v0
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LiteralDecoder$Decoder2;->m_Decoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 76
    return-void
.end method
