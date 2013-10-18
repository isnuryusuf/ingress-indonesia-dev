.class final Lcom/nianticproject/ingress/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/AccountsActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AccountsActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nianticproject/ingress/b;->a:Lcom/nianticproject/ingress/AccountsActivity;

    const/high16 v0, 0x7f03

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/nianticproject/ingress/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "coda.ttf"

    invoke-static {v1, v0, v2}, Lcom/nianticproject/ingress/ui/aj;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-object v0
.end method
