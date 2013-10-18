.class final Lcom/nianticproject/ingress/common/k;
.super Lcom/nianticproject/ingress/common/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nianticproject/ingress/common/x/b",
        "<",
        "Lcom/nianticproject/ingress/common/model/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/j;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/j;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nianticproject/ingress/common/k;->a:Lcom/nianticproject/ingress/common/j;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 145
    check-cast p1, Lcom/nianticproject/ingress/common/model/e;

    sget-object v0, Lcom/nianticproject/ingress/common/model/e;->a:Lcom/nianticproject/ingress/common/model/e;

    if-eq p1, v0, :cond_0

    new-instance v0, Lcom/nianticproject/ingress/common/model/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k;->a:Lcom/nianticproject/ingress/common/j;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/j;->c:Lcom/nianticproject/ingress/common/h;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/h;->b(Lcom/nianticproject/ingress/common/h;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/k;->a:Lcom/nianticproject/ingress/common/j;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/j;->c:Lcom/nianticproject/ingress/common/h;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/h;->c(Lcom/nianticproject/ingress/common/h;)Lcom/nianticproject/ingress/common/g/e;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/k;->a:Lcom/nianticproject/ingress/common/j;

    iget-object v3, v3, Lcom/nianticproject/ingress/common/j;->c:Lcom/nianticproject/ingress/common/h;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/h;->d(Lcom/nianticproject/ingress/common/h;)Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/nianticproject/ingress/common/model/ad;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/model/e;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
