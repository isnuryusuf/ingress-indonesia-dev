.class public final Lcom/nianticproject/ingress/n/a;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/ui/a/b;


# instance fields
.field private a:Lcom/nianticproject/ingress/ui/a/c;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    return-void
.end method

.method public static F()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/nianticproject/ingress/n/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/a;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/a;)Lcom/nianticproject/ingress/ui/a/c;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/n/a;->a:Lcom/nianticproject/ingress/ui/a/c;

    return-object v0
.end method


# virtual methods
.method protected final E()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/a;->H()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/q;->h()V

    .line 91
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    const v0, 0x7f030022

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nianticproject/ingress/n/a;->b:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/n/a;->b:Landroid/widget/TextView;

    const-string/jumbo v3, "coda.ttf"

    invoke-static {v0, v2, v3}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090052

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/nianticproject/ingress/ec;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/a;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const v0, 0x1020015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    new-instance v3, Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/a;->i()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v3}, Lcom/nianticproject/ingress/ui/a/c;-><init>()V

    iput-object v3, p0, Lcom/nianticproject/ingress/n/a;->a:Lcom/nianticproject/ingress/ui/a/c;

    .line 61
    iget-object v3, p0, Lcom/nianticproject/ingress/n/a;->a:Lcom/nianticproject/ingress/ui/a/c;

    new-array v4, v8, [Landroid/widget/TextView;

    iget-object v5, p0, Lcom/nianticproject/ingress/n/a;->b:Landroid/widget/TextView;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/CharSequence;

    aput-object v2, v5, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/nianticproject/ingress/ui/a/c;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 63
    iget-object v2, p0, Lcom/nianticproject/ingress/n/a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v0, Lcom/nianticproject/ingress/n/b;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/n/b;-><init>(Lcom/nianticproject/ingress/n/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-object v1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/a;->i()Landroid/support/v4/app/FragmentActivity;

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

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "BootFragment"

    return-object v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->q()V

    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/n/a;->a:Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/a/c;->a(Lcom/nianticproject/ingress/ui/a/b;)V

    .line 86
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nianticproject/ingress/n/a;->a:Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/c;->b()V

    .line 79
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->r()V

    .line 80
    return-void
.end method
