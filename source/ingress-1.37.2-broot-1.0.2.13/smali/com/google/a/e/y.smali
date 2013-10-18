.class final Lcom/google/a/e/y;
.super Lcom/google/a/e/u;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/a/e/u;-><init>()V

    .line 92
    iput-wide p1, p0, Lcom/google/a/e/y;->a:J

    .line 93
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/google/a/e/y;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public final b()[B
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 100
    new-array v0, v4, [B

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/a/e/y;->a:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
