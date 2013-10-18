.class final Lcom/nianticproject/ingress/common/ui/elements/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/ak;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/ak;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->f(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/ui/elements/av;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/ak;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->e(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/gameentity/components/Portal;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/elements/ak;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->k(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/model/GameState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/elements/av;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 1278
    return-void
.end method
