.class public final Lcom/nianticproject/ingress/common/scanner/visuals/a/h;
.super Lcom/nianticproject/ingress/common/j/q;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field public static e:Z

.field private static f:Lcom/badlogic/gdx/graphics/Color;

.field private static final g:F


# instance fields
.field private h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

.field private i:F

.field private final j:Lcom/nianticproject/ingress/gameentity/components/Resource;

.field private final k:Lcom/nianticproject/ingress/shared/af;

.field private final l:Lcom/nianticproject/ingress/common/gameentity/c;

.field private m:Lcom/badlogic/gdx/math/Matrix4;

.field private n:F

.field private o:F

.field private p:Lcom/badlogic/gdx/math/Vector3;

.field private q:F

.field private r:F

.field private s:Z

.field private t:Lcom/nianticproject/ingress/common/j/h;

.field private u:Lcom/nianticproject/ingress/common/scanner/visuals/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->e:Z

    .line 55
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f7851ec

    const v2, 0x3ef0a3d7

    const v3, 0x3e99999a

    const v4, 0x3ee66666

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->f:Lcom/badlogic/gdx/graphics/Color;

    .line 57
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->a()F

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->g:F

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/components/Resource;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/q;-><init>()V

    .line 146
    iput-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    .line 152
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->m:Lcom/badlogic/gdx/math/Matrix4;

    .line 155
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v3, v1, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->p:Lcom/badlogic/gdx/math/Vector3;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->s:Z

    .line 163
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->j:Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 164
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->k:Lcom/nianticproject/ingress/shared/af;

    .line 165
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->k:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 166
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->k:Lcom/nianticproject/ingress/shared/af;

    invoke-static {v0, v2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/shared/af;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    .line 167
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->c()V

    .line 168
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->n()Lcom/nianticproject/ingress/common/j/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->t:Lcom/nianticproject/ingress/common/j/h;

    .line 169
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->a:Lcom/nianticproject/ingress/common/j/ai;

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2, v3, v3, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sget-object v3, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->f:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->f:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->f:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v6, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->f:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;-><init>(Lcom/nianticproject/ingress/common/j/ai;Lcom/badlogic/gdx/math/Vector3;FFFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->u:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    .line 171
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/scanner/visuals/a/j;Lcom/nianticproject/ingress/common/scanner/visuals/a/j;)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->b()F

    move-result v1

    .line 209
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->b()F

    move-result v0

    .line 210
    :goto_0
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->r:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 211
    const/4 v0, 0x0

    .line 216
    :goto_1
    return v0

    .line 209
    :cond_0
    sget v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->g:F

    goto :goto_0

    .line 213
    :cond_1
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->r:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    .line 214
    const/high16 v0, 0x3f80

    goto :goto_1

    .line 216
    :cond_2
    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->r:F

    sub-float/2addr v2, v1

    sub-float/2addr v0, v1

    div-float v0, v2, v0

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    if-nez v0, :cond_1

    .line 179
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    if-nez v0, :cond_3

    .line 197
    :cond_0
    :goto_1
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 182
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 183
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->values()[Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->k:Lcom/nianticproject/ingress/shared/af;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->a(Lcom/nianticproject/ingress/shared/af;)Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 303
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->n:F

    invoke-virtual {v0, v6, v1, v6}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->p:Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->q:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->o:F

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->o:F

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->o:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 310
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->a()Lcom/nianticproject/ingress/common/j/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ad;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->c:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 315
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 317
    const-string/jumbo v1, "u_teamColor"

    sget-object v2, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 318
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->j:Lcom/nianticproject/ingress/gameentity/components/Resource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/gameentity/g;->a(Lcom/nianticproject/ingress/gameentity/components/Resource;I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    .line 319
    const-string/jumbo v2, "u_levelColor"

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 320
    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 322
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 323
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 324
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->a:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 325
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 330
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->d:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->a()Lcom/nianticproject/ingress/common/j/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ad;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    .line 331
    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/ea;->b(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    .line 333
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->h:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 334
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 335
    const-string/jumbo v1, "u_texture"

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 336
    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 338
    const-string/jumbo v1, "u_elapsedTime"

    const v2, 0x3dcccccd

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->r:F

    const/high16 v4, 0x4396

    rem-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 340
    const-string/jumbo v1, "u_teamColor"

    iget v2, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 342
    const-string/jumbo v1, "u_altColor"

    sget-object v2, Lcom/nianticproject/ingress/common/inventory/ui/ao;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 343
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->b:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 344
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->b:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 345
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/gameentity/c;->b:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 346
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 348
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->n:F

    invoke-virtual {v0, v6, v1, v6}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 351
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-super {p0, v0, p2, p3}, Lcom/nianticproject/ingress/common/j/q;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 352
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->u:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->m:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 353
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f333333

    const/high16 v4, 0x40a0

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    .line 221
    invoke-super {p0, p1}, Lcom/nianticproject/ingress/common/j/q;->a(F)Z

    .line 222
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    if-nez v0, :cond_0

    move v0, v8

    .line 298
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/i;->b:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 274
    :cond_1
    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->c:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->a(Lcom/nianticproject/ingress/common/scanner/visuals/a/j;Lcom/nianticproject/ingress/common/scanner/visuals/a/j;)F

    move-result v0

    .line 276
    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    sub-float/2addr v0, v9

    .line 278
    float-to-double v1, v0

    const-wide/high16 v3, 0x4010

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v9, v1

    .line 279
    float-to-double v2, v0

    const-wide/high16 v4, 0x4018

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v9, v0

    .line 280
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->u:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    const v3, 0x3ff33333

    const v4, 0x3eb33334

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;->b(F)V

    .line 281
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->u:Lcom/nianticproject/ingress/common/scanner/visuals/aj;

    const v2, 0x3f19999a

    mul-float/2addr v0, v2

    add-float/2addr v0, v10

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/aj;->c(F)V

    .line 283
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->r:F

    .line 286
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->i:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->i:F

    .line 287
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->i:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    iget v1, v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 288
    iput v10, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->i:F

    .line 289
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->c()V

    .line 293
    :cond_2
    sget-boolean v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    if-nez v0, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->c()V

    .line 295
    iput v10, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->r:F

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->h:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 229
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->a:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->b:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->a(Lcom/nianticproject/ingress/common/scanner/visuals/a/j;Lcom/nianticproject/ingress/common/scanner/visuals/a/j;)F

    move-result v0

    .line 230
    sub-float v0, v9, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v9, v0

    .line 231
    const/high16 v1, 0x4090

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->n:F

    .line 232
    const/high16 v1, 0x4010

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->o:F

    .line 233
    iput v10, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->q:F

    .line 234
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->a:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/a/j;->c:Lcom/nianticproject/ingress/common/scanner/visuals/a/j;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->a(Lcom/nianticproject/ingress/common/scanner/visuals/a/j;Lcom/nianticproject/ingress/common/scanner/visuals/a/j;)F

    move-result v0

    .line 235
    float-to-double v1, v0

    const-wide v3, 0x3ff4ccccc0000000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 236
    const v2, 0x453b8000

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->q:F

    .line 237
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 238
    mul-float/2addr v1, v9

    .line 239
    mul-float/2addr v0, v7

    .line 240
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->p:Lcom/badlogic/gdx/math/Vector3;

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v0, v1

    invoke-virtual {v2, v3, v9, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    goto/16 :goto_1

    .line 245
    :pswitch_1
    const/high16 v0, 0x4090

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->n:F

    .line 246
    iput-boolean v8, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->s:Z

    .line 247
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->q:F

    const/high16 v1, 0x4170

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->q:F

    goto/16 :goto_1

    .line 251
    :pswitch_2
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->s:Z

    if-nez v0, :cond_1

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->s:Z

    .line 254
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/w;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->t:Lcom/nianticproject/ingress/common/j/h;

    const/high16 v2, 0x4000

    const/16 v3, 0x14

    const/high16 v5, 0x3f00

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/w;-><init>(Lcom/nianticproject/ingress/common/j/h;FIFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 259
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/w;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->t:Lcom/nianticproject/ingress/common/j/h;

    const v2, 0x3fcccccd

    const/16 v3, 0x14

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/w;-><init>(Lcom/nianticproject/ingress/common/j/h;FIFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 261
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/w;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->t:Lcom/nianticproject/ingress/common/j/h;

    const v2, 0x3f99999a

    const/16 v3, 0x32

    const v5, 0x3e99999a

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/w;-><init>(Lcom/nianticproject/ingress/common/j/h;FIFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 263
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/w;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->t:Lcom/nianticproject/ingress/common/j/h;

    const/16 v3, 0x64

    sget-object v6, Lcom/nianticproject/ingress/common/w/i;->e:Lcom/badlogic/gdx/graphics/Color;

    move v2, v9

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/w;-><init>(Lcom/nianticproject/ingress/common/j/h;FIFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 265
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/u;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->t:Lcom/nianticproject/ingress/common/j/h;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->l:Lcom/nianticproject/ingress/common/gameentity/c;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/gameentity/c;->a:Lcom/nianticproject/ingress/common/j/ai;

    const/high16 v3, 0x3fc0

    const/16 v4, 0x50

    const/high16 v5, 0x3f00

    const/high16 v6, 0x4050

    sget-object v7, Lcom/nianticproject/ingress/common/w/i;->e:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/scanner/visuals/u;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/nianticproject/ingress/common/j/ai;FIFFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->b(Lcom/nianticproject/ingress/common/j/o;)V

    .line 267
    iput v10, p0, Lcom/nianticproject/ingress/common/scanner/visuals/a/h;->o:F

    goto/16 :goto_1

    :cond_4
    move v0, v8

    .line 298
    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final dispose()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method
