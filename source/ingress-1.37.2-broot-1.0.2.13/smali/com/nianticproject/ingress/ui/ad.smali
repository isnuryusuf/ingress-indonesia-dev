.class final Lcom/nianticproject/ingress/ui/ad;
.super Lcom/nianticproject/ingress/ui/w;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/w;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/ad;->a:Ljava/lang/String;

    .line 459
    iput p2, p0, Lcom/nianticproject/ingress/ui/ad;->b:I

    .line 460
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 478
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 480
    check-cast v0, Lcom/nianticproject/ingress/NemesisActivity;

    .line 481
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->a(Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 467
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->l()Lcom/nianticproject/ingress/common/a;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/ad;->a:Ljava/lang/String;

    iget v2, p0, Lcom/nianticproject/ingress/ui/ad;->b:I

    invoke-interface {v0, v1, v2}, Lcom/nianticproject/ingress/common/a;->a(Ljava/lang/String;I)V

    .line 471
    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    return-void
.end method
