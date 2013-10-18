.class public Lcom/badlogic/gdx/utils/LittleEndianInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private din:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 38
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 42
    return-void
.end method

.method public readInt()I
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 77
    const/4 v0, 0x4

    new-array v2, v0, [I

    move v0, v1

    .line 78
    :goto_0
    if-ltz v0, :cond_0

    .line 79
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    aput v3, v2, v0

    .line 78
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x0

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    const/4 v3, 0x2

    aget v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x7

    .line 85
    new-array v2, v7, [I

    move v0, v1

    .line 86
    :goto_0
    if-ltz v0, :cond_0

    .line 87
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    aput v3, v2, v0

    .line 86
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x0

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    const/16 v0, 0x38

    shl-long/2addr v3, v0

    const/4 v0, 0x1

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x2

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x28

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x3

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x4

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x18

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x5

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    const/16 v0, 0x10

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    const/4 v0, 0x6

    aget v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aget v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public readShort()S
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 63
    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    .line 69
    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public skipBytes(I)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LittleEndianInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
