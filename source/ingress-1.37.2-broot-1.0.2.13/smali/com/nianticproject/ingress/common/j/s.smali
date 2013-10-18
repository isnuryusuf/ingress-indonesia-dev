.class public final Lcom/nianticproject/ingress/common/j/s;
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
            "Lcom/nianticproject/ingress/common/j/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

.field private c:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

.field private d:[S

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/j/s;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0, v0, v0}, Lcom/nianticproject/ingress/common/j/s;->a(IZ)V

    .line 38
    return-void
.end method

.method private a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    const/high16 v0, 0x1

    if-gt p1, v0, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Suspiciously large # of indices"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 55
    iget v0, p0, Lcom/nianticproject/ingress/common/j/s;->g:I

    if-ge v0, p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->d:[S

    .line 57
    iput p1, p0, Lcom/nianticproject/ingress/common/j/s;->g:I

    .line 58
    new-array v3, p1, [S

    iput-object v3, p0, Lcom/nianticproject/ingress/common/j/s;->d:[S

    .line 59
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/j/s;->e:Z

    .line 61
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/s;->d:[S

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/s;->dispose()V

    .line 67
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 68
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(I)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->c:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 71
    sget-object v0, Lcom/nianticproject/ingress/common/j/s;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 53
    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/nianticproject/ingress/common/j/s;->g:I

    return v0
.end method

.method public final a(IILcom/nianticproject/ingress/common/j/t;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/s;->f:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iget v0, p0, Lcom/nianticproject/ingress/common/j/s;->g:I

    if-gt p2, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/s;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/j/s;->e:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/s;->c:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    iput-object v3, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->c:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/s;->d:[S

    invoke-virtual {v0, v3, v2, p2}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->setIndices([SII)V

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bind()V

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/j/s;->f:Z

    .line 132
    invoke-virtual {p3, p1, p4}, Lcom/nianticproject/ingress/common/j/t;->a(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 133
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x4

    const/16 v3, 0x1403

    invoke-interface {v0, v1, p2, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 134
    invoke-virtual {p3, p4}, Lcom/nianticproject/ingress/common/j/t;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 135
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/j/s;->f:Z

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->unbind()V

    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/j/s;->f:Z

    .line 136
    return-void

    :cond_1
    move v0, v2

    .line 131
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final a(I)[S
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/common/j/s;->a(IZ)V

    .line 92
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/j/s;->e:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->d:[S

    return-object v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->dispose()V

    .line 145
    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/s;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 147
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/s;->c:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->dispose()V

    .line 148
    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/s;->c:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 151
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/j/s;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method
