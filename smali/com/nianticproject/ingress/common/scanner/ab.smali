.class final Lcom/nianticproject/ingress/common/scanner/ab;
.super Lcom/nianticproject/ingress/common/ui/d/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/k;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;)V
    .locals 0
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ab;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1372
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/ab;-><init>(Lcom/nianticproject/ingress/common/scanner/k;)V

    return-void
.end method


# virtual methods
.method public final tap(FFIII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ab;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->m(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/j/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ab;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/k;->n(Lcom/nianticproject/ingress/common/scanner/k;)F

    move-result v1

    div-float v1, p1, v1

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ab;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/k;->o(Lcom/nianticproject/ingress/common/scanner/k;)F

    move-result v3

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/g;->a(Lcom/nianticproject/ingress/common/j/f;FF)Lcom/badlogic/gdx/math/collision/Ray;

    move-result-object v0

    .line 1377
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ab;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/k;->p(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->a(Lcom/badlogic/gdx/math/collision/Ray;)Lcom/nianticproject/ingress/common/j/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ab;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/k;->l(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ab;->a:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/k;->p(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/e/b;->a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z

    move-result v0

    .line 1381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
