.class public final Lcom/nianticproject/ingress/common/inventory/ui/az;
.super Lcom/nianticproject/ingress/common/inventory/ui/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/p;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V

    .line 17
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/PowerCube;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method final a(Lcom/nianticproject/ingress/common/ui/widget/c;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/az;->a:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/az;->b:Lcom/nianticproject/ingress/common/model/k;

    :try_start_0
    const-string/jumbo v2, "ActionModels.updateUsePowerCubeModel"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;->usage(I)Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Level denied"

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/az;->a:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PowerCube;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PowerCube;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PowerCube;->getEnergy()I

    move-result v0

    return v0
.end method
