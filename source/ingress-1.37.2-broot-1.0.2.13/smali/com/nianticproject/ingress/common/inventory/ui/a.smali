.class public final Lcom/nianticproject/ingress/common/inventory/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string/jumbo v0, ""

    .line 41
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/DisplayName;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/DisplayName;

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/DisplayName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_1
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 37
    if-nez v0, :cond_2

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a resource: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/af;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/nianticproject/ingress/gameentity/f;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    if-nez p0, :cond_0

    move-object v0, v1

    .line 61
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/DisplayName;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/DisplayName;

    .line 57
    if-nez v0, :cond_1

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/DisplayName;->getDisplayDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
