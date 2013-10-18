.class final Lcom/nianticproject/ingress/common/scanner/visuals/bk;
.super Lcom/nianticproject/ingress/common/scanner/visuals/bc;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/fp;

.field final synthetic b:Lcom/nianticproject/ingress/common/scanner/visuals/bj;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/visuals/bj;Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/common/scanner/fp;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bk;->b:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bk;->a:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bk;->b:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->b(Lcom/nianticproject/ingress/common/scanner/visuals/bj;)Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->b()V

    .line 252
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bk;->b:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->c(Lcom/nianticproject/ingress/common/scanner/visuals/bj;)V

    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bk;->b:Lcom/nianticproject/ingress/common/scanner/visuals/bj;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bj;->d(Lcom/nianticproject/ingress/common/scanner/visuals/bj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/bm;

    .line 255
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/bk;->a:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/google/a/d/u;

    move-result-object v3

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bm;->b(Lcom/nianticproject/ingress/common/scanner/visuals/bm;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method
