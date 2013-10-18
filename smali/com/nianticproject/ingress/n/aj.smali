.class public final Lcom/nianticproject/ingress/n/aj;
.super Lcom/nianticproject/ingress/n/m;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/nianticproject/ingress/common/c/bn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/m;-><init>()V

    return-void
.end method

.method public static F()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/nianticproject/ingress/n/aj;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/aj;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/n/m;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 41
    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;

    .line 43
    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a()V

    .line 45
    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->b()V

    .line 46
    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->c()V

    .line 47
    return-object v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/n/m;->a(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/aj;->a:Z

    .line 54
    return-void
.end method

.method protected final a(Landroid/widget/TextView;)V
    .locals 6
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/aj;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090054

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/nianticproject/ingress/ec;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/aj;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/aj;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/nianticproject/ingress/ec;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/ec;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    const v0, 0x7f09007a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 68
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/nianticproject/ingress/n/m;->q()V

    .line 83
    iget-boolean v0, p0, Lcom/nianticproject/ingress/n/aj;->a:Z

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->aU:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/n/aj;->b:Lcom/nianticproject/ingress/common/c/bn;

    .line 85
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/n/aj;->b:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/aj;->a:Z

    .line 88
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/n/aj;->a:Z

    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/n/aj;->b:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/n/aj;->b:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/n/aj;->b:Lcom/nianticproject/ingress/common/c/bn;

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/n/m;->r()V

    .line 78
    return-void
.end method
