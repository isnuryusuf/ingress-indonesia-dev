.class final Lcom/nianticproject/ingress/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/dj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/dj;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/nianticproject/ingress/dk;->a:Lcom/nianticproject/ingress/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/dk;->a:Lcom/nianticproject/ingress/dj;

    invoke-static {v0}, Lcom/nianticproject/ingress/dj;->a(Lcom/nianticproject/ingress/dj;)Lcom/nianticproject/ingress/n/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/n/s;->l()V

    .line 208
    return-void
.end method
