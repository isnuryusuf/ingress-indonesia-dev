.class public Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Models:[S

.field NumBitLevels:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    .line 26
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    .line 27
    return-void
.end method

.method public static ReverseDecode([SILcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 61
    :goto_0
    if-ge v0, p3, :cond_0

    .line 63
    add-int v3, p1, v2

    invoke-virtual {p2, p0, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v3

    .line 64
    shl-int/lit8 v2, v2, 0x1

    .line 65
    add-int/2addr v2, v3

    .line 66
    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return v1
.end method


# virtual methods
.method public Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 36
    .line 37
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    .line 38
    shl-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v4, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v1

    add-int/2addr v1, v3

    .line 37
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 39
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    shl-int v0, v2, v0

    sub-int v0, v1, v0

    return v0
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 32
    return-void
.end method

.method public ReverseDecode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 46
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->NumBitLevels:I

    if-ge v0, v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v3, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v3

    .line 49
    shl-int/lit8 v2, v2, 0x1

    .line 50
    add-int/2addr v2, v3

    .line 51
    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return v1
.end method
