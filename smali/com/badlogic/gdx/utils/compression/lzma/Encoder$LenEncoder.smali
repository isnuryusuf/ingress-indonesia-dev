.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field _choice:[S

.field _highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field _midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0x10

    .line 192
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    .line 186
    new-array v0, v3, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 187
    new-array v0, v3, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 188
    new-instance v0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    .line 193
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 195
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 196
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    if-ge p2, v4, :cond_0

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v0, v2, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    add-int/lit8 v0, p2, -0x8

    .line 222
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v1, v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 223
    if-ge v0, v4, :cond_1

    .line 225
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v1, v3, v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, p3

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-virtual {p1, v1, v3, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    .line 231
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    goto :goto_0
.end method

.method public Init(I)V
    .locals 2
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    .line 204
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 207
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    .line 210
    return-void
.end method

.method public SetPrices(II[II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    aget-short v1, v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v1

    .line 239
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    aget-short v2, v2, v0

    invoke-static {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v2

    .line 240
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    aget-short v3, v3, v5

    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 241
    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_choice:[S

    aget-short v4, v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 242
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_3

    .line 245
    if-lt v0, p2, :cond_1

    .line 257
    :cond_0
    :goto_1
    return-void

    .line 247
    :cond_1
    add-int v4, p4, v0

    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_lowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v5, v5, p1

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v5

    add-int/2addr v5, v1

    aput v5, p3, v4

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_2
    add-int v1, p4, v0

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_midCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v4, v4, p1

    add-int/lit8 v5, v0, -0x8

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v4

    add-int/2addr v4, v3

    aput v4, p3, v1

    .line 249
    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 251
    if-lt v0, p2, :cond_2

    goto :goto_1

    .line 255
    :cond_4
    :goto_2
    if-ge v0, p2, :cond_0

    .line 256
    add-int v1, p4, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->_highCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    add-int/lit8 v4, v0, -0x8

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v3

    add-int/2addr v3, v2

    aput v3, p3, v1

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
