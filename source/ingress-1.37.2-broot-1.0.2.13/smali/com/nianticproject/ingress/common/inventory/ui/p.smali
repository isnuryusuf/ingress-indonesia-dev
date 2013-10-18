.class public Lcom/nianticproject/ingress/common/inventory/ui/p;
.super Lcom/nianticproject/ingress/common/inventory/ui/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/n;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/p;->a:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 19
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/d;->getLevel()I

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/p;->a:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 27
    instance-of v1, v0, Lcom/nianticproject/ingress/gameentity/components/d;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/d;->getLevelName()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
