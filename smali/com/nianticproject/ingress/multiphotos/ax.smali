.class final Lcom/nianticproject/ingress/multiphotos/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/multiphotos/aw;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/multiphotos/aw;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nianticproject/ingress/multiphotos/ax;->a:Lcom/nianticproject/ingress/multiphotos/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/ax;->a:Lcom/nianticproject/ingress/multiphotos/aw;

    iget-object v0, v0, Lcom/nianticproject/ingress/multiphotos/aw;->d:Lcom/nianticproject/ingress/multiphotos/av;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/ax;->a:Lcom/nianticproject/ingress/multiphotos/aw;

    iget-boolean v1, v1, Lcom/nianticproject/ingress/multiphotos/aw;->c:Z

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/multiphotos/av;->a(Z)V

    .line 287
    return-void
.end method
