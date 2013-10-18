.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;
.super Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;
.source "SourceFile"


# instance fields
.field _counters:[I

.field _prices:[I

.field _tableSize:I

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    .line 264
    const/16 v0, 0x1100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_prices:[I

    .line 266
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_counters:[I

    return-void
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_counters:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p3

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTable(I)V

    .line 292
    :cond_0
    return-void
.end method

.method public GetPrice(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_prices:[I

    mul-int/lit16 v1, p2, 0x110

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public SetTableSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_tableSize:I

    return-void
.end method

.method UpdateTable(I)V
    .locals 3
    .parameter

    .prologue
    .line 277
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_tableSize:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_prices:[I

    mul-int/lit16 v2, p1, 0x110

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->SetPrices(II[II)V

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_counters:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->_tableSize:I

    aput v1, v0, p1

    .line 279
    return-void
.end method

.method public UpdateTables(I)V
    .locals 1
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->UpdateTable(I)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method
