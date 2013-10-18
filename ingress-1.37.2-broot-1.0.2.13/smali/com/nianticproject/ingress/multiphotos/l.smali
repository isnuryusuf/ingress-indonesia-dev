.class final Lcom/nianticproject/ingress/multiphotos/l;
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
    .line 201
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/l;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/l;->a:Lcom/nianticproject/ingress/multiphotos/LightboxActivity;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/LightboxActivity;->i()Lcom/nianticproject/ingress/multiphotos/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/multiphotos/av;->d()V

    .line 205
    return-void
.end method
