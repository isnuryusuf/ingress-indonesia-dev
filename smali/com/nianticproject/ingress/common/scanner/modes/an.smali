.class final Lcom/nianticproject/ingress/common/scanner/modes/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:Lcom/nianticproject/ingress/common/inventory/ui/q;

.field final synthetic c:Lcom/nianticproject/ingress/common/scanner/modes/ah;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/modes/ah;Lcom/google/a/d/u;Lcom/nianticproject/ingress/common/inventory/ui/q;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/an;->c:Lcom/nianticproject/ingress/common/scanner/modes/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/an;->b:Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 358
    invoke-virtual {p3}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 359
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalLocation()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/an;->a:D

    .line 360
    return-void
.end method
