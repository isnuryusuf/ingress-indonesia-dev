.class final Lcom/nianticproject/ingress/common/scanner/m;
.super Lcom/nianticproject/ingress/common/scanner/ep;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/l;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/q/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/m;->a:Lcom/nianticproject/ingress/common/scanner/l;

    invoke-direct {p0, p2, p3}, Lcom/nianticproject/ingress/common/scanner/ep;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/q/c;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/common/scanner/fg;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/m;->a:Lcom/nianticproject/ingress/common/scanner/l;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/l;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/scanner/k;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/fg;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/fg;->dispose()V

    .line 232
    return-void
.end method
