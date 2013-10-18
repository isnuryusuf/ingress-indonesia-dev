.class public Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final kBitModelTotal:I = 0x800

.field static final kNumBitModelTotalBits:I = 0xb

.field static final kNumMoveBits:I = 0x5

.field static final kTopMask:I = -0x1000000


# instance fields
.field Code:I

.field Range:I

.field Stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitBitModels([S)V
    .locals 2
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 101
    const/16 v1, 0x400

    aput-short v1, p0, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public DecodeBit([SI)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, -0x100

    const/high16 v3, -0x8000

    .line 71
    aget-short v0, p1, p2

    .line 72
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    .line 73
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    xor-int/2addr v2, v3

    xor-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 75
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 76
    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    and-int/2addr v0, v4

    if-nez v0, :cond_0

    .line 79
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    .line 86
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 87
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 88
    ushr-int/lit8 v1, v0, 0x5

    sub-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 94
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final DecodeDirectBits(I)I
    .locals 5
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    if-eqz p1, :cond_1

    .line 55
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 56
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    sub-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x1f

    .line 57
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 58
    shl-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 60
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 62
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 63
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 53
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 66
    :cond_1
    return v0
.end method

.method public final Init()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 45
    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Range:I

    .line 46
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 47
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Code:I

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public final ReleaseStream()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    .line 40
    return-void
.end method

.method public final SetStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->Stream:Ljava/io/InputStream;

    .line 35
    return-void
.end method
