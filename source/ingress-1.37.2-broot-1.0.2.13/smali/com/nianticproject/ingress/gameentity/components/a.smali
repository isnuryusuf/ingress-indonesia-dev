.class public final Lcom/nianticproject/ingress/gameentity/components/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    if-lez p0, :cond_0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-static {p0}, Lcom/nianticproject/ingress/gameentity/components/a;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
