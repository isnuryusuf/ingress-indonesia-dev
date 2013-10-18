.class final Lcom/nianticproject/ingress/service/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/nianticproject/ingress/service/core/CoreService;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/service/core/CoreService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/nianticproject/ingress/service/core/b;->b:Lcom/nianticproject/ingress/service/core/CoreService;

    iput-object p2, p0, Lcom/nianticproject/ingress/service/core/b;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/b;->b:Lcom/nianticproject/ingress/service/core/CoreService;

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/service/core/CoreService;->c(Landroid/content/Intent;)V

    .line 274
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/b;->b:Lcom/nianticproject/ingress/service/core/CoreService;

    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/b;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/service/core/CoreService;->a(Lcom/nianticproject/ingress/service/core/CoreService;Landroid/content/Intent;)V

    .line 275
    return-void
.end method
