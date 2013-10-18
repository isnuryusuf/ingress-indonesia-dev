.class public final Lcom/google/a/e/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lcom/google/a/e/u;
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/google/a/e/x;

    invoke-direct {v0, p0}, Lcom/google/a/e/x;-><init>(I)V

    return-object v0
.end method

.method public static a(J)Lcom/google/a/e/u;
    .locals 1
    .parameter

    .prologue
    .line 85
    new-instance v0, Lcom/google/a/e/y;

    invoke-direct {v0, p0, p1}, Lcom/google/a/e/y;-><init>(J)V

    return-object v0
.end method

.method public static a([B)Lcom/google/a/e/u;
    .locals 2
    .parameter

    .prologue
    .line 132
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "A HashCode must contain at least 1 byte."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/a/e/v;->b([B)Lcom/google/a/e/u;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b([B)Lcom/google/a/e/u;
    .locals 1
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/google/a/e/w;

    invoke-direct {v0, p0}, Lcom/google/a/e/w;-><init>([B)V

    return-object v0
.end method
