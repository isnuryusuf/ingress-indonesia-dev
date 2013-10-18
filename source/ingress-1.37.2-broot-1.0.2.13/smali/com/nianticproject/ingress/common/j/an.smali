.class public final Lcom/nianticproject/ingress/common/j/an;
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
            "Lcom/nianticproject/ingress/common/j/an;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field private c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/j/an;->a:Ljava/util/Set;

    return-void
.end method

.method public varargs constructor <init>([F[Lcom/badlogic/gdx/graphics/VertexAttribute;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 32
    array-length v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/an;->d:I

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/common/j/an;->d:I

    invoke-direct {v0, v1, v2, p2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;-><init>(ZI[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/common/j/an;->d:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->setVertices([FII)V

    .line 36
    sget-object v0, Lcom/nianticproject/ingress/common/j/an;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->bind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 51
    return-void
.end method

.method public final b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->unbind(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 68
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;->dispose()V

    .line 77
    sget-object v0, Lcom/nianticproject/ingress/common/j/an;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/an;->c:Lcom/badlogic/gdx/graphics/glutils/VertexBufferObject;

    .line 80
    :cond_0
    return-void
.end method
