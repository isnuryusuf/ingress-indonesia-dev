.class final Lcom/nianticproject/ingress/common/scanner/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/a/u;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/u;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/w;->a:Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/q/c;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/nianticproject/ingress/common/q/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/w;->a:Lcom/nianticproject/ingress/common/scanner/a/u;

    invoke-static {v0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/a/u;->a(Lcom/nianticproject/ingress/common/scanner/a/u;Lcom/nianticproject/ingress/common/q/c;Ljava/util/concurrent/Future;)V

    .line 205
    return-void
.end method
