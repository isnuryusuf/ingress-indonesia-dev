.class public final Lcom/nianticproject/ingress/common/scanner/modes/bu;
.super Lcom/nianticproject/ingress/common/scanner/modes/ag;
.source "SourceFile"


# instance fields
.field private g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

.field private h:Lcom/nianticproject/ingress/common/scanner/visuals/cq;

.field private final i:Lcom/nianticproject/ingress/common/h/l;

.field private final j:Lcom/nianticproject/ingress/common/model/k;

.field private k:Lcom/nianticproject/ingress/gameentity/components/Resource;

.field private final l:Lcom/nianticproject/ingress/common/model/n;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p4, p5}, Lcom/nianticproject/ingress/common/scanner/modes/ag;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V

    .line 62
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->i:Lcom/nianticproject/ingress/common/h/l;

    .line 63
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->j:Lcom/nianticproject/ingress/common/model/k;

    .line 64
    invoke-interface {p5}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->k:Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 65
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bv;

    invoke-direct {v0, p0, p5}, Lcom/nianticproject/ingress/common/scanner/modes/bv;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bu;Lcom/nianticproject/ingress/common/scanner/ej;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->l:Lcom/nianticproject/ingress/common/model/n;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/modes/bu;)Lcom/nianticproject/ingress/common/scanner/modes/bw;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/modes/bu;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->j:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/modes/bu;)Lcom/nianticproject/ingress/gameentity/components/Resource;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->k:Lcom/nianticproject/ingress/gameentity/components/Resource;

    return-object v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/modes/bu;)Lcom/nianticproject/ingress/common/h/l;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->i:Lcom/nianticproject/ingress/common/h/l;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->G()Lcom/c/a/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/a;->a(F)V

    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ej;->a(Z)V

    .line 111
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/cq;-><init>(Lcom/nianticproject/ingress/common/scanner/ej;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->h:Lcom/nianticproject/ingress/common/scanner/visuals/cq;

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->h:Lcom/nianticproject/ingress/common/scanner/visuals/cq;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ej;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 114
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/j/as;)V

    .line 116
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bw;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bu;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->j:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->l:Lcom/nianticproject/ingress/common/model/n;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 121
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->l:Lcom/nianticproject/ingress/common/model/n;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->j:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/model/n;->a(Lcom/nianticproject/ingress/common/ad;)V

    .line 122
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/model/GameState;)V

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 97
    iget-object v1, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    invoke-virtual {v1, v0}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Resource;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->k:Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 101
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/modes/bw;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/bu;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->c:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->g:Lcom/nianticproject/ingress/common/scanner/modes/bw;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 105
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->b()V

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/scanner/ej;->a(Z)V

    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->G()Lcom/c/a/a/a/a;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/c/a/a/a/a;->a(F)V

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->h:Lcom/nianticproject/ingress/common/scanner/visuals/cq;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cq;->b()V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->j:Lcom/nianticproject/ingress/common/model/k;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/bu;->l:Lcom/nianticproject/ingress/common/model/n;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 131
    return-void
.end method
