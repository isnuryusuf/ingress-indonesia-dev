.class final Lcom/nianticproject/ingress/common/ui/elements/aj;
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
    .line 1249
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/aj;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aj;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->i(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/h/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/h/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aj;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)V

    .line 1270
    :goto_0
    return-void

    .line 1258
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/ag;->a()Lcom/nianticproject/ingress/common/ag;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/ag;->a(FF)V

    .line 1261
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aj;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->f(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/ui/elements/av;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/elements/aj;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->j(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/av;->c(Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 1266
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aj;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;)V

    .line 1269
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/aj;->a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;->g()V

    goto :goto_0
.end method
