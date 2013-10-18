.class public final Lcom/nianticproject/ingress/gameentity/components/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/ImageByUrl;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ImageByUrl;

    .line 14
    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ImageByUrl;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
