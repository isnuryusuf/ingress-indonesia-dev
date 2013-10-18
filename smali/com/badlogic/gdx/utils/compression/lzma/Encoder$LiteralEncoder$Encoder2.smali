.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_Encoders:[S

.field final synthetic this$1:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->this$1:Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x300

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->m_Encoders:[S

    return-void
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;B)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v1, 0x1

    .line 97
    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    .line 99
    shr-int v2, p2, v0

    and-int/lit8 v2, v2, 0x1

    .line 100
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->m_Encoders:[S

    invoke-virtual {p1, v3, v1, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 101
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    .line 97
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public EncodeMatched(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;BB)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 107
    .line 109
    const/4 v0, 0x7

    move v4, v0

    move v3, v1

    move v0, v1

    :goto_0
    if-ltz v4, :cond_1

    .line 111
    shr-int v2, p3, v4

    and-int/lit8 v5, v2, 0x1

    .line 113
    if-eqz v0, :cond_2

    .line 115
    shr-int v0, p2, v4

    and-int/lit8 v0, v0, 0x1

    .line 116
    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    .line 117
    if-ne v0, v5, :cond_0

    move v0, v1

    :goto_1
    move v7, v2

    move v2, v0

    move v0, v7

    .line 119
    :goto_2
    iget-object v6, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->m_Encoders:[S

    invoke-virtual {p1, v6, v0, v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 120
    shl-int/lit8 v0, v3, 0x1

    or-int v3, v0, v5

    .line 109
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 122
    :cond_1
    return-void

    :cond_2
    move v2, v0

    move v0, v3

    goto :goto_2
.end method

.method public GetPrice(ZBB)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    const/4 v1, 0x1

    .line 128
    const/4 v0, 0x7

    .line 129
    if-eqz p1, :cond_0

    .line 131
    :goto_0
    if-ltz v0, :cond_0

    .line 133
    shr-int v3, p2, v0

    and-int/lit8 v3, v3, 0x1

    .line 134
    shr-int v4, p3, v0

    and-int/lit8 v4, v4, 0x1

    .line 135
    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->m_Encoders:[S

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v6, v1

    aget-short v5, v5, v6

    invoke-static {v5, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 136
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v4

    .line 137
    if-eq v3, v4, :cond_1

    .line 139
    add-int/lit8 v0, v0, -0x1

    .line 144
    :cond_0
    :goto_1
    if-ltz v0, :cond_2

    .line 146
    shr-int v3, p3, v0

    and-int/lit8 v3, v3, 0x1

    .line 147
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->m_Encoders:[S

    aget-short v4, v4, v1

    invoke-static {v4, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 148
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v3

    .line 144
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 131
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 150
    :cond_2
    return v2
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->m_Encoders:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    return-void
.end method
