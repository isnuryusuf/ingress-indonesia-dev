.class final enum Lcom/google/a/e/ak;
.super Lcom/google/a/e/aj;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0, v0}, Lcom/google/a/e/aj;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a([BI)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {}, Lcom/google/a/e/aj;->b()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/a/e/aj;->a()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a([BIJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {}, Lcom/google/a/e/aj;->b()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/a/e/aj;->a()I

    move-result v3

    int-to-long v3, v3

    add-long v2, v1, v3

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 125
    return-void
.end method
