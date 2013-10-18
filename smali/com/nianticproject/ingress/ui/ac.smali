.class final Lcom/nianticproject/ingress/ui/ac;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;)V
    .locals 1
    .parameter

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 499
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/ac;->a:Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;

    .line 500
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 504
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 505
    check-cast v0, Lcom/nianticproject/ingress/NemesisActivity;

    .line 506
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/ac;->a:Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/gf;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->e()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->f()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/a/d/u;->a(JJ)Lcom/google/a/d/u;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/nianticproject/ingress/common/scanner/gf;-><init>(Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/NemesisActivity;->a(Lcom/nianticproject/ingress/common/scanner/j;)V

    .line 507
    return-void
.end method
