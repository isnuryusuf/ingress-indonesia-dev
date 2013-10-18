.class final Lcom/nianticproject/ingress/common/ui/hud/i;
.super Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/j/h;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment;-><init>(Lcom/nianticproject/ingress/common/j/h;)V

    .line 99
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/hud/i;->b()Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/nianticproject/ingress/common/ui/hud/SelectableHudFragment$SelectableHudStyle;)V

    .line 100
    return-void
.end method
