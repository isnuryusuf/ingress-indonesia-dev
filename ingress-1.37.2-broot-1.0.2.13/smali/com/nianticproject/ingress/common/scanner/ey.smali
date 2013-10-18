.class final Lcom/nianticproject/ingress/common/scanner/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/e;
.implements Lcom/nianticproject/ingress/common/scanner/modes/bl;
.implements Lcom/nianticproject/ingress/common/scanner/modes/g;
.implements Lcom/nianticproject/ingress/common/scanner/modes/y;
.implements Lcom/nianticproject/ingress/common/scanner/visuals/au;
.implements Lcom/nianticproject/ingress/common/ui/elements/av;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/nianticproject/ingress/common/scanner/k;

.field private final c:Lcom/nianticproject/ingress/common/h/l;

.field private final d:Lcom/nianticproject/ingress/common/ac;

.field private final e:Lcom/nianticproject/ingress/common/model/k;

.field private final f:Lcom/nianticproject/ingress/common/j/av;

.field private final g:Lcom/nianticproject/ingress/common/g/e;

.field private final h:Lcom/nianticproject/ingress/common/j/h;

.field private final i:Lcom/nianticproject/ingress/common/scanner/ed;

.field private final j:Lcom/nianticproject/ingress/common/r;

.field private k:Lcom/nianticproject/ingress/common/scanner/modes/j;

.field private l:Lcom/nianticproject/ingress/common/ui/elements/Compass;

.field private m:Lcom/nianticproject/ingress/common/ui/t;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/r;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->a:Ljava/util/Set;

    .line 75
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    .line 76
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    .line 77
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->d:Lcom/nianticproject/ingress/common/ac;

    .line 78
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    .line 79
    iput-object p5, p0, Lcom/nianticproject/ingress/common/scanner/ey;->f:Lcom/nianticproject/ingress/common/j/av;

    .line 80
    iput-object p6, p0, Lcom/nianticproject/ingress/common/scanner/ey;->g:Lcom/nianticproject/ingress/common/g/e;

    .line 81
    iput-object p7, p0, Lcom/nianticproject/ingress/common/scanner/ey;->h:Lcom/nianticproject/ingress/common/j/h;

    .line 82
    iput-object p8, p0, Lcom/nianticproject/ingress/common/scanner/ey;->i:Lcom/nianticproject/ingress/common/scanner/ed;

    .line 83
    iput-object p9, p0, Lcom/nianticproject/ingress/common/scanner/ey;->j:Lcom/nianticproject/ingress/common/r;

    .line 84
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->l:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Z)V

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->l:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/elements/Compass;->d()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->x()V

    .line 118
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 12
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/f;

    .line 96
    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/scanner/f;->a(Lcom/nianticproject/ingress/common/scanner/ej;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v11

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bh;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->h:Lcom/nianticproject/ingress/common/j/h;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->f:Lcom/nianticproject/ingress/common/j/av;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/ey;->g:Lcom/nianticproject/ingress/common/g/e;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/ey;->k:Lcom/nianticproject/ingress/common/scanner/modes/j;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/ey;->i:Lcom/nianticproject/ingress/common/scanner/ed;

    move-object v8, p1

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/nianticproject/ingress/common/scanner/modes/bh;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/ed;Lcom/nianticproject/ingress/common/ui/elements/av;)V

    invoke-virtual {v11, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 102
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/model/ab;Ljava/util/Set;Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/scanner/ej;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/common/model/ab;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            ">;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v10

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/ba;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->k:Lcom/nianticproject/ingress/common/scanner/modes/j;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/common/scanner/modes/ba;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/model/ab;Ljava/util/Set;Lcom/nianticproject/ingress/gameentity/f;)V

    invoke-virtual {v10, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 210
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/f;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/ui/elements/Compass;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->m:Lcom/nianticproject/ingress/common/ui/t;

    .line 89
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->k:Lcom/nianticproject/ingress/common/scanner/modes/j;

    .line 90
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->l:Lcom/nianticproject/ingress/common/ui/elements/Compass;

    .line 91
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->d:Lcom/nianticproject/ingress/common/ac;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/ac;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;)V

    .line 135
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 10
    .parameter

    .prologue
    .line 161
    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/ey;->m:Lcom/nianticproject/ingress/common/ui/t;

    new-instance v7, Lcom/nianticproject/ingress/common/inventory/e;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->g:Lcom/nianticproject/ingress/common/g/e;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/scanner/ey;->f:Lcom/nianticproject/ingress/common/j/av;

    new-instance v0, Lcom/nianticproject/ingress/common/inventory/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->m:Lcom/nianticproject/ingress/common/ui/t;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->d:Lcom/nianticproject/ingress/common/ac;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/ey;->j:Lcom/nianticproject/ingress/common/r;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/inventory/g;-><init>(Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/r;)V

    invoke-direct {v7, p1, v8, v9, v0}, Lcom/nianticproject/ingress/common/inventory/e;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/inventory/g;)V

    invoke-virtual {v6, v7}, Lcom/nianticproject/ingress/common/ui/t;->b(Lcom/nianticproject/ingress/common/ui/m;)Lcom/nianticproject/ingress/common/ui/m;

    .line 164
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/at;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/ey;->k:Lcom/nianticproject/ingress/common/scanner/modes/j;

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/modes/at;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/model/GameState;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/gameentity/f;)V

    .line 124
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 125
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v8

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->h:Lcom/nianticproject/ingress/common/j/h;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/ey;->k:Lcom/nianticproject/ingress/common/scanner/modes/j;

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/scanner/modes/u;-><init>(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/modes/y;Lcom/nianticproject/ingress/gameentity/f;)V

    invoke-virtual {v8, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 191
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/gameentity/f;)V

    .line 130
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 7
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v6

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bu;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/ey;->k:Lcom/nianticproject/ingress/common/scanner/modes/j;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/bu;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 108
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/scanner/f;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/components/Portal;)V
    .locals 5
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/modes/bf;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->k:Lcom/nianticproject/ingress/common/scanner/modes/j;

    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/scanner/modes/bf;-><init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/gameentity/f;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/e/b;->b(Lcom/nianticproject/ingress/common/ui/e/a;)V

    .line 152
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    .line 198
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 199
    new-instance v1, Lcom/nianticproject/ingress/common/ui/c/k;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ey;->m:Lcom/nianticproject/ingress/common/ui/t;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/nianticproject/ingress/common/ui/c/k;-><init>(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/h/l;)V

    .line 201
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->m:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->d()Z

    .line 169
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 10
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->l()Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    move-result-object v9

    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->l()Lcom/nianticproject/ingress/common/scanner/visuals/bt;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/ey;->e:Lcom/nianticproject/ingress/common/model/k;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/ey;->c:Lcom/nianticproject/ingress/common/h/l;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/scanner/ey;->g:Lcom/nianticproject/ingress/common/g/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->k()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    move-result-object v8

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/nianticproject/ingress/common/scanner/visuals/HackController;-><init>(Lcom/nianticproject/ingress/common/scanner/ej;Lcom/nianticproject/ingress/common/scanner/visuals/bt;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/h/l;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/scanner/visuals/au;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bt;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 147
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/gameentity/components/Portal;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;)V

    .line 157
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ey;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->a()Z

    move-result v0

    return v0
.end method
