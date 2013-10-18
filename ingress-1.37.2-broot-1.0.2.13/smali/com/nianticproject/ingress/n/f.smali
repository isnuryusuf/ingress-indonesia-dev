.class public final Lcom/nianticproject/ingress/n/f;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/ui/a/b;


# instance fields
.field private a:Lcom/nianticproject/ingress/ui/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/nianticproject/ingress/n/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/f;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string/jumbo v2, "codename"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/f;->e(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/f;)Lcom/nianticproject/ingress/ui/a/c;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/n/f;->a:Lcom/nianticproject/ingress/ui/a/c;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/f;->H()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/q;->h()V

    .line 101
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/f;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 53
    const v0, 0x7f030025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 55
    const v0, 0x7f080034

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    const v1, 0x7f08007a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    const v2, 0x7f080078

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/f;->h()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "codename"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 61
    const v6, 0x7f090056

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v3, Lcom/nianticproject/ingress/ui/a/c;

    invoke-direct {v3}, Lcom/nianticproject/ingress/ui/a/c;-><init>()V

    iput-object v3, p0, Lcom/nianticproject/ingress/n/f;->a:Lcom/nianticproject/ingress/ui/a/c;

    .line 67
    iget-object v3, p0, Lcom/nianticproject/ingress/n/f;->a:Lcom/nianticproject/ingress/ui/a/c;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/TextView;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/nianticproject/ingress/ui/a/c;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 71
    new-instance v3, Lcom/nianticproject/ingress/n/g;

    invoke-direct {v3, p0}, Lcom/nianticproject/ingress/n/g;-><init>(Lcom/nianticproject/ingress/n/f;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object v4
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "NicknamePersistedFragment"

    return-object v0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->q()V

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/n/f;->a:Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/a/c;->a(Lcom/nianticproject/ingress/ui/a/b;)V

    .line 96
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/n/f;->a:Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/c;->b()V

    .line 89
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->r()V

    .line 90
    return-void
.end method
