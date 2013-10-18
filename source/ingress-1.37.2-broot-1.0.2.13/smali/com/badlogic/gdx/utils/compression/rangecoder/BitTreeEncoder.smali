.class public Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    .line 27
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    .line 28
    return-void
.end method

.method public static ReverseEncode([SILcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v1, 0x1

    .line 106
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 108
    and-int/lit8 v2, p4, 0x1

    .line 109
    add-int v3, p1, v1

    invoke-virtual {p2, p0, v3, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 110
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    .line 111
    shr-int/lit8 p4, p4, 0x1

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public static ReverseGetPrice([SIII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x1

    .line 92
    :goto_0
    if-eqz p2, :cond_0

    .line 94
    and-int/lit8 v2, p3, 0x1

    .line 95
    ushr-int/lit8 p3, p3, 0x1

    .line 96
    add-int v3, p1, v0

    aget-short v3, p0, v3

    invoke-static {v3, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 97
    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    .line 92
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 99
    :cond_0
    return v1
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 37
    const/4 v1, 0x1

    .line 38
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    :goto_0
    if-eqz v0, :cond_0

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    ushr-int v2, p2, v0

    and-int/lit8 v2, v2, 0x1

    .line 42
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    invoke-virtual {p1, v3, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 43
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public GetPrice(I)I
    .locals 5
    .parameter

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v1, 0x1

    .line 63
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    :goto_0
    if-eqz v0, :cond_0

    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 66
    ushr-int v3, p1, v0

    and-int/lit8 v3, v3, 0x1

    .line 67
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 68
    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return v2
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 33
    return-void
.end method

.method public ReverseEncode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    if-ge v0, v2, :cond_0

    .line 52
    and-int/lit8 v2, p2, 0x1

    .line 53
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    invoke-virtual {p1, v3, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 54
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    .line 55
    shr-int/lit8 p2, p2, 0x1

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public ReverseGetPrice(I)I
    .locals 5
    .parameter

    .prologue
    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v1, 0x1

    .line 77
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->NumBitLevels:I

    :goto_0
    if-eqz v0, :cond_0

    .line 79
    and-int/lit8 v3, p1, 0x1

    .line 80
    ushr-int/lit8 p1, p1, 0x1

    .line 81
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Models:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 82
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v3

    .line 77
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 84
    :cond_0
    return v2
.end method
