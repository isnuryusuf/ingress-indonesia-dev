.class public Lcom/nianticproject/ingress/AccountsActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/accounts/Account;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Intent;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/AccountsActivity;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/nianticproject/ingress/AccountsActivity;->finish()V

    .line 142
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/nianticproject/ingress/o/a;->a()V

    .line 53
    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->a(Landroid/accounts/Account;)V

    .line 77
    :goto_0
    return-void

    .line 59
    :cond_0
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->setContentView(I)V

    .line 61
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    new-instance v1, Lcom/nianticproject/ingress/a;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/a;-><init>(Lcom/nianticproject/ingress/AccountsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->setVolumeControlStream(I)V

    .line 76
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "coda.ttf"

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/AccountsActivity;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 122
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->a(Landroid/accounts/Account;)V

    .line 123
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 114
    invoke-static {}, Lcom/nianticproject/ingress/common/a/c;->c()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 82
    const-string/jumbo v0, "AccountsActivity"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/a/a;->a(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->setResult(I)V

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/b;

    invoke-static {p0}, Lcom/nianticproject/ingress/o/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/nianticproject/ingress/b;-><init>(Lcom/nianticproject/ingress/AccountsActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/AccountsActivity;->a:Landroid/widget/ArrayAdapter;

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/AccountsActivity;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/AccountsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    return-void
.end method
