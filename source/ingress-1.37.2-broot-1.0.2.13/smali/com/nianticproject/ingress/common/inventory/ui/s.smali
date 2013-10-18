.class final Lcom/nianticproject/ingress/common/inventory/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nianticproject/ingress/common/inventory/ui/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 95
    check-cast p1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    check-cast p2, Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->b(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/nianticproject/ingress/common/inventory/ui/q;->b(Lcom/nianticproject/ingress/common/inventory/ui/q;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
