.class public final Lcom/nianticproject/ingress/common/gameentity/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;)I
    .locals 2
    .parameter

    .prologue
    .line 13
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->h()Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    move-result-object v0

    .line 14
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a(I)I

    move-result v0

    return v0
.end method
