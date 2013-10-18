.class public final Lcom/nianticproject/ingress/common/j/am;
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
            "Lcom/nianticproject/ingress/common/j/am;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/j/am;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>([S)V
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    array-length v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/j/am;->c:I

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/common/j/am;->c:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;-><init>(ZI)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/am;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 28
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/am;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/common/j/am;->c:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->setIndices([SII)V

    .line 31
    sget-object v0, Lcom/nianticproject/ingress/common/j/am;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/am;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->bind()V

    .line 39
    return-void
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/am;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/am;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;->dispose()V

    .line 55
    sget-object v0, Lcom/nianticproject/ingress/common/j/am;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/am;->b:Lcom/badlogic/gdx/graphics/glutils/IndexBufferObject;

    .line 58
    :cond_0
    return-void
.end method
