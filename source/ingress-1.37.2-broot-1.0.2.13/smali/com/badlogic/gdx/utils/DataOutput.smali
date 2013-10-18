.class public Lcom/badlogic/gdx/utils/DataOutput;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    return-void
.end method

.method private writeString_slow(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    :goto_0
    if-ge p3, p2, :cond_2

    .line 69
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 70
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 71
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 68
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_1

    .line 73
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 74
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 75
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_1

    .line 77
    :cond_1
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 78
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    goto :goto_1

    .line 81
    :cond_2
    return-void
.end method


# virtual methods
.method public writeInt(IZ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    if-nez p2, :cond_0

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int p1, v0, v1

    .line 20
    :cond_0
    ushr-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_1

    .line 21
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 22
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    .line 24
    :cond_1
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 25
    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_2

    .line 26
    ushr-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 27
    const/4 v0, 0x2

    goto :goto_0

    .line 29
    :cond_2
    ushr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 30
    ushr-int/lit8 v0, p1, 0x15

    if-nez v0, :cond_3

    .line 31
    ushr-int/lit8 v0, p1, 0xe

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 32
    const/4 v0, 0x3

    goto :goto_0

    .line 34
    :cond_3
    ushr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 35
    ushr-int/lit8 v0, p1, 0x1c

    if-nez v0, :cond_4

    .line 36
    ushr-int/lit8 v0, p1, 0x15

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 37
    const/4 v0, 0x4

    goto :goto_0

    .line 39
    :cond_4
    ushr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 40
    ushr-int/lit8 v0, p1, 0x1c

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 41
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 47
    if-nez p1, :cond_1

    .line 48
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 56
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/DataOutput;->writeInt(IZ)I

    .line 59
    :goto_1
    if-ge v0, v1, :cond_3

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 61
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_3

    .line 62
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/DataOutput;->write(I)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_3
    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/DataOutput;->writeString_slow(Ljava/lang/String;II)V

    goto :goto_0
.end method
