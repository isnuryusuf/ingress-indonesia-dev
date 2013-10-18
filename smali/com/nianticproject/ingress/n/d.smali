.class public final Lcom/nianticproject/ingress/n/d;
.super Lcom/nianticproject/ingress/n/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/nianticproject/ingress/ui/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nianticproject/ingress/n/p;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/n/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/n/d;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string/jumbo v2, "codename"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/n/d;->e(Landroid/os/Bundle;)V

    .line 34
    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/n/d;)Lcom/nianticproject/ingress/ui/a/c;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/n/d;->c:Lcom/nianticproject/ingress/ui/a/c;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    const v0, 0x7f030024

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 47
    const v0, 0x7f080078

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    const v1, 0x7f080079

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    const v2, 0x7f080063

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/nianticproject/ingress/n/d;->a:Landroid/widget/Button;

    .line 50
    const v2, 0x7f080064

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/nianticproject/ingress/n/d;->b:Landroid/widget/Button;

    .line 52
    iget-object v2, p0, Lcom/nianticproject/ingress/n/d;->a:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v2, p0, Lcom/nianticproject/ingress/n/d;->b:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/d;->h()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "codename"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v4, Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/d;->i()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v4}, Lcom/nianticproject/ingress/ui/a/c;-><init>()V

    iput-object v4, p0, Lcom/nianticproject/ingress/n/d;->c:Lcom/nianticproject/ingress/ui/a/c;

    .line 57
    iget-object v4, p0, Lcom/nianticproject/ingress/n/d;->c:Lcom/nianticproject/ingress/ui/a/c;

    new-array v5, v6, [Landroid/widget/TextView;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/nianticproject/ingress/ui/a/c;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 60
    new-instance v2, Lcom/nianticproject/ingress/n/e;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/n/e;-><init>(Lcom/nianticproject/ingress/n/d;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object v3
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "NicknameConfirmFragment"

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/n/d;->a:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/d;->H()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/q;->a()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/n/d;->b:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/nianticproject/ingress/n/d;->H()Lcom/nianticproject/ingress/n/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/n/q;->b()V

    goto :goto_0
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->q()V

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/n/d;->c:Lcom/nianticproject/ingress/ui/a/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/ui/a/c;->a(Lcom/nianticproject/ingress/ui/a/b;)V

    .line 92
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/n/d;->c:Lcom/nianticproject/ingress/ui/a/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/c;->b()V

    .line 85
    invoke-super {p0}, Lcom/nianticproject/ingress/n/p;->r()V

    .line 86
    return-void
.end method
