.class final Lcom/nianticproject/ingress/multiphotos/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/ab;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ab;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-static {v0}, Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;->e(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)Lcom/nianticproject/ingress/multiphotos/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/q;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ab;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/ab;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/ab;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-static {v2}, Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;->f(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/multiphotos/ab;->a:Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;

    invoke-static {v3}, Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;->g(Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/multiphotos/MoreInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 245
    :cond_0
    return-void
.end method
