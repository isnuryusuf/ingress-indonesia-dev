.class public final Lcom/nianticproject/ingress/common/scanner/visuals/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/visuals/b/b;


# static fields
.field private static final a:Lcom/badlogic/gdx/graphics/Color;

.field private static final b:Lcom/badlogic/gdx/graphics/Color;

.field private static d:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;


# instance fields
.field private c:Ljava/lang/String;

.field private e:F

.field private f:F

.field private g:Z

.field private h:[F

.field private i:[F

.field private j:[F

.field private k:[F

.field private final l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private final m:Lcom/badlogic/gdx/graphics/Color;

.field private final n:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final o:Lcom/nianticproject/ingress/common/scanner/fk;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/ej;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/badlogic/gdx/math/Vector2;

.field private final r:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

.field private final s:F

.field private final t:F

.field private u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

.field private v:F

.field private w:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x3f333333

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 70
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->b:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/fk;Ljava/util/List;F)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/scanner/fp;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/common/scanner/fk;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/ej;",
            ">;F)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string/jumbo v0, "u_destinations"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->c:Ljava/lang/String;

    .line 125
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->e:F

    .line 126
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    .line 130
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->g:Z

    .line 134
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    .line 135
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->i:[F

    .line 136
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->j:[F

    .line 137
    const/16 v0, 0x1b

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->k:[F

    .line 139
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->d:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->g()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 147
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->q:Lcom/badlogic/gdx/math/Vector2;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    .line 157
    iput v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    .line 161
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->w:Z

    .line 165
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->x:Z

    .line 176
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 177
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->o:Lcom/nianticproject/ingress/common/scanner/fk;

    .line 178
    iput-object p4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->p:Ljava/util/List;

    .line 179
    invoke-static {p3}, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->a(Lcom/nianticproject/ingress/common/scanner/ej;)F

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->s:F

    .line 180
    iput p5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->t:F

    move v1, v2

    .line 182
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 184
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->k:[F

    mul-int/lit8 v0, v1, 0x3

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->a(Lcom/nianticproject/ingress/common/scanner/ej;)F

    move-result v0

    aput v0, v3, v4

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f()V

    .line 188
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/i;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/i;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/g;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->r:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    .line 195
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    .line 196
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/gameentity/components/c;->a:Lcom/nianticproject/ingress/gameentity/components/c;

    if-ne v0, v1, :cond_2

    .line 197
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->a:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->m:Lcom/badlogic/gdx/graphics/Color;

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->getUniforms()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 205
    const-string/jumbo v4, "[0]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[0]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->c:Ljava/lang/String;

    .line 210
    :cond_1
    return-void

    .line 199
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->b:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->m:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    .line 202
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static a(Lcom/nianticproject/ingress/common/scanner/ej;)F
    .locals 2
    .parameter

    .prologue
    .line 213
    invoke-interface {p0}, Lcom/nianticproject/ingress/common/scanner/ej;->f()Lcom/nianticproject/ingress/common/j/ai;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->e()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->d()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 216
    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/b/c;)Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
    .locals 0
    .parameter

    .prologue
    .line 36
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->d:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/h;

    const-string/jumbo v2, "FlipParticleEffect.createResources"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/scanner/visuals/b/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f()V

    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->d:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/c;->dispose()V

    .line 55
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->o:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/fk;->c()Lcom/google/a/d/u;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->q:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->q:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->o:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/fk;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 222
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 223
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 224
    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->n:Lcom/nianticproject/ingress/common/scanner/fp;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/ej;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/ej;->c()Lcom/google/a/d/u;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->k:[F

    mul-int/lit8 v3, v1, 0x3

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->q:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v4, v5

    aput v4, v0, v3

    .line 226
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->k:[F

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v3, v3, 0x2

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->q:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    aput v4, v0, v3

    .line 223
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->m:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v1, v0, v4

    .line 274
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->m:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v1, v0, v6

    .line 275
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->m:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v1, v0, v7

    .line 276
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->m:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    aput v1, v0, v5

    .line 277
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->e:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    aget v1, v0, v5

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->e:F

    const/high16 v3, 0x3f80

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v2

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 283
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->r:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->c()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->i:[F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->q:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v1, v4

    .line 286
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->i:[F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->s:F

    aput v2, v1, v6

    .line 287
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->i:[F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->q:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v2

    aput v0, v1, v7

    .line 290
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->i:[F

    const/high16 v1, 0x4220

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->t:F

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 293
    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc99999a0000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 295
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->j:[F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->e:F

    aput v2, v1, v4

    .line 296
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->j:[F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v6

    .line 297
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->j:[F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    aput v2, v1, v7

    .line 298
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->j:[F

    aput v0, v1, v5

    .line 300
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_params"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->j:[F

    invoke-virtual {v0, v1, v2, v4, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_color"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    invoke-virtual {v0, v1, v2, v4, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 302
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_position"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->i:[F

    invoke-virtual {v0, v1, v2, v4, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform4fv(Ljava/lang/String;[FII)V

    .line 303
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->k:[F

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniform3fv(Ljava/lang/String;[FII)V

    .line 304
    return-void

    .line 279
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    const/high16 v1, 0x3f00

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->h:[F

    aget v1, v0, v5

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    const/high16 v3, 0x3f00

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/y;->a(F)F

    move-result v2

    mul-float/2addr v1, v2

    aput v1, v0, v5

    goto/16 :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/b/j;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    .line 319
    return-void
.end method

.method public final a(F)Z
    .locals 7
    .parameter

    .prologue
    const/high16 v5, 0x4100

    const/high16 v4, 0x4088

    const/high16 v3, 0x4040

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 232
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->e:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->e:F

    .line 233
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    .line 234
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    .line 238
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    cmpl-float v1, v1, v5

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->g:Z

    if-eqz v1, :cond_4

    .line 239
    :cond_0
    iput v6, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    .line 248
    :goto_0
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 249
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    sub-float/2addr v1, v3

    float-to-double v1, v1

    const-wide/high16 v3, 0x4008

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff4

    div-double/2addr v1, v3

    double-to-float v1, v1

    .line 251
    const v2, 0x3e851eb8

    const/high16 v3, 0x3e80

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 252
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->o:Lcom/nianticproject/ingress/common/scanner/fk;

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/scanner/fk;->c(F)V

    .line 255
    :cond_1
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->w:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    const/high16 v2, 0x4020

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/j;->b()V

    .line 258
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->w:Z

    .line 261
    :cond_2
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->x:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    const/high16 v2, 0x4050

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    if-eqz v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/j;->c()V

    .line 264
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->x:Z

    .line 267
    :cond_3
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6

    :goto_1
    return v0

    .line 240
    :cond_4
    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_5

    .line 241
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v6

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    goto :goto_0

    .line 243
    :cond_5
    iput v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->v:F

    goto :goto_0

    .line 267
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()Lcom/nianticproject/ingress/common/scanner/visuals/b/c;
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->d:Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 307
    const/high16 v0, 0x4100

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->e:F

    sub-float v1, v3, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    .line 309
    return-void
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->r:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->dispose()V

    .line 324
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->u:Lcom/nianticproject/ingress/common/scanner/visuals/b/j;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/j;->a()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->o:Lcom/nianticproject/ingress/common/scanner/fk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/fk;->c(F)V

    .line 328
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 313
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->f:F

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->g:Z

    .line 315
    return-void
.end method
