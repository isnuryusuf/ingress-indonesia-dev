.class public final Lcom/nianticproject/ingress/common/q/a/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:[B

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    const/16 v1, 0x10

    .line 22
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/z;->b:[B

    .line 30
    new-array v0, v1, [B

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/z;->c:[B

    .line 40
    new-array v0, v3, [B

    sput-object v0, Lcom/nianticproject/ingress/common/q/a/z;->a:[B

    .line 41
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 42
    sget-object v1, Lcom/nianticproject/ingress/common/q/a/z;->a:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 22
    nop

    :array_0
    .array-data 0x1
        0x5at
        0xeet
        0x3t
        0x9dt
        0xet
        0xd7t
        0x6at
        0xb2t
        0x74t
        0x3ft
        0x36t
        0x50t
        0x28t
        0x87t
        0xe0t
        0xeft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    .line 47
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    sget-object v0, Lcom/nianticproject/ingress/common/q/a/z;->c:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 212
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 213
    return-void
.end method

.method public static a(IIIIIJ)[B
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0xffff

    const/16 v7, 0x28

    const/16 v6, 0x20

    const/16 v5, 0x18

    const/16 v4, 0x10

    .line 204
    new-array v1, v7, [B

    .line 205
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/nianticproject/ingress/common/q/a/z;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/nianticproject/ingress/common/q/a/z;->b:[B

    aget-byte v2, v2, v0

    mul-int/lit8 v2, v2, 0x2f

    sget-object v3, Lcom/nianticproject/ingress/common/q/a/z;->c:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    const/16 v0, 0x11

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x12

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x13

    int-to-byte v2, p0

    aput-byte v2, v1, v0

    const/16 v0, 0x14

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x15

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x16

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x17

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    const/16 v0, 0x19

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x1a

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x1b

    int-to-byte v2, p2

    aput-byte v2, v1, v0

    and-int v0, p3, v8

    const/16 v2, 0x1c

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1d

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    and-int v0, p4, v8

    const/16 v2, 0x1e

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x1f

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/16 v0, 0x38

    shr-long v2, p5, v0

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v6

    const/16 v0, 0x21

    const/16 v2, 0x30

    shr-long v2, p5, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x22

    shr-long v2, p5, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x23

    shr-long v2, p5, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x24

    shr-long v2, p5, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x25

    shr-long v2, p5, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x26

    const/16 v2, 0x8

    shr-long v2, p5, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    const/16 v0, 0x27

    long-to-int v2, p5

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 206
    return-object v1
.end method


# virtual methods
.method public final a([B)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x100

    const/4 v0, 0x0

    .line 59
    sget-object v1, Lcom/nianticproject/ingress/common/q/a/z;->a:[B

    iget-object v2, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    invoke-static {v1, v0, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    move v2, v0

    .line 60
    :goto_0
    if-ge v2, v6, :cond_0

    .line 61
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    array-length v3, p1

    rem-int v3, v2, v3

    aget-byte v3, p1, v3

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 62
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v3, v3, v2

    .line 63
    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    iget-object v5, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    .line 64
    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aput-byte v3, v4, v1

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iput v0, p0, Lcom/nianticproject/ingress/common/q/a/z;->e:I

    .line 67
    iput v0, p0, Lcom/nianticproject/ingress/common/q/a/z;->f:I

    .line 68
    iget v2, p0, Lcom/nianticproject/ingress/common/q/a/z;->e:I

    iget v1, p0, Lcom/nianticproject/ingress/common/q/a/z;->f:I

    :goto_1
    if-ge v0, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    iget-object v5, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    iget-object v4, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aput-byte v3, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/nianticproject/ingress/common/q/a/z;->e:I

    iput v1, p0, Lcom/nianticproject/ingress/common/q/a/z;->f:I

    .line 69
    return-void
.end method

.method public final a([BII)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget v2, p0, Lcom/nianticproject/ingress/common/q/a/z;->e:I

    .line 100
    iget v1, p0, Lcom/nianticproject/ingress/common/q/a/z;->f:I

    .line 102
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 103
    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    .line 104
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 105
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v4, v3, v2

    .line 106
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aget-byte v5, v3, v1

    .line 107
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aput-byte v5, v3, v2

    .line 108
    iget-object v3, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    aput-byte v4, v3, v1

    .line 109
    add-int/lit8 v3, p2, 0x1

    aget-byte v6, p1, p2

    iget-object v7, p0, Lcom/nianticproject/ingress/common/q/a/z;->d:[B

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v7, v4

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 102
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    .line 111
    :cond_0
    iput v2, p0, Lcom/nianticproject/ingress/common/q/a/z;->e:I

    .line 112
    iput v1, p0, Lcom/nianticproject/ingress/common/q/a/z;->f:I

    .line 113
    return-void
.end method
