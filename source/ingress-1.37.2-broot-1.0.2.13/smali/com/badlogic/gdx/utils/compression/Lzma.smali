.class public Lcom/badlogic/gdx/utils/compression/Lzma;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static compress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 68
    new-instance v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;-><init>()V

    .line 70
    iget-boolean v0, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Eos:Z

    if-eqz v0, :cond_8

    .line 71
    const/4 v0, 0x1

    move v1, v0

    .line 72
    :goto_0
    new-instance v0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;-><init>()V

    .line 73
    iget v6, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Algorithm:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetAlgorithm(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Incorrect compression mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget v6, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->DictionarySize:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetDictionarySize(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Incorrect dictionary size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iget v6, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Fb:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetNumFastBytes(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Incorrect -fb value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    iget v6, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->MatchFinder:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetMatchFinder(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Incorrect -mf value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    iget v6, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lc:I

    iget v7, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Lp:I

    iget v5, v5, Lcom/badlogic/gdx/utils/compression/Lzma$CommandLine;->Pb:I

    invoke-virtual {v0, v6, v7, v5}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetLcLpPb(III)Z

    move-result v5

    if-nez v5, :cond_4

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Incorrect -lc or -lp or -pb value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_4
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->SetEndMarkerMode(Z)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->WriteCoderProperties(Ljava/io/OutputStream;)V

    .line 86
    if-eqz v1, :cond_6

    move-wide v5, v3

    .line 94
    :cond_5
    :goto_1
    const/16 v1, 0x8

    if-ge v2, v1, :cond_7

    .line 95
    mul-int/lit8 v1, v2, 0x8

    ushr-long v7, v5, v1

    long-to-int v1, v7

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v5, v1

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_5

    move-wide v5, v3

    .line 91
    goto :goto_1

    .line 97
    :cond_7
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLcom/badlogic/gdx/utils/compression/ICodeProgress;)V

    .line 98
    return-void

    :cond_8
    move v1, v2

    goto/16 :goto_0
.end method

.method public static decompress(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 108
    new-array v1, v3, [B

    .line 110
    invoke-virtual {p0, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "input .lzma file is too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    new-instance v3, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;-><init>()V

    .line 113
    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->SetDecoderProperties([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Incorrect stream properties"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    const-wide/16 v1, 0x0

    .line 116
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_3

    .line 118
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 119
    if-gez v4, :cond_2

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t read stream size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {v3, p0, p1, v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Decoder;->Code(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error in data stream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_4
    return-void
.end method
