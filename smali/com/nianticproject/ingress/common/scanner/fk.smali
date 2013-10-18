.class public final Lcom/nianticproject/ingress/common/scanner/fk;
.super Lcom/nianticproject/ingress/common/scanner/fg;
.source "SourceFile"


# static fields
.field private static final s:[Lcom/nianticproject/ingress/common/scanner/fo;

.field private static final t:[Lcom/nianticproject/ingress/common/scanner/fl;

.field private static final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/ai;",
            "Lcom/nianticproject/ingress/shared/ai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Z

.field private final j:Lcom/nianticproject/ingress/common/j/ai;

.field private final k:F

.field private final l:F

.field private final m:F

.field private n:F

.field private o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

.field private p:Lcom/nianticproject/ingress/gameentity/components/Modable;

.field private q:Lcom/nianticproject/ingress/shared/ai;

.field private final r:Lcom/nianticproject/ingress/common/scanner/fm;

.field private u:F

.field private v:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 80
    invoke-static {}, Lcom/nianticproject/ingress/shared/ai;->values()[Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/fo;

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/fk;->s:[Lcom/nianticproject/ingress/common/scanner/fo;

    .line 81
    invoke-static {}, Lcom/nianticproject/ingress/shared/ai;->values()[Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/fl;

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/fk;->t:[Lcom/nianticproject/ingress/common/scanner/fl;

    .line 90
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    sget-object v3, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    sget-object v5, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    invoke-static/range {v0 .. v5}, Lcom/google/a/c/dh;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/fk;->w:Ljava/util/Map;

    .line 97
    invoke-static {}, Lcom/nianticproject/ingress/shared/ai;->values()[Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 98
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/fk;->s:[Lcom/nianticproject/ingress/common/scanner/fo;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v5

    new-instance v6, Lcom/nianticproject/ingress/common/scanner/fo;

    invoke-direct {v6, v4}, Lcom/nianticproject/ingress/common/scanner/fo;-><init>(Lcom/nianticproject/ingress/shared/ai;)V

    aput-object v6, v0, v5

    .line 99
    sget-object v5, Lcom/nianticproject/ingress/common/scanner/fk;->t:[Lcom/nianticproject/ingress/common/scanner/fl;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v6

    new-instance v7, Lcom/nianticproject/ingress/common/scanner/fl;

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/fk;->w:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ai;

    invoke-direct {v7, v4, v0}, Lcom/nianticproject/ingress/common/scanner/fl;-><init>(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V

    aput-object v7, v5, v6

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/eo;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/fg;-><init>(Lcom/nianticproject/ingress/common/scanner/eo;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->i:Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    .line 86
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->u:F

    .line 88
    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->v:F

    .line 108
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/scanner/eo;->c()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/u;->hashCode()I

    move-result v1

    .line 110
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->au:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/ag;->au:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->j:Lcom/nianticproject/ingress/common/j/ai;

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->j:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->e()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->k:F

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->j:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->d()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->l:F

    .line 116
    int-to-float v0, v1

    const/high16 v1, 0x4f00

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->m:F

    .line 118
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/fm;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->j:Lcom/nianticproject/ingress/common/j/ai;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/fm;-><init>(Lcom/nianticproject/ingress/common/scanner/fk;Lcom/nianticproject/ingress/common/j/ai;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->r:Lcom/nianticproject/ingress/common/scanner/fm;

    .line 119
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->r:Lcom/nianticproject/ingress/common/scanner/fm;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/fk;->a(Lcom/nianticproject/ingress/common/scanner/fj;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/fk;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->m:F

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/scanner/fk;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->u:F

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/scanner/fk;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->k:F

    return v0
.end method

.method static synthetic d(Lcom/nianticproject/ingress/common/scanner/fk;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->l:F

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/common/scanner/fk;)F
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->n:F

    return v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 206
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->v:F

    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a(Lcom/badlogic/gdx/math/Vector2;F)V

    .line 211
    :cond_0
    return-void
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 287
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->n:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->n:F

    .line 288
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->v:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->v:F

    .line 289
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/scanner/fg;->a(F)Z

    move-result v0

    return v0
.end method

.method public final c(F)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->u:F

    .line 219
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->f:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/fg;->i()V

    .line 133
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->d()V

    .line 136
    :cond_0
    return-void
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string/jumbo v0, "Portal"

    return-object v0
.end method

.method public final k()Lcom/nianticproject/ingress/common/scanner/fo;
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->u:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 297
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/fk;->s:[Lcom/nianticproject/ingress/common/scanner/fo;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->q:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 299
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/fk;->t:[Lcom/nianticproject/ingress/common/scanner/fl;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->q:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/ai;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/fg;->l()V

    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c()V

    .line 128
    :cond_0
    return-void
.end method

.method protected final o()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 151
    :try_start_0
    const-string/jumbo v0, "ScannerPortalEntity.processGameEntity"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 152
    invoke-super {p0}, Lcom/nianticproject/ingress/common/scanner/fg;->o()V

    .line 154
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fk;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->q:Lcom/nianticproject/ingress/shared/ai;

    .line 157
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fk;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v5, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {v0, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    const/high16 v5, 0x3f80

    const v6, 0x3d924925

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    :goto_0
    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/fk;->b(F)V

    .line 159
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/scanner/fk;->e()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v5, Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v0, v5}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Modable;

    .line 160
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/nianticproject/ingress/common/scanner/fk;->v:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_3

    move v4, v3

    :goto_1
    if-eqz v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v4

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v5

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-static {v3}, Lcom/google/a/a/an;->a(Z)V

    move v3, v2

    .line 163
    :goto_3
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v4, v3}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v4

    .line 165
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/nianticproject/ingress/shared/Mod;->buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;

    move-result-object v5

    invoke-interface {v5}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v5

    sget-object v6, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    if-eq v5, v6, :cond_5

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v5

    if-nez v5, :cond_5

    .line 169
    new-instance v3, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;

    invoke-interface {v4}, Lcom/nianticproject/ingress/shared/Mod;->buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;-><init>(Lcom/nianticproject/ingress/gameentity/components/Resource;)V

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/common/scanner/fk;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 176
    :cond_0
    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    .line 179
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->i:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    if-eqz v0, :cond_6

    move v0, v2

    .line 180
    :goto_4
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 181
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v2

    .line 182
    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/fk;->i:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/Mod;->buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v3

    sget-object v4, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    if-eq v3, v4, :cond_1

    .line 184
    new-instance v3, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;

    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/Mod;->buildModResource()Lcom/nianticproject/ingress/gameentity/components/ModResource;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;-><init>(Lcom/nianticproject/ingress/gameentity/components/Resource;)V

    invoke-virtual {p0, v3}, Lcom/nianticproject/ingress/common/scanner/fk;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 185
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/fk;->i:Z

    .line 180
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    move v0, v4

    .line 157
    goto/16 :goto_0

    :cond_3
    move v4, v2

    .line 160
    goto/16 :goto_1

    :cond_4
    move v3, v2

    .line 162
    goto :goto_2

    .line 163
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 191
    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/fk;->p:Lcom/nianticproject/ingress/gameentity/components/Modable;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/fk;->q:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v0, v2, v3}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/shared/ai;)V

    :cond_7
    if-eqz v2, :cond_8

    sget-object v3, Lcom/nianticproject/ingress/gameentity/components/m;->b:Lcom/nianticproject/ingress/gameentity/components/m;

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->j()Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    :cond_8
    move-object v0, v1

    .line 194
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->d()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_b
    :goto_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 197
    return-void

    .line 191
    :cond_c
    if-nez v0, :cond_9

    :try_start_1
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->q:Lcom/nianticproject/ingress/shared/ai;

    invoke-virtual {v0, v2, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/a;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/fk;->b(Lcom/nianticproject/ingress/common/j/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 196
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 194
    :cond_d
    :try_start_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    if-nez v1, :cond_e

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c()V

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->d()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/fk;->o:Lcom/nianticproject/ingress/common/scanner/visuals/a/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/k;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method
