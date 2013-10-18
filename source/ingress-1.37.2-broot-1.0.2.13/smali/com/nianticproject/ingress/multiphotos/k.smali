.class final Lcom/nianticproject/ingress/multiphotos/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/LightboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/k;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/k;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/multiphotos/k;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    iget-object v2, v2, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/multiphotos/PortalImageGridActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method
