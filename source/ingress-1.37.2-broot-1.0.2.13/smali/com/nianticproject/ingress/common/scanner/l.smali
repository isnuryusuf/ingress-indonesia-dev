.class final Lcom/nianticproject/ingress/common/scanner/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/es;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/nianticproject/ingress/common/scanner/ep;
    .locals 3
    .parameter

    .prologue
    .line 227
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/fp;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/q/c;->a(J)Lcom/nianticproject/ingress/common/q/c;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/m;-><init>(Lcom/nianticproject/ingress/common/scanner/l;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/q/c;)V

    return-object v0
.end method
