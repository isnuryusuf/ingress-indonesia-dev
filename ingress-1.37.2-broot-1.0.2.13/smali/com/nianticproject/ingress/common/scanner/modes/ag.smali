.class public abstract Lcom/nianticproject/ingress/common/scanner/modes/ag;
.super Lcom/nianticproject/ingress/common/ui/d/e;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/e/a;


# instance fields
.field protected a:Z

.field protected b:F

.field protected final c:Lcom/nianticproject/ingress/common/scanner/k;

.field protected final d:Lcom/nianticproject/ingress/common/scanner/modes/j;

.field protected final e:Lcom/nianticproject/ingress/common/scanner/ej;

.field protected f:Lcom/nianticproject/ingress/common/scanner/ej;

.field private g:Lcom/nianticproject/ingress/common/j/as;

.field private h:Lcom/nianticproject/ingress/common/scanner/z;

.field private i:F

.field private j:F

.field private k:Lcom/nianticproject/ingress/common/model/k;

.field private l:Lcom/google/a/d/u;

.field private m:Lcom/nianticproject/ingress/common/u;

.field private n:F

.field private o:F

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/k;Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/nianticproject/ingress/common/scanner/ej;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/e;-><init>()V

    .line 53
    const/high16 v0, 0x43af

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->i:F

    .line 54
    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->j:F

    .line 55
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->k:Lcom/nianticproject/ingress/common/model/k;

    .line 57
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->m:Lcom/nianticproject/ingress/common/u;

    .line 82
    iput-object p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->d:Lcom/nianticproject/ingress/common/scanner/modes/j;

    .line 83
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 84
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 85
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    .line 90
    if-eqz p3, :cond_0

    .line 93
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->j()Lcom/nianticproject/ingress/common/r;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/r;->a(I)Lcom/nianticproject/ingress/common/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->m:Lcom/nianticproject/ingress/common/u;

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->m:Lcom/nianticproject/ingress/common/u;

    invoke-interface {p3}, Lcom/nianticproject/ingress/common/scanner/ej;->c()Lcom/google/a/d/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/u;->a(Lcom/google/a/d/u;)V

    .line 96
    :cond_0
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->g:Lcom/nianticproject/ingress/common/j/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 231
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {v2, v1, v3, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    .line 232
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/modes/bz;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->d:Lcom/nianticproject/ingress/common/scanner/modes/j;

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->i:F

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->j:F

    iget v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->n:F

    iget v6, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->o:F

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->g:Lcom/nianticproject/ingress/common/j/as;

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/j/as;->b()F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/scanner/modes/bz;-><init>(Lcom/nianticproject/ingress/common/scanner/modes/j;Lcom/badlogic/gdx/math/Vector3;FFFFF)V

    .line 234
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->g:Lcom/nianticproject/ingress/common/j/as;

    const/high16 v2, 0x3f40

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/j/as;->a(Lcom/nianticproject/ingress/common/j/ar;F)V

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/e/d;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    new-instance v0, Lcom/nianticproject/ingress/common/ui/e/d;

    invoke-direct {v0, v1, v1}, Lcom/nianticproject/ingress/common/ui/e/d;-><init>(ZZ)V

    return-object v0
.end method

.method protected a(Lcom/google/a/d/u;Lcom/google/a/d/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/common/j/as;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->g:Lcom/nianticproject/ingress/common/j/as;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a:Z

    .line 156
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->q:Z

    .line 157
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->q:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->c(Z)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/k;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->p:Z

    .line 162
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->p:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Z)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->C()Lcom/nianticproject/ingress/common/scanner/z;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->h:Lcom/nianticproject/ingress/common/scanner/z;

    invoke-static {}, La;->an()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->e()V

    .line 168
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->disappeared:Lcom/google/a/c/du;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/ej;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/du;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a:Z

    .line 149
    :cond_1
    return-void
.end method

.method protected final a(Lcom/nianticproject/ingress/common/model/k;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->k:Lcom/nianticproject/ingress/common/model/k;

    .line 114
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/ej;FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    .line 221
    :goto_0
    iput p4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->n:F

    .line 222
    iput p5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->o:F

    .line 223
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->i:F

    .line 224
    iput p3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->j:F

    .line 225
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->e()V

    .line 226
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    goto :goto_0
.end method

.method public a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a:Z

    if-eqz v0, :cond_1

    .line 125
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->b:F

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->k:Lcom/nianticproject/ingress/common/model/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->k:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->k:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->l:Lcom/google/a/d/u;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->l:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->c(Lcom/google/a/d/u;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->l:Lcom/google/a/d/u;

    invoke-virtual {p0, v1, v0}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/google/a/d/u;Lcom/google/a/d/u;)V

    .line 130
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->l:Lcom/google/a/d/u;

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a:Z

    return v0
.end method

.method public a(Lcom/nianticproject/ingress/common/scanner/ej;)Z
    .locals 2
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->e:Lcom/nianticproject/ingress/common/scanner/ej;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 255
    :goto_0
    if-nez v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/e/b;->a()Z

    .line 260
    :cond_1
    return v0

    .line 254
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 240
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->p:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->b(Z)V

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->q:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->c:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/k;->c(Z)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->h:Lcom/nianticproject/ingress/common/scanner/z;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/z;->a()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a:Z

    .line 250
    return-void
.end method

.method public final b(FF)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->i:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->j:F

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/scanner/ej;FFFF)V

    .line 188
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a:Z

    .line 142
    return-void
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 198
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->f:Lcom/nianticproject/ingress/common/scanner/ej;

    const/high16 v2, 0x4396

    const/high16 v3, 0x41a0

    iget v4, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->o:F

    iget v5, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->n:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/modes/ag;->a(Lcom/nianticproject/ingress/common/scanner/ej;FFFF)V

    .line 199
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->m:Lcom/nianticproject/ingress/common/u;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->m:Lcom/nianticproject/ingress/common/u;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/u;->a()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/modes/ag;->m:Lcom/nianticproject/ingress/common/u;

    .line 106
    :cond_0
    return-void
.end method
