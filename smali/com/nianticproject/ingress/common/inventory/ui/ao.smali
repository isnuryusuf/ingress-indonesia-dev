.class public final Lcom/nianticproject/ingress/common/inventory/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field public static final a:Lcom/badlogic/gdx/graphics/Color;

.field public static final b:Lcom/badlogic/gdx/graphics/Color;

.field private static final o:Lcom/badlogic/gdx/math/Vector3;

.field private static final p:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private c:F

.field private final d:Lcom/badlogic/gdx/math/Matrix4;

.field private final e:Lcom/badlogic/gdx/math/Matrix4;

.field private f:Lcom/nianticproject/ingress/common/inventory/ui/q;

.field private g:Lcom/nianticproject/ingress/common/j/d;

.field private h:Lcom/badlogic/gdx/math/Vector3;

.field private i:Lcom/badlogic/gdx/math/Vector3;

.field private j:F

.field private final k:Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

.field private l:F

.field private m:F

.field private final n:Lcom/nianticproject/ingress/common/j/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f30a3d7

    const v2, 0x3f2147ae

    const v3, 0x3f666666

    const/high16 v4, 0x3f80

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->b:Lcom/badlogic/gdx/graphics/Color;

    .line 255
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x4080

    const/high16 v2, 0x4040

    invoke-direct {v0, v1, v2, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->o:Lcom/badlogic/gdx/math/Vector3;

    .line 256
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const v1, 0x3e4ccccd

    invoke-direct {v0, v5, v1, v5}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->p:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->c:F

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->d:Lcom/badlogic/gdx/math/Matrix4;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/ao;->o:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->h:Lcom/badlogic/gdx/math/Vector3;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/ao;->p:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->j:F

    .line 53
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/w;-><init>()V

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/b/b;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->k:Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    .line 56
    iput v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->l:F

    .line 57
    iput v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->m:F

    .line 61
    new-instance v0, Lcom/nianticproject/ingress/common/j/ai;

    const/16 v1, 0x12

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x0

    invoke-static {}, Lcom/badlogic/gdx/graphics/VertexAttribute;->Position()Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/ai;-><init>([FLcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->n:Lcom/nianticproject/ingress/common/j/ai;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0xc1t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method public static c()Lcom/nianticproject/ingress/common/j/f;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Lcom/nianticproject/ingress/common/j/ac;

    sget-object v1, Lcom/nianticproject/ingress/common/inventory/ui/ao;->o:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/nianticproject/ingress/common/inventory/ui/ao;->p:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/j/ac;-><init>(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 266
    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ac;->a(F)V

    .line 267
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->f:Lcom/nianticproject/ingress/common/inventory/ui/q;

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->f:Lcom/nianticproject/ingress/common/inventory/ui/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v6

    .line 118
    invoke-static {v6}, Lcom/nianticproject/ingress/common/gameentity/g;->d(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    .line 119
    invoke-static {v6}, Lcom/nianticproject/ingress/common/gameentity/g;->c(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/gameentity/c;

    move-result-object v0

    .line 120
    iget-object v8, v0, Lcom/nianticproject/ingress/common/gameentity/c;->a:Lcom/nianticproject/ingress/common/j/ai;

    .line 121
    iget-object v9, v0, Lcom/nianticproject/ingress/common/gameentity/c;->b:Lcom/nianticproject/ingress/common/j/ai;

    .line 122
    iget-object v1, v0, Lcom/nianticproject/ingress/common/gameentity/c;->c:Lcom/badlogic/gdx/graphics/Texture;

    .line 130
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 132
    const-wide v2, 0x3fe4ccccc0000000L

    const-wide v4, 0x3fe0c152382d7365L

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 135
    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->i:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->i:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->i:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/high16 v10, 0x4000

    mul-float/2addr v0, v10

    add-float/2addr v0, v5

    invoke-direct {v2, v3, v4, v0}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->h:Lcom/badlogic/gdx/math/Vector3;

    move-object v0, p2

    .line 137
    check-cast v0, Lcom/nianticproject/ingress/common/j/ac;

    .line 138
    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->h:Lcom/badlogic/gdx/math/Vector3;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->i:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, v3, v4}, Lcom/nianticproject/ingress/common/j/ac;->a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    iget v5, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->c:F

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 144
    if-eqz v9, :cond_3

    .line 148
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->c:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->a()Lcom/nianticproject/ingress/common/j/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ad;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 151
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 153
    const-string/jumbo v1, "u_teamColor"

    sget-object v2, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 156
    const-string/jumbo v1, "u_levelColor"

    iget v2, v7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 158
    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 160
    invoke-virtual {v8, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 161
    invoke-virtual {v8}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 162
    invoke-virtual {v8, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 163
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    invoke-static {}, La;->v()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ag;->d:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->a()Lcom/nianticproject/ingress/common/j/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ad;->h()Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    .line 169
    invoke-static {v6}, Lcom/nianticproject/ingress/common/gameentity/g;->e(Lcom/nianticproject/ingress/gameentity/f;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    .line 171
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->h:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 172
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 173
    const-string/jumbo v1, "u_texture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo v1, "u_modelViewProject"

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 176
    const-string/jumbo v1, "u_elapsedTime"

    const v2, 0x3dcccccd

    iget v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->j:F

    const/high16 v4, 0x4396

    rem-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 177
    const-string/jumbo v1, "u_teamColor"

    iget v2, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 179
    const-string/jumbo v1, "u_altColor"

    sget-object v2, Lcom/nianticproject/ingress/common/inventory/ui/ao;->b:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lcom/nianticproject/ingress/common/inventory/ui/ao;->b:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lcom/nianticproject/ingress/common/inventory/ui/ao;->b:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Lcom/nianticproject/ingress/common/inventory/ui/ao;->b:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFFF)V

    .line 181
    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 182
    invoke-virtual {v9}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 183
    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 184
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 216
    :cond_2
    :goto_1
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->m:F

    iget v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->l:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4024

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {}, Lcom/nianticproject/ingress/common/j/ai;->k()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/Color;F)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->n:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->n:Lcom/nianticproject/ingress/common/j/ai;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->b(I)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->n:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->j()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->k:Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    goto/16 :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->g:Lcom/nianticproject/ingress/common/j/d;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 188
    :goto_2
    if-eqz v0, :cond_5

    .line 189
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GLCommon;->glEnable(I)V

    .line 191
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/ag;->aD:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 192
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 193
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 194
    const-string/jumbo v2, "u_texture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 197
    invoke-virtual {v8, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 198
    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 199
    const-string/jumbo v2, "u_modelViewProject"

    iget-object v3, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->e:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 200
    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/w/ad;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 201
    invoke-virtual {v8}, Lcom/nianticproject/ingress/common/j/ai;->h()V

    .line 202
    invoke-virtual {v8, v1}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 204
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glDisable(I)V

    goto/16 :goto_1

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->g:Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    goto :goto_2

    .line 207
    :cond_5
    invoke-static {}, Lcom/nianticproject/ingress/common/j/ai;->k()V

    .line 208
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 209
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->d:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 210
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/ea;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/ai;->a(Lcom/badlogic/gdx/graphics/Color;)V

    .line 211
    invoke-virtual {v8}, Lcom/nianticproject/ingress/common/j/ai;->i()V

    .line 212
    invoke-virtual {v8}, Lcom/nianticproject/ingress/common/j/ai;->j()V

    goto/16 :goto_1
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/j/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->f:Lcom/nianticproject/ingress/common/inventory/ui/q;

    .line 97
    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->g:Lcom/nianticproject/ingress/common/j/d;

    .line 98
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/j/f;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xb71

    const/4 v2, 0x0

    .line 77
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    .line 78
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 79
    invoke-interface {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 80
    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 82
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 83
    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 85
    invoke-virtual {p0, p1, v4}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a(Lcom/nianticproject/ingress/common/inventory/ui/q;Lcom/nianticproject/ingress/common/j/d;)V

    .line 86
    sget-object v1, Lcom/nianticproject/ingress/common/w/z;->a:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v1, p2, v4}, Lcom/nianticproject/ingress/common/inventory/ui/ao;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 88
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 89
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 90
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 2
    .parameter

    .prologue
    invoke-static {}, La;->al()Z

    move-result v0

    if-nez v0, :cond_0

    return v0

    .line 102
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->c:F

    const/high16 v1, 0x420c

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->c:F

    .line 103
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->j:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->j:F

    .line 104
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 105
    iget v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->m:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->m:F

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->k:Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->a(F)Z

    .line 108
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    const v0, 0x4099999a

    .line 251
    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->l:F

    .line 252
    iput v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->m:F

    .line 253
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ao;->k:Lcom/nianticproject/ingress/common/scanner/visuals/b/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/e;->dispose()V

    .line 248
    return-void
.end method
