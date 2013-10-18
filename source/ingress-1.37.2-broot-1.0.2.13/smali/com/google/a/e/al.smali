.class final enum Lcom/google/a/e/al;
.super Lcom/google/a/e/aj;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/e/aj;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final a([BI)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lcom/google/a/e/aj;->b()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/a/e/aj;->a()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a([BIJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-static {p3, p4}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    .line 139
    invoke-static {}, Lcom/google/a/e/aj;->b()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/a/e/aj;->a()I

    move-result v3

    int-to-long v6, v3

    add-long v2, v1, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 140
    return-void
.end method
