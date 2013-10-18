.class Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field m_Choice:[S

.field m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field m_NumPosStates:I

.field final synthetic this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x10

    .line 26
    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->this$0:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    .line 29
    new-array v0, v1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 30
    new-array v0, v1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    return-void
.end method


# virtual methods
.method public Create(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 36
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    if-ge v0, p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    .line 36
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public Init()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_Choice:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    .line 46
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_NumPosStates:I

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_LowCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_MidCoder:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->m_HighCoder:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    .line 52
    return-void
.end method
