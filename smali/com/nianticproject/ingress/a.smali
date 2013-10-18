.class final Lcom/nianticproject/ingress/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/AccountsActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/AccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nianticproject/ingress/a;->a:Lcom/nianticproject/ingress/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/a;->a:Lcom/nianticproject/ingress/AccountsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/AccountsActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
