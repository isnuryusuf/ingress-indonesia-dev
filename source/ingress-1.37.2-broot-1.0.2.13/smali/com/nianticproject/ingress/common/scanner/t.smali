.class final Lcom/nianticproject/ingress/common/scanner/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/eg;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/gameentity/f;

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/t;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/t;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/t;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/common/scanner/ed;->b(Lcom/nianticproject/ingress/common/scanner/eg;)V

    .line 882
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/t;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/t;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/t;->a:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Ljava/lang/String;)Lcom/nianticproject/ingress/common/scanner/ej;

    move-result-object v0

    .line 884
    if-eqz v0, :cond_1

    .line 885
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/t;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->a(Lcom/nianticproject/ingress/common/scanner/ej;)Z

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/t;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/scanner/k;->c:Lcom/nianticproject/ingress/common/scanner/ed;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/ed;->b()V

    goto :goto_0
.end method
