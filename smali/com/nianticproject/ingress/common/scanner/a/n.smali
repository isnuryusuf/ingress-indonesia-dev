.class final Lcom/nianticproject/ingress/common/scanner/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ShortBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ShortBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lcom/nianticproject/ingress/common/q/c;

.field private final f:F

.field private final g:Lcom/badlogic/gdx/math/Vector2;

.field private h:Lcom/nianticproject/ingress/common/q/a;

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/t;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/l;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/o;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/a/o;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->b:Ljava/lang/ThreadLocal;

    .line 74
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/p;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/a/p;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->c:Ljava/lang/ThreadLocal;

    .line 80
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/a/q;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/a/q;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/nianticproject/ingress/common/q/c;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->g:Lcom/badlogic/gdx/math/Vector2;

    .line 91
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->i:Ljava/util/ArrayList;

    .line 92
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->j:Ljava/util/ArrayList;

    .line 93
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->k:Ljava/util/List;

    .line 94
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->l:Ljava/util/ArrayList;

    .line 95
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->m:Ljava/util/List;

    .line 96
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->n:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->o:Ljava/util/List;

    .line 98
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->p:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->q:Ljava/util/List;

    .line 100
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->r:Ljava/util/ArrayList;

    .line 101
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->s:Ljava/util/List;

    .line 108
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->e:Lcom/nianticproject/ingress/common/q/c;

    .line 110
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/c;->a()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, -0xc

    .line 112
    if-ltz v0, :cond_0

    shl-int v0, v2, v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->f:F

    .line 113
    return-void

    .line 112
    :cond_0
    const/high16 v1, 0x3f80

    neg-int v0, v0

    shl-int v0, v2, v0

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0
.end method

.method static a(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 2
    .parameter

    .prologue
    .line 151
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 152
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string/jumbo v1, "u_modelView"

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix(Ljava/lang/String;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 153
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object v0
.end method

.method private static a(ILcom/badlogic/gdx/graphics/VertexAttributes;Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)Lcom/nianticproject/ingress/common/scanner/a/s;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 435
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 436
    invoke-virtual {p3}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 437
    invoke-virtual {p4}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 439
    new-instance v0, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    div-int/2addr v2, p0

    invoke-virtual {p3}, Ljava/nio/ShortBuffer;->limit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    .line 440
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)V

    .line 441
    invoke-virtual {p3}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([SII)V

    .line 443
    invoke-virtual {p4}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    new-array v1, v1, [S

    .line 444
    invoke-virtual {p4}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    new-instance v2, Lcom/nianticproject/ingress/common/scanner/a/s;

    invoke-direct {v2, v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/s;-><init>(Lcom/badlogic/gdx/graphics/Mesh;[S)V

    .line 448
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 449
    invoke-virtual {p3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 450
    invoke-virtual {p4}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 451
    return-object v2
.end method

.method private static a(Ljava/util/List;Lcom/badlogic/gdx/graphics/VertexAttributes;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/nianticproject/ingress/common/scanner/a/af;",
            ">;",
            "Lcom/badlogic/gdx/graphics/VertexAttributes;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 380
    iget v0, p1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v5, v0, 0x4

    .line 383
    const/4 v1, 0x0

    .line 384
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/af;

    .line 385
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/scanner/a/af;->b()S

    move-result v0

    if-lez v0, :cond_0

    .line 386
    const/4 v0, 0x1

    .line 391
    :goto_0
    if-eqz v0, :cond_4

    .line 394
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 395
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 396
    sget-object v1, Lcom/nianticproject/ingress/common/scanner/a/n;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ShortBuffer;

    .line 397
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 398
    sget-object v2, Lcom/nianticproject/ingress/common/scanner/a/n;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ShortBuffer;

    .line 399
    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 405
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nianticproject/ingress/common/scanner/a/af;

    .line 406
    invoke-interface {v3}, Lcom/nianticproject/ingress/common/scanner/a/af;->b()S

    move-result v7

    .line 407
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v8

    mul-int v9, v7, v5

    add-int/2addr v8, v9

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v9

    if-gt v8, v9, :cond_1

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v9

    if-gt v8, v9, :cond_1

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->position()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v9

    if-le v8, v9, :cond_2

    .line 410
    :cond_1
    invoke-static {v5, p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(ILcom/badlogic/gdx/graphics/VertexAttributes;Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)Lcom/nianticproject/ingress/common/scanner/a/s;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_2
    invoke-interface {v3, v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/af;->a(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;)V

    .line 414
    invoke-virtual {v2, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v3

    if-lez v3, :cond_4

    .line 417
    invoke-static {v5, p1, v0, v1, v2}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(ILcom/badlogic/gdx/graphics/VertexAttributes;Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)Lcom/nianticproject/ingress/common/scanner/a/s;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_4
    return-object v4

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 321
    const-string/jumbo v1, "a_offset"

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setAttributef(Ljava/lang/String;FFFF)V

    .line 322
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 323
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/s;

    .line 324
    invoke-virtual {v0, p1, p3}, Lcom/nianticproject/ingress/common/scanner/a/s;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;I)V

    .line 322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method static b()V
    .locals 4

    .prologue
    .line 157
    const-string/jumbo v0, "CreateFlatShader"

    const-string/jumbo v1, "uniform mat4 u_modelView;\nattribute vec2 a_position;\nattribute vec4 a_color;\nattribute vec2 a_offset;\nvarying vec4 v_color;\nvoid main() {\n  vec2 pos = a_position + a_offset;\n  v_color = a_color;\n  gl_Position = u_modelView * vec4(pos.x, 0.0, pos.y, 1.0);\n}"

    const-string/jumbo v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvoid main() {\n  gl_FragColor = v_color;\n}"

    new-instance v3, Lcom/nianticproject/ingress/common/scanner/a/r;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/scanner/a/r;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;)V

    .line 166
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/scanner/a/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    if-nez p0, :cond_1

    .line 317
    :cond_0
    return-void

    .line 312
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/s;

    .line 313
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/s;->a(Lcom/nianticproject/ingress/common/scanner/a/s;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 314
    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/s;->a(Lcom/nianticproject/ingress/common/scanner/a/s;)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    goto :goto_0
.end method

.method static c()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    const/4 v0, 0x0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/n;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 170
    return-void
.end method

.method static synthetic f(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-object p0, Lcom/nianticproject/ingress/common/scanner/a/n;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-object p0
.end method


# virtual methods
.method final a()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->f:F

    return v0
.end method

.method final a(I)Lcom/nianticproject/ingress/common/q/a/t;
    .locals 1
    .parameter

    .prologue
    .line 188
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/a/t;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xb44

    .line 256
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/l;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 257
    const-string/jumbo v1, "a_color"

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setAttributef(Ljava/lang/String;FFFF)V

    .line 259
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 260
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->k:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->j:Ljava/util/ArrayList;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/l;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Ljava/util/List;Lcom/badlogic/gdx/graphics/VertexAttributes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->k:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->k:Ljava/util/List;

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/util/List;I)V

    .line 261
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 262
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/q/a;)V
    .locals 4
    .parameter

    .prologue
    .line 236
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->h:Lcom/nianticproject/ingress/common/q/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->h:Lcom/nianticproject/ingress/common/q/a;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/q/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->h:Lcom/nianticproject/ingress/common/q/a;

    .line 245
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->e:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/q/c;->a()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->e:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/q/c;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rsub-int/lit8 v1, v1, 0x1e

    shl-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 247
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/q/a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->e:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/q/c;->a()I

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->e:Lcom/nianticproject/ingress/common/q/c;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/q/c;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v2, v2, 0x1e

    shl-int v2, v3, v2

    sub-int/2addr v1, v2

    .line 249
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->g:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_0
.end method

.method final a(Lcom/nianticproject/ingress/common/scanner/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/scanner/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/scanner/a/g;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/scanner/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method final a(Lcom/nianticproject/ingress/common/scanner/a/l;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/q/a/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    return-void
.end method

.method final b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xb44

    .line 268
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/d;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 269
    const-string/jumbo v1, "a_color"

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setAttributef(Ljava/lang/String;FFFF)V

    .line 271
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->m:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->l:Ljava/util/ArrayList;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/d;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Ljava/util/List;Lcom/badlogic/gdx/graphics/VertexAttributes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->m:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->m:Ljava/util/List;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/util/List;I)V

    .line 273
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 274
    return-void
.end method

.method final c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 6
    .parameter

    .prologue
    .line 280
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/g;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 281
    const-string/jumbo v1, "a_color"

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setAttributef(Ljava/lang/String;FFFF)V

    .line 283
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->o:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->n:Ljava/util/ArrayList;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/g;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Ljava/util/List;Lcom/badlogic/gdx/graphics/VertexAttributes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->o:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->o:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/util/List;I)V

    .line 284
    return-void
.end method

.method final d(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 290
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/i;->a:Lcom/badlogic/gdx/graphics/Color;

    .line 291
    const-string/jumbo v1, "a_color"

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setAttributef(Ljava/lang/String;FFFF)V

    .line 292
    const-string/jumbo v1, "a_offset"

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->g:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p1

    move v4, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setAttributef(Ljava/lang/String;FFFF)V

    .line 294
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->q:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->p:Ljava/util/ArrayList;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/i;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Ljava/util/List;Lcom/badlogic/gdx/graphics/VertexAttributes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->q:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->q:Ljava/util/List;

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/scanner/a/s;

    .line 296
    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/scanner/a/s;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto :goto_0

    .line 298
    :cond_1
    return-void
.end method

.method public final dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->b(Ljava/util/List;)V

    .line 135
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->k:Ljava/util/List;

    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->b(Ljava/util/List;)V

    .line 138
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->m:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->o:Ljava/util/List;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->b(Ljava/util/List;)V

    .line 141
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->o:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->q:Ljava/util/List;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->b(Ljava/util/List;)V

    .line 144
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->q:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->s:Ljava/util/List;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/n;->b(Ljava/util/List;)V

    .line 147
    iput-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->s:Ljava/util/List;

    .line 148
    return-void
.end method

.method final e(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xb44

    .line 304
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->s:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->r:Ljava/util/ArrayList;

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/b;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Ljava/util/List;Lcom/badlogic/gdx/graphics/VertexAttributes;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->s:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/n;->s:Ljava/util/List;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;Ljava/util/List;I)V

    .line 306
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 307
    return-void
.end method
