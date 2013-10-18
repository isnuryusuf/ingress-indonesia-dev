.class final enum Lcom/google/a/e/ah;
.super Lcom/google/a/e/ag;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/a/e/ag;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final a([BI)J
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0xff

    .line 201
    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    aget-byte v7, p1, p2

    int-to-long v8, v0

    and-long/2addr v8, v11

    const/16 v0, 0x38

    shl-long/2addr v8, v0

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x30

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x28

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x20

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final a([BIJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    .line 214
    const-wide/16 v1, 0xff

    .line 215
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_0

    .line 216
    add-int v3, p2, v0

    and-long v4, p3, v1

    mul-int/lit8 v6, v0, 0x8

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 215
    shl-long/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method
