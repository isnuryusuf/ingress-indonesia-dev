.class public final Lcom/nianticproject/ingress/common/w/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "-"

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/w/o;->a(D)Lcom/nianticproject/ingress/common/w/o;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v0, "0"

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    iget-wide v4, v3, Lcom/nianticproject/ingress/common/w/o;->j:D

    div-double/2addr v1, v4

    iget v4, v3, Lcom/nianticproject/ingress/common/w/o;->l:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "%s%."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "f%s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x2

    iget-object v1, v3, Lcom/nianticproject/ingress/common/w/o;->k:Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
