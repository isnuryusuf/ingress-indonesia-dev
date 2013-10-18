.class public final Lcom/nianticproject/ingress/common/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/j/l;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/j/i",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/j/l;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/j/k",
            "<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/j/l;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/j/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/j/i",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/j/k",
            "<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:[Lcom/nianticproject/ingress/common/j/t;

.field private h:[Lcom/nianticproject/ingress/common/j/t;

.field private i:Lcom/nianticproject/ingress/common/j/t;

.field private j:Lcom/nianticproject/ingress/common/j/t;

.field private k:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private m:F

.field private n:F

.field private o:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private p:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private q:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private r:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->d:Ljava/util/List;

    .line 116
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->e:Ljava/util/List;

    .line 118
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->a:Ljava/util/Map;

    .line 119
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->b:Ljava/util/Map;

    .line 120
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->c:Ljava/util/Map;

    .line 121
    invoke-static {}, Lcom/nianticproject/ingress/common/j/l;->values()[Lcom/nianticproject/ingress/common/j/l;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 122
    iget-object v4, p0, Lcom/nianticproject/ingress/common/j/h;->c:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v4, p0, Lcom/nianticproject/ingress/common/j/h;->a:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v4, p0, Lcom/nianticproject/ingress/common/j/h;->b:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/j/l;->values()[Lcom/nianticproject/ingress/common/j/l;

    move-result-object v0

    array-length v0, v0

    .line 128
    new-array v1, v0, [Lcom/nianticproject/ingress/common/j/t;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/h;->g:[Lcom/nianticproject/ingress/common/j/t;

    .line 129
    new-array v0, v0, [Lcom/nianticproject/ingress/common/j/t;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->h:[Lcom/nianticproject/ingress/common/j/t;

    .line 130
    return-void
.end method

.method private static a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/j/t;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 621
    if-eqz p0, :cond_0

    .line 622
    const-string/jumbo v0, "u_modelViewProject"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;Z)V

    .line 625
    :cond_0
    invoke-virtual {p2, p3, p4, p1}, Lcom/nianticproject/ingress/common/j/t;->a(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 626
    return-void
.end method

.method private static a([FILcom/badlogic/gdx/math/Vector2;F)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    add-int/lit8 v0, p1, 0x0

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v1, p0, v0

    .line 596
    add-int/lit8 v0, p1, 0x1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, p0, v0

    .line 597
    add-int/lit8 v0, p1, 0x2

    aput p3, p0, v0

    .line 598
    return-void
.end method

.method private static a([FILcom/badlogic/gdx/math/Vector3;F)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 549
    add-int/lit8 v0, p1, 0x0

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v1, p0, v0

    .line 550
    add-int/lit8 v0, p1, 0x1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v1, p0, v0

    .line 551
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v1, p0, v0

    .line 552
    add-int/lit8 v0, p1, 0x3

    aput p3, p0, v0

    .line 553
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/h;->f:Z

    if-nez v0, :cond_0

    .line 145
    iput-boolean v10, p0, Lcom/nianticproject/ingress/common/j/h;->f:Z

    .line 146
    const-string/jumbo v0, "attribute vec2 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n  v_color = a_color;\n  gl_Position = vec4(a_position.xy * 2.0 - 1.0, 1, 1);\n}\n"

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvoid main() {\n  gl_FragColor = v_color;\n}\n"

    const-string/jumbo v3, "VertexShader2D"

    invoke-static {v0, v2, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->k:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 147
    const-string/jumbo v0, "uniform mat4 u_modelViewProject;\nattribute vec3 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n  v_color = a_color;\n  gl_Position = u_modelViewProject * vec4(a_position.xyz, 1.0);\n}\n"

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvoid main() {\n  gl_FragColor = v_color;\n}\n"

    const-string/jumbo v3, "VertexShader3D"

    invoke-static {v0, v2, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 151
    new-instance v0, Lcom/nianticproject/ingress/common/j/t;

    const/16 v2, 0x80

    new-array v3, v9, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v5, 0x3

    const-string/jumbo v6, "a_position"

    invoke-direct {v4, v1, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_color"

    invoke-direct {v4, v12, v11, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v10

    invoke-direct {v0, v2, v3}, Lcom/nianticproject/ingress/common/j/t;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->i:Lcom/nianticproject/ingress/common/j/t;

    .line 154
    new-instance v0, Lcom/nianticproject/ingress/common/j/t;

    const/16 v2, 0x80

    new-array v3, v9, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v5, 0x3

    const-string/jumbo v6, "a_position"

    invoke-direct {v4, v1, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    new-instance v4, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v5, "a_color"

    invoke-direct {v4, v12, v11, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v10

    invoke-direct {v0, v2, v3}, Lcom/nianticproject/ingress/common/j/t;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->j:Lcom/nianticproject/ingress/common/j/t;

    .line 159
    invoke-static {}, Lcom/nianticproject/ingress/common/j/l;->values()[Lcom/nianticproject/ingress/common/j/l;

    move-result-object v0

    array-length v2, v0

    move v0, v1

    .line 160
    :goto_0
    if-ge v0, v2, :cond_0

    .line 161
    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/h;->g:[Lcom/nianticproject/ingress/common/j/t;

    new-instance v4, Lcom/nianticproject/ingress/common/j/t;

    const/16 v5, 0x80

    new-array v6, v9, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v8, "a_position"

    invoke-direct {v7, v1, v9, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v6, v1

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v8, "a_color"

    invoke-direct {v7, v12, v11, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/nianticproject/ingress/common/j/t;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    aput-object v4, v3, v0

    .line 164
    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/h;->h:[Lcom/nianticproject/ingress/common/j/t;

    new-instance v4, Lcom/nianticproject/ingress/common/j/t;

    const/16 v5, 0x80

    new-array v6, v9, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v8, "a_position"

    invoke-direct {v7, v1, v9, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v6, v1

    new-instance v7, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v8, "a_color"

    invoke-direct {v7, v12, v11, v8}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v7, v6, v10

    invoke-direct {v4, v5, v6}, Lcom/nianticproject/ingress/common/j/t;-><init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    aput-object v4, v3, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    int-to-float v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/h;->m:F

    .line 176
    int-to-float v0, p2

    iput v0, p0, Lcom/nianticproject/ingress/common/j/h;->n:F

    .line 177
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->d:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/ingress/common/j/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/i;-><init>(Lcom/nianticproject/ingress/common/j/h;Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 419
    iget-object v6, p0, Lcom/nianticproject/ingress/common/j/h;->e:Ljava/util/List;

    new-instance v0, Lcom/nianticproject/ingress/common/j/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/k;-><init>(Lcom/nianticproject/ingress/common/j/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    return-void

    .line 418
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/h;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 134
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/h;->p:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "large-font"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->q:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v1, "default-font"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->r:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 137
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/f;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 456
    :try_start_0
    const-string/jumbo v0, "DebugRenderer.onDrawFrame3d"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 457
    sget-object v4, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 458
    const/16 v0, 0xbe2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 459
    const/16 v0, 0xb44

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 461
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v5

    iget-object v6, p0, Lcom/nianticproject/ingress/common/j/h;->j:Lcom/nianticproject/ingress/common/j/t;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v6, v1}, Lcom/nianticproject/ingress/common/j/t;->a(I)[F

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/k;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/j/k;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    add-int/lit8 v1, v3, 0x0

    mul-int/lit8 v10, v1, 0x4

    iget-object v1, v0, Lcom/nianticproject/ingress/common/j/k;->a:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v7, v10, v1, v9}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v1, v3, 0x1

    mul-int/lit8 v10, v1, 0x4

    iget-object v1, v0, Lcom/nianticproject/ingress/common/j/k;->b:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v7, v10, v1, v9}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v1, v3, 0x2

    mul-int/lit8 v1, v1, 0x4

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v7, v1, v0, v9}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x4

    invoke-static {v5, v0, v6, v1, v3}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/j/t;II)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 464
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/j/f;->e()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    iget-object v5, p0, Lcom/nianticproject/ingress/common/j/h;->i:Lcom/nianticproject/ingress/common/j/t;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v5, v1}, Lcom/nianticproject/ingress/common/j/t;->a(I)[F

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/i;

    iget-object v1, v0, Lcom/nianticproject/ingress/common/j/i;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    add-int/lit8 v1, v2, 0x0

    mul-int/lit8 v9, v1, 0x4

    iget-object v1, v0, Lcom/nianticproject/ingress/common/j/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v6, v9, v1, v8}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v1, v1, 0x4

    iget-object v0, v0, Lcom/nianticproject/ingress/common/j/i;->b:Ljava/lang/Object;

    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v6, v1, v0, v8}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector3;F)V

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x1

    invoke-static {v3, v0, v5, v1, v2}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/j/t;II)V

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 467
    const/16 v0, 0xbe2

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 468
    const/16 v0, 0xb44

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    new-instance v0, Lcom/nianticproject/ingress/common/j/j;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/j;-><init>(Lcom/nianticproject/ingress/common/j/h;Lcom/badlogic/gdx/math/Vector2;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    new-instance v0, Lcom/nianticproject/ingress/common/j/k;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/k;-><init>(Lcom/nianticproject/ingress/common/j/h;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_0
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/j/l;[Lcom/badlogic/gdx/math/Vector2;[Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    const/4 v0, 0x0

    move v11, v0

    :goto_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ge v11, v0, :cond_0

    .line 227
    aget-object v0, p2, v11

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    aget-object v1, p3, v11

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 228
    aget-object v0, p2, v11

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    aget-object v1, p3, v11

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 229
    add-int/lit8 v0, v11, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    add-int/lit8 v1, v11, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    .line 230
    add-int/lit8 v0, v11, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    add-int/lit8 v1, v11, 0x1

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v5, p4

    .line 232
    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    move-object v5, p0

    move-object v6, p1

    move-object v8, v4

    move-object v9, v2

    move-object/from16 v10, p4

    .line 233
    invoke-virtual/range {v5 .. v10}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/nianticproject/ingress/common/j/l;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/graphics/Color;)V

    .line 225
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public final b()Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/h;->q:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public final c()V
    .locals 17

    .prologue
    .line 479
    :try_start_0
    const-string/jumbo v1, "DebugRenderer.onDrawFrame2d"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 480
    sget-object v8, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 481
    const/16 v1, 0xbe2

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 482
    const/16 v1, 0xb44

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 483
    const/16 v1, 0xb71

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 484
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 486
    invoke-static {}, Lcom/nianticproject/ingress/common/j/l;->values()[Lcom/nianticproject/ingress/common/j/l;

    move-result-object v9

    array-length v10, v9

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v10, :cond_6

    aget-object v11, v9, v7

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/common/j/h;->c:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/common/j/h;->a:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/common/j/h;->b:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/j/h;->h:[Lcom/nianticproject/ingress/common/j/t;

    invoke-virtual {v11}, Lcom/nianticproject/ingress/common/j/l;->ordinal()I

    move-result v5

    aget-object v12, v4, v5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v12, v4}, Lcom/nianticproject/ingress/common/j/t;->a(I)[F

    move-result-object v13

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v6, v4

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/common/j/k;

    iget-object v5, v4, Lcom/nianticproject/ingress/common/j/k;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v15

    add-int/lit8 v5, v6, 0x0

    mul-int/lit8 v16, v5, 0x3

    iget-object v5, v4, Lcom/nianticproject/ingress/common/j/k;->a:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v16

    invoke-static {v13, v0, v5, v15}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector2;F)V

    add-int/lit8 v5, v6, 0x1

    mul-int/lit8 v16, v5, 0x3

    iget-object v5, v4, Lcom/nianticproject/ingress/common/j/k;->b:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v16

    invoke-static {v13, v0, v5, v15}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector2;F)V

    add-int/lit8 v5, v6, 0x2

    mul-int/lit8 v5, v5, 0x3

    iget-object v4, v4, Lcom/nianticproject/ingress/common/j/k;->c:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v13, v5, v4, v15}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector2;F)V

    add-int/lit8 v4, v6, 0x3

    move v6, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/j/h;->k:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v13, 0x4

    invoke-static {v4, v5, v12, v13, v6}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/j/t;II)V

    .line 491
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/j/h;->g:[Lcom/nianticproject/ingress/common/j/t;

    invoke-virtual {v11}, Lcom/nianticproject/ingress/common/j/l;->ordinal()I

    move-result v5

    aget-object v11, v4, v5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v11, v4}, Lcom/nianticproject/ingress/common/j/t;->a(I)[F

    move-result-object v12

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v6, v4

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/common/j/i;

    iget-object v5, v4, Lcom/nianticproject/ingress/common/j/i;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v14

    add-int/lit8 v5, v6, 0x0

    mul-int/lit8 v15, v5, 0x3

    iget-object v5, v4, Lcom/nianticproject/ingress/common/j/i;->a:Ljava/lang/Object;

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v12, v15, v5, v14}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector2;F)V

    add-int/lit8 v5, v6, 0x1

    mul-int/lit8 v5, v5, 0x3

    iget-object v4, v4, Lcom/nianticproject/ingress/common/j/i;->b:Ljava/lang/Object;

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v12, v5, v4, v14}, Lcom/nianticproject/ingress/common/j/h;->a([FILcom/badlogic/gdx/math/Vector2;F)V

    add-int/lit8 v4, v6, 0x2

    move v6, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/common/j/h;->k:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v12, 0x1

    invoke-static {v4, v5, v11, v12, v6}, Lcom/nianticproject/ingress/common/j/h;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Lcom/nianticproject/ingress/common/j/t;II)V

    .line 492
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/common/j/h;->p:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getSpriteBatch()Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/common/j/j;

    iget-object v11, v4, Lcom/nianticproject/ingress/common/j/j;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    iget-object v12, v4, Lcom/nianticproject/ingress/common/j/j;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v13, v4, Lcom/nianticproject/ingress/common/j/j;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v12, v4, Lcom/nianticproject/ingress/common/j/j;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v13, v4, Lcom/nianticproject/ingress/common/j/j;->b:Ljava/lang/String;

    iget-object v14, v4, Lcom/nianticproject/ingress/common/j/j;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nianticproject/ingress/common/j/h;->m:F

    mul-float/2addr v14, v15

    iget-object v15, v4, Lcom/nianticproject/ingress/common/j/j;->d:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nianticproject/ingress/common/j/h;->n:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    iget-object v0, v4, Lcom/nianticproject/ingress/common/j/j;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v16

    add-float v15, v15, v16

    invoke-virtual {v12, v5, v13, v14, v15}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    iget-object v4, v4, Lcom/nianticproject/ingress/common/j/j;->a:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 503
    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    .line 492
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 493
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 494
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 495
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 486
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    .line 498
    :cond_6
    const/16 v1, 0xbe2

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 499
    const/16 v1, 0xb44

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 500
    const/16 v1, 0xb71

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 501
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 504
    return-void
.end method

.method public final dispose()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 184
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/j/h;->f:Z

    if-eqz v1, :cond_0

    .line 185
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/j/h;->f:Z

    .line 187
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/h;->k:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v4, p0, Lcom/nianticproject/ingress/common/j/h;->k:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 188
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/h;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v4, p0, Lcom/nianticproject/ingress/common/j/h;->l:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 189
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/h;->i:Lcom/nianticproject/ingress/common/j/t;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v4, p0, Lcom/nianticproject/ingress/common/j/h;->i:Lcom/nianticproject/ingress/common/j/t;

    .line 190
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/h;->j:Lcom/nianticproject/ingress/common/j/t;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v4, p0, Lcom/nianticproject/ingress/common/j/h;->j:Lcom/nianticproject/ingress/common/j/t;

    .line 192
    invoke-static {}, Lcom/nianticproject/ingress/common/j/l;->values()[Lcom/nianticproject/ingress/common/j/l;

    move-result-object v1

    array-length v1, v1

    .line 193
    :goto_0
    if-ge v0, v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/h;->g:[Lcom/nianticproject/ingress/common/j/t;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/h;->g:[Lcom/nianticproject/ingress/common/j/t;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    aput-object v4, v2, v0

    .line 195
    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/h;->h:[Lcom/nianticproject/ingress/common/j/t;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/h;->h:[Lcom/nianticproject/ingress/common/j/t;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    aput-object v4, v2, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method
