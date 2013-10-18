.class public final Lcom/nianticproject/ingress/common/j/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/j/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

.field private d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

.field private e:[F

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/j/t;->a:Ljava/util/Set;

    return-void
.end method

.method public varargs constructor <init>(I[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 40
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/j/t;->b(I)V

    .line 41
    return-void
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Vertex count larger than usable with GL_SIGNED_SHORT"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 66
    iget v0, p0, Lcom/nianticproject/ingress/common/j/t;->h:I

    if-ge v0, p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->e:[F

    .line 68
    iput p1, p0, Lcom/nianticproject/ingress/common/j/t;->h:I

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->e:[F

    .line 70
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/j/t;->f:Z

    .line 72
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/t;->dispose()V

    .line 78
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/t;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 79
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/t;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 82
    sget-object v0, Lcom/nianticproject/ingress/common/j/t;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public final a(IILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/nianticproject/ingress/common/j/t;->a(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 133
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/badlogic/gdx/graphics/GL20;->glDrawArrays(III)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/nianticproject/ingress/common/j/t;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 135
    return-void
.end method

.method public final a(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/t;->g:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 111
    iget v0, p0, Lcom/nianticproject/ingress/common/j/t;->h:I

    if-gt p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 112
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/t;->f:Z

    if-eqz v0, :cond_0

    .line 113
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/j/t;->f:Z

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 117
    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/t;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    iput-object v3, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 118
    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/t;->e:[F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/j/t;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v4, v4, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v4, v4, 0x4

    mul-int/2addr v4, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setVertices([FII)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 124
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/j/t;->g:Z

    .line 125
    return-void

    :cond_1
    move v0, v2

    .line 110
    goto :goto_0

    :cond_2
    move v0, v2

    .line 111
    goto :goto_1
.end method

.method public final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/t;->g:Z

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/j/t;->g:Z

    .line 144
    return-void
.end method

.method public final a(I)[F
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/j/t;->b(I)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/j/t;->f:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->e:[F

    return-object v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->dispose()V

    .line 153
    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/t;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 155
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/t;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->dispose()V

    .line 156
    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/t;->d:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 159
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/j/t;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method
