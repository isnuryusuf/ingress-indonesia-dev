.class public Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/PlayerActionRange;


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeM()I
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x28

    return v0
.end method

.method public inRange(Lcom/google/a/d/u;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x0

    const-wide v9, 0x412e848000000000L

    .line 21
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    .line 22
    if-nez v6, :cond_0

    move v0, v8

    .line 25
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const-wide/high16 v0, 0x7ff0

    :goto_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;->getRangeM()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/a/d/u;->f()D

    move-result-wide v2

    invoke-interface {v6}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatE6()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v9

    invoke-interface {v6}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLngE6()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v9

    invoke-static/range {v0 .. v7}, Lcom/nianticproject/ingress/shared/b/a;->a(DDDD)D

    move-result-wide v0

    goto :goto_1

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method public setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PlayerActionRange;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/DefaultActionRange;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 32
    return-void
.end method
