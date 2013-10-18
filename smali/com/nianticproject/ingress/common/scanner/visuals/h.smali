.class public final Lcom/nianticproject/ingress/common/scanner/visuals/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private static c:Lcom/badlogic/gdx/graphics/Texture;


# instance fields
.field private final d:Lcom/nianticproject/ingress/common/scanner/fp;

.field private final e:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

.field private final f:Lcom/badlogic/gdx/math/Matrix4;

.field private final g:Lcom/badlogic/gdx/math/Vector2;

.field private final h:Lcom/nianticproject/ingress/common/j/t;

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/scanner/visuals/l;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/nianticproject/ingress/common/model/GameState;

.field private l:Z

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/scanner/visuals/h;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/scanner/fp;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->f:Lcom/badlogic/gdx/math/Matrix4;

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->g:Lcom/badlogic/gdx/math/Vector2;

    .line 103
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    .line 104
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->j:Ljava/util/HashSet;

    .line 111
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/fp;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    .line 112
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/i;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/i;-><init>(Lcom/nianticproject/ingress/common/scanner/visuals/h;Lcom/nianticproject/ingress/common/scanner/fp;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->e:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    .line 119
    new-instance v0, Lcom/nianticproject/ingress/common/j/t;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v3, "a_position"

    invoke-direct {v2, v6, v7, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x5

    const-string/jumbo v5, "a_color"

    invoke-direct {v3, v4, v7, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v6, v1}, Lcom/nianticproject/ingress/common/j/t;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->h:Lcom/nianticproject/ingress/common/j/t;

    .line 122
    return-void
.end method

.method private static a(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static a([FILcom/badlogic/gdx/math/Vector2;FFF)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    add-int/lit8 v0, p1, 0x1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v1, p0, p1

    .line 305
    add-int/lit8 v1, v0, 0x1

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, p0, v0

    .line 306
    add-int/lit8 v0, v1, 0x1

    aput p3, p0, v1

    .line 307
    add-int/lit8 v1, v0, 0x1

    aput p4, p0, v0

    .line 309
    add-int/lit8 v0, v1, 0x1

    aput p5, p0, v1

    .line 310
    return v0
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 0
    .parameter

    .prologue
    .line 55
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->c:Lcom/badlogic/gdx/graphics/Texture;

    return-object p0
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 0
    .parameter

    .prologue
    .line 55
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object p0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/scanner/visuals/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    return v0
.end method

.method public static b()V
    .locals 7

    .prologue
    .line 211
    const-string/jumbo v0, "shaders/captured_region.glsl.vert"

    const-string/jumbo v1, "shaders/captured_region.glsl.frag"

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/visuals/j;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/scanner/visuals/j;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    .line 220
    const-string/jumbo v0, "CreateRegionTexture"

    const-string/jumbo v1, "scanner/region_tiling.png"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/b/c;->b(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    new-instance v6, Lcom/nianticproject/ingress/common/scanner/visuals/k;

    invoke-direct {v6}, Lcom/nianticproject/ingress/common/scanner/visuals/k;-><init>()V

    invoke-static/range {v0 .. v6}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;)V

    .line 232
    return-void
.end method

.method public static c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 236
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->c:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    sput-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/h;->c:Lcom/badlogic/gdx/graphics/Texture;

    .line 237
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 23
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    :try_start_0
    const-string/jumbo v1, "CapturedRegionVisuals.draw"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 196
    :goto_0
    return-void

    .line 171
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    if-eqz v1, :cond_2

    .line 172
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->b(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->e:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->b()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->j:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/fp;->a()Lcom/google/a/d/u;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->g:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/scanner/fp;->a(Lcom/google/a/d/u;Lcom/badlogic/gdx/math/Vector2;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x3f80

    rem-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v3, 0x3f80

    rem-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    new-instance v14, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v14}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->h:Lcom/nianticproject/ingress/common/j/t;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/j/t;->a(I)[F

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/visuals/l;

    move-object v4, v0

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->a(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v3

    invoke-static {v3}, Lcom/nianticproject/ingress/common/scanner/ea;->a(Lcom/nianticproject/ingress/shared/ai;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v5, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v6, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3f19999a

    invoke-static {v5, v6, v3, v7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->j:Ljava/util/HashSet;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->b(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->j:Ljava/util/HashSet;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->c(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->j:Ljava/util/HashSet;

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->d(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->b(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->k:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-static {v3, v5}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/g;)F

    move-result v5

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->c(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->k:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-static {v3, v7}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/g;)F

    move-result v11

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->d(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->k:Lcom/nianticproject/ingress/common/model/GameState;

    invoke-static {v3, v7}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/g;)F

    move-result v19

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->e(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v3

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->f(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v7

    invoke-interface {v7}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-static {v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;->g(Lcom/nianticproject/ingress/common/scanner/visuals/l;)Lcom/nianticproject/ingress/common/scanner/eo;

    move-result-object v4

    invoke-interface {v4}, Lcom/nianticproject/ingress/common/scanner/eo;->b()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v22

    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    const v7, 0x3eaaaaab

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/math/Vector2;->mul(F)Lcom/badlogic/gdx/math/Vector2;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v8

    const/4 v10, 0x0

    move-object v7, v1

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v13

    invoke-static {v3, v9, v14}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v15

    const v16, 0x3f8ccccd

    move-object v12, v1

    move/from16 v17, v6

    invoke-static/range {v12 .. v17}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v8

    const/4 v10, 0x0

    move-object v7, v1

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v16

    const/16 v18, 0x0

    move-object v15, v1

    move-object/from16 v17, v22

    move/from16 v20, v6

    invoke-static/range {v15 .. v20}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v13

    move-object/from16 v0, v22

    invoke-static {v9, v0, v14}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v15

    const v16, 0x3f8ccccd

    move-object v12, v1

    move/from16 v17, v6

    invoke-static/range {v12 .. v17}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v16

    const/16 v18, 0x0

    move-object v15, v1

    move-object/from16 v17, v22

    move/from16 v20, v6

    invoke-static/range {v15 .. v20}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v2

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v2

    move-object/from16 v0, v22

    invoke-static {v0, v3, v14}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    const v5, 0x3f8ccccd

    move-object v3, v14

    invoke-static/range {v1 .. v6}, Lcom/nianticproject/ingress/common/scanner/visuals/h;->a([FILcom/badlogic/gdx/math/Vector2;FFF)I

    move-result v2

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 176
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->e:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->c()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->f:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual/range {p2 .. p2}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, -0x4180

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v1}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 181
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->m:F

    const v2, 0x3d4ccccd

    mul-float/2addr v1, v2

    .line 183
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->c:Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    .line 184
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 185
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_texture"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 186
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_modelViewProject"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->f:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 187
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_modelToTexScale"

    const v4, 0x3bda740e

    const v5, 0x3bda740e

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 188
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_modelToTexOrigin"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 189
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_texCoordOffset0"

    const/high16 v4, -0x4180

    mul-float/2addr v4, v1

    const v5, -0x41e66666

    mul-float/2addr v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 190
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v3, "u_texCoordOffset1"

    invoke-virtual {v2, v3, v1, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->h:Lcom/nianticproject/ingress/common/j/t;

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nianticproject/ingress/common/j/t;->a(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 193
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/h;->b:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1
.end method

.method public final a(Lcom/nianticproject/ingress/common/model/GameState;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/GameState;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->k:Lcom/nianticproject/ingress/common/model/GameState;

    .line 130
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->disappeared:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    iget-boolean v3, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p1, Lcom/nianticproject/ingress/common/model/GameState;->changedEntities:Lcom/google/a/c/du;

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 135
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/CapturedRegion;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/CapturedRegion;

    .line 136
    if-eqz v1, :cond_2

    .line 137
    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v4

    .line 138
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->i:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/nianticproject/ingress/common/scanner/visuals/l;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->d:Lcom/nianticproject/ingress/common/scanner/fp;

    invoke-direct {v6, v7, v1, v4}, Lcom/nianticproject/ingress/common/scanner/visuals/l;-><init>(Lcom/nianticproject/ingress/common/scanner/fp;Lcom/nianticproject/ingress/gameentity/components/CapturedRegion;Lcom/nianticproject/ingress/shared/ai;)V

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    goto :goto_2

    .line 141
    :cond_2
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 142
    if-eqz v1, :cond_3

    .line 144
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->j:Ljava/util/HashSet;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLinkedPortalGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    goto :goto_2

    .line 147
    :cond_3
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    iget-object v4, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->j:Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->l:Z

    goto :goto_2

    .line 156
    :cond_4
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->m:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->m:F

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->h:Lcom/nianticproject/ingress/common/j/t;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    .line 207
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/h;->e:Lcom/nianticproject/ingress/common/scanner/visuals/bc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/bc;->dispose()V

    .line 208
    return-void
.end method
