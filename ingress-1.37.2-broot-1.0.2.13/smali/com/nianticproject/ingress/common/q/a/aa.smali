.class public final Lcom/nianticproject/ingress/common/q/a/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/DataInput;)I
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x80

    .line 22
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 23
    if-ge v0, v3, :cond_1

    .line 48
    :cond_0
    return v0

    .line 24
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 26
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 27
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 28
    if-lt v1, v3, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 31
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    .line 32
    if-lt v1, v3, :cond_0

    .line 34
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 35
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    .line 36
    if-lt v1, v3, :cond_0

    .line 38
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 39
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v0, v2

    .line 40
    if-lt v1, v3, :cond_0

    .line 45
    :goto_0
    if-lt v1, v3, :cond_0

    .line 46
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto :goto_0
.end method
